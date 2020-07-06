package com.samsung.android.shealthmonitor.bp.ui.activity

import android.app.Activity
import android.content.Intent
import android.content.pm.PackageManager
import android.graphics.Color
import android.media.MediaPlayer
import android.net.Uri
import android.os.Bundle
import android.os.Handler
import android.os.Message
import android.view.MenuItem
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.manager.WearableBpManager
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_measurement_activity.*
import android.view.View
import android.view.WindowManager
import com.samsung.android.shealthmonitor.bp.helper.BpSharedPreferenceHelper
import com.samsung.android.shealthmonitor.helper.ContextHolder
import com.samsung.android.shealthmonitor.bp.manager.StateManager
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpInputActivity.Companion.RESULT_CODE_GO_PREV_FROM_INPUT_ACTIVITY
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpInputActivity.Companion.RESULT_CODE_RETAKE_ACTIVITY
import com.samsung.android.shealthmonitor.bp.ui.view.SHealthMonitorVideoView
import com.samsung.android.shealthmonitor.bp.util.DemoUtil
import com.samsung.android.shealthmonitor.manager.SHealthMonitorLogManager
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment
import com.samsung.android.shealthmonitor.util.Utils
import org.json.JSONException
import org.json.JSONObject
import java.lang.Exception
import java.lang.ref.WeakReference


class SHealthMonitorMeasurementActivity : BaseAppCompatActivity() {

    private val TAG = LOG.prefix + "SHealthMonitorMeasurementActivity"

    val REQUEST_CODE_FOR_INPUT_ACTIVITY = 1001

    /* Calibration flags */
    private var mIsFinished = false
    private var mIsCancel = false
    private var mResultOfCalibration: String = CalibrationResult.NONE

    private val mOuter = WeakReference<SHealthMonitorMeasurementActivity>(this)
    private val mSessionTimer = TimerHandler(mOuter)
    private val mOneMinuteTimer = OneMinuteTimerHandler(mOuter)

    private var mVideoView : SHealthMonitorVideoView? = null

    public object CalibrationResult {
        val NONE = "none"
        val SUCCESS = "success"
        val CANCEL = "cancel_calibration"
        val DETECT_MOVE = "detect_move"
        val NO_BEAT = "nobeat"
        val WEAR_OFF = "wearoff"
        val CCD = "ccd"
        val SQI = "sqi"
        val LOW_SQI = "low_sqi"
        val TIME_OUT = "timeout"
        val ETC = "etc"
        val LOW_BATTERY = "low_battery"
        val NO_CONNECTION = "no_connection"
        val NOT_ENOUGH_SPACE="not_enough_space"
    }

    private object Dialog {
        val DONE = "DONE_POPUP_TAG"
        val STOP = "STOP_POPUP_TAG"
        val TIME_OUT = "TIME_OUT_POPUP_TAG"
        val NO_CONNECTION = "NO_CONNECTION_POPUP_TAG"
        val ERROR_FROM_WATCH = "PAUSE_POPUP_TAG"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        LOG.d(TAG, "onCreate")
        super.onCreate(savedInstanceState)
        setContentView(R.layout.shealth_monitor_measurement_activity)
        initActionBar()
        if (!mIsFinished) initView()
    }

    private fun initActionBar() {
        supportActionBar?.setDisplayShowTitleEnabled(false)
        supportActionBar?.setDisplayShowHomeEnabled(false)
        makeFullTransParentStatusBar()
    }

    private fun initView(){
        mVideoView = SHealthMonitorVideoView(this, mVideo.holder)
        val path = "android.resource://" + packageName + "/" + R.raw.phone_measuring_black
        mVideoView?.setVideoPath(Uri.parse(path))
        mVideoView?.setOnPreparedListener { playVideo() }
        mVideoView?.setOnCompletionListener { playVideo() }
        mVideoView?.setOnInfoListener { _, what, _ ->
            if (what == MediaPlayer.MEDIA_INFO_VIDEO_RENDERING_START) {
                LOG.d(TAG, "MEDIA_INFO_VIDEO_RENDERING_START")
                Handler().postDelayed({ showVideo() }, 200)
            }
            false
        }

        // For test
        if (DemoUtil.isErrorDemo() && DemoUtil.isCustomErrorType()
                && DemoUtil.getCustomErrorType() != null) {
            val delayTime = 1000L
            LOG.d(TAG, "ErrorCase : " + DemoUtil.getCustomErrorType())
            Handler().postDelayed({
                mResultOfCalibration = DemoUtil.getCustomErrorType()
                showDialog(Dialog.ERROR_FROM_WATCH)
                DemoUtil.moveNextCustomErrorType()
            }, delayTime)
            return
        } else {
            startCalibration()
            checkAndMakeRandomError()
        }
    }

    // for translucent status bar
    private fun makeFullTransParentStatusBar() {
        window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
        setWindowFlag(this, WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS, false)
        window.statusBarColor = Color.TRANSPARENT
    }

    private fun setWindowFlag(activity: Activity, bits: Int, on: Boolean) {
        val win = activity.window
        val winParams = win.attributes
        if (on) {
            winParams.flags = winParams.flags or bits
        } else {
            winParams.flags = winParams.flags and bits.inv()
        }
        win.attributes = winParams
    }
    // end translucent status bar

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        when (item.itemId) {
            android.R.id.home -> { onBackPressed() }
        }
        return super.onOptionsItemSelected(item)
    }

    private fun getParsedResult(receiveBody: String) {
        var result = ""
        try {
            with(JSONObject(receiveBody)) {
                if (has("result")) {
                    result = getString("result")
                    LOG.d(TAG, "startCalibration result: $result")
                }
                if (has("data")) {
                    WearableBpManager.getInstance().setUuidForUpdateCalibration(JSONObject(getString("data")).getString("datauuid"));
                }
            }
        } catch (e: JSONException) {
            e.printStackTrace()
        }
        if (result.isNotEmpty()) mResultOfCalibration = result
    }

    private fun startCalibration() {
        mSessionTimer.startTimer()
        var reqId = WearableBpManager.getInstance().startBpCalibration {
            result, _, receiveBody ->
            mIsFinished = true
            mSessionTimer.stopTimer()
            when (result) {
                "SUCCESS_REQUEST" -> {
                    getParsedResult(receiveBody)
                    runOnUiThread {
                        stopVideo()
                        when (mResultOfCalibration) {
                            CalibrationResult.SUCCESS -> {
                                mTitle.text = getString(R.string.shealth_monitor_bp_watch_measurement_finished)
                                mDescription.visibility = View.INVISIBLE
                                /* Just for DEMO */
                                if (StateManager.getInstance().currentState.getCalibrationCount() == 2 &&
                                        DemoUtil.isRandomErrorCaseStep(DemoUtil.ERROR_MeasuringActivity)) {
                                    DemoUtil.onBT()
                                    LOG.d(TAG, "block to show DONE_POPUP in the error mode")
                                } else {
                                    if (shownDialogTag() != Dialog.NO_CONNECTION) showDialog(Dialog.DONE)
                                }
                            }
                            else -> showDialog(Dialog.ERROR_FROM_WATCH)
                        }
                        Utils.showToast(ContextHolder.getContext(), "SUCCESS Response got. The result is $mResultOfCalibration", false, false)
                    }
                }
                "DISCONNECT_DEVICE" -> {
                    runOnUiThread {
                        if (!mIsCancel) {
                            stopVideo()
                            Utils.showToast(ContextHolder.getContext(), "Fail Response got because of Disconnection.", true, false)
                            showDialog(Dialog.NO_CONNECTION)
                            cancelCalibration("prepare_calibration")
                        }
                    }
                }
                else -> {
                    runOnUiThread {
                        if (!mIsCancel) {
                            stopVideo()
                            Utils.showToast(ContextHolder.getContext(), "No Response or Errors", true, false)
                            showDialog(Dialog.ERROR_FROM_WATCH)
                        }
                    }
                }
            }
        }

        if (reqId == -1) {
            Utils.showToast(this, "Connected watch was not found!, UI test mode", false, false)
            if (!mIsCancel) {
                stopVideo()
                showDialog(Dialog.NO_CONNECTION)
                cancelCalibration("prepare_calibration")
            }
        }

        sendSALog()

    }

    private fun cancelAndFinish() {
        cancelCalibration("prepare_calibration")
        StateManager.getInstance().gotoInitSate()
        finish()
    }

    private fun cancelCalibration(nextAction : String) {
        LOG.d(TAG, "cancelCalibration start")
        mIsCancel = true
        var reqId = WearableBpManager.getInstance().cancelCalibration(nextAction) {
            result, _, _ ->
            when (result) {
                "SUCCESS_REQUEST" -> {
                    runOnUiThread {
                        Utils.showToast(this@SHealthMonitorMeasurementActivity, "cancel success", true, false)
                    }
                }
                else -> {
                    runOnUiThread {
                        Utils.showToast(this@SHealthMonitorMeasurementActivity, "cancel fail", true, false)
                    }
                    mIsCancel = false
                }
            }
        }

        if (reqId == -1) {
            Utils.showToast(this, "Connected watch was not found!, UI test mode", false, false)
        }
    }

    private fun hiddenVideo() {
        if (background.visibility != View.VISIBLE) {
            mVideo.alpha = 0.0f
            background.alpha = 1.0f
            background.visibility = View.VISIBLE
        }
    }

    private fun showVideo() {
        if (background.visibility != View.INVISIBLE) {
            background.alpha = 0.0f
            mVideo.alpha = 1.0f
            background.visibility = View.INVISIBLE
        }
    }

    private fun playVideo() {
//        videoView.seekTo(0)
//        if (!mIsFinished) videoView.start()
    }

    private fun pauseVideo() {
        if (mVideoView!!.isPlaying) mVideoView?.pause()
    }

    private fun stopVideo() {
        if (mVideoView!!.isPlaying) mVideoView?.stopPlayback()
    }

    private fun removeVideo() {
        hiddenVideo()
        stopVideo()
        mVideoView?.setOnPreparedListener(null)
        mVideoView?.setOnCompletionListener(null)
        mVideoView?.setOnInfoListener(null)
    }

    override fun onBackPressed() {
        LOG.d(TAG, "onBackPressed")
        if (!mIsFinished) showDialog(Dialog.STOP)
    }

    override fun onResume() {
        LOG.d(TAG, "onResume")
        super.onResume()
        if (mIsFinished && mResultOfCalibration == CalibrationResult.SUCCESS) {
            removeVideo()
            showDialog(Dialog.DONE)
        }
    }

    override fun onPause() {
        LOG.d(TAG, "onPause")
        super.onPause()
        pauseVideo()
        hiddenVideo()
    }

    override fun onDestroy() {
        LOG.d(TAG, "onDestroy")
        removeVideo()
        mSessionTimer.stopTimer()
        mOneMinuteTimer.stopTimer()
        super.onDestroy()
    }

    private fun setDialogContent(tag : String) : SAlertDlgFragment.Builder {
        var title = ""
        var description = ""
        var type = 0
        var customLayout = -1

        when (tag) {
            Dialog.DONE -> {
                type = SAlertDlgFragment.TYPE_P_N_BUTTON
                customLayout = R.layout.shealth_monitor_bp_measurement_finished_dialog
                title = getString(R.string.shealth_monitor_bp_measurement_done_dialog_title)
            }
            Dialog.STOP -> {
                type = SAlertDlgFragment.TYPE_P_N_BUTTON
                title = getString(R.string.shealth_monitor_bp_measurement_stop_dialog_title)
                description = getString(R.string.shealth_monitor_bp_measurement_stop_dialog_desc)
            }
            Dialog.TIME_OUT -> {
                type = SAlertDlgFragment.TYPE_P_BUTTON
                title = getString(R.string.shealth_monitor_time_out_title)
                description = getString(R.string.shealth_monitor_time_out_body)
                sendErrorLog(CalibrationResult.TIME_OUT)
            }
            Dialog.NO_CONNECTION -> {
                type = SAlertDlgFragment.TYPE_P_BUTTON
                title = getString(R.string.cannot_connect_with_your_watch)
                description = getString(R.string.cannot_connect_with_your_watch_desc)
                sendErrorLog(CalibrationResult.NO_CONNECTION)
            }
            Dialog.ERROR_FROM_WATCH -> {
                type = SAlertDlgFragment.TYPE_P_BUTTON
                title = getString(R.string.shealth_monitor_bp_measuring_error_signal_is_weak_title)
                when (mResultOfCalibration) {
                    CalibrationResult.SQI -> description = getString(R.string.shealth_monitor_bp_measuring_error_try_to_snug_desc)
                    CalibrationResult.LOW_SQI -> {
                        title = getString(R.string.shealth_monitor_bp_measuring_error_unable_to_measure_title)
                        description = getString(R.string.shealth_monitor_bp_measuring_error_try_to_rub_the_wrist_desc)
                    }
                    CalibrationResult.NO_BEAT -> description = getString(R.string.shealth_monitor_bp_measuring_error_try_to_clean_desc)
                    CalibrationResult.DETECT_MOVE -> description = getString(R.string.shealth_monitor_bp_measuring_error_try_to_not_move_desc)
                    CalibrationResult.WEAR_OFF -> {
                        title = getString(R.string.shealth_monitor_bp_measuring_error_watch_is_detached_title)
                        description = getString(R.string.shealth_monitor_bp_measuring_error_watch_is_detached_desc)
                    }
                    CalibrationResult.LOW_BATTERY -> {
                        title = getString(R.string.shealth_monitor_bp_measuring_error_unable_to_measure_title)
                        description = getString(R.string.shealth_monitor_bp_measuring_error_low_battery)
                    }
                    CalibrationResult.NOT_ENOUGH_SPACE -> {
                        title = getString(R.string.shealth_monitor_system_alert_storage_title)
                        description = getString(R.string.shealth_monitor_bp_measuring_error_not_enough_space)
                    }
                    CalibrationResult.CANCEL -> {
                        title = getString(R.string.shealth_monitor_bp_measuring_error_cancel_title)
                        description = getString(R.string.shealth_monitor_bp_measuring_error_cancel)
                    }
                    else -> {
                        title = getString(R.string.shealth_monitor_bp_measuring_error_unable_to_measure_title)
                        description = mResultOfCalibration
                    }
                }
                sendErrorLog(mResultOfCalibration)
            }
        }

        val builder = SAlertDlgFragment.Builder(title, type)
        if (description.isNotEmpty()) builder.setContentText(description)
        if (tag == Dialog.DONE) builder.setContent(customLayout)
        return builder
    }

    private fun launchWearableManager() {
        val manager = packageManager
        val wearableManagerPackage = "com.samsung.android.app.watchmanager"
        try {
            val info = manager.getApplicationInfo(wearableManagerPackage, 0)
            if (info.enabled) {
                val intent = manager.getLaunchIntentForPackage(wearableManagerPackage)
                if (intent == null) {
                    LOG.i(TAG, "launchWearableManager() : intent is null.")
                    return
                }
                intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
                startActivity(intent)
            } else {
                LOG.i(TAG, "launchWearableManager() : $packageName is not enabled.")
            }
        } catch (e: PackageManager.NameNotFoundException) {
            LOG.e(TAG, "launchWearableManager() : NameNotFoundException is occurred")
        }
        StateManager.getInstance().gotoInitSate()
        finish()
    }

    private fun showDialog(tag: String) {
        if (!isFinishing && !isDestroyed) {
            LOG.d(TAG, "showDialog $tag")
            val builder : SAlertDlgFragment.Builder = setDialogContent(tag)
            when (tag) {
                Dialog.DONE -> {
                    if (shownDialogTag() == Dialog.TIME_OUT) return
                    else dismissDialogs()
                    builder.setNegativeButtonClickListener(R.string.shealth_monitor_no_thanks, { cancelAndFinish() })
                    builder.setPositiveButtonClickListener(R.string.shealth_monitor_yes_enter_now, {
                        startActivityForResult( Intent(this, SHealthMonitorBpInputActivity::class.java), REQUEST_CODE_FOR_INPUT_ACTIVITY)
                        mOneMinuteTimer.stopTimer()
                    })
                    builder.setBackPressedListener {} // blocking back key
                }
                Dialog.STOP -> {
                    if (shownDialogTag().isNotEmpty()) return
                    builder.setNegativeButtonClickListener(R.string.shealth_monitor_no, {
                        playVideo()
                        mOneMinuteTimer.stopTimer()
                    })
                    builder.setPositiveButtonClickListener(R.string.shealth_monitor_yes, { cancelAndFinish() })
                    builder.setBackPressedListener {} // blocking back key
                }
                Dialog.NO_CONNECTION -> {
                    if (shownDialogTag() == Dialog.TIME_OUT) return
                    else dismissDialogs()
                    builder.setPositiveButtonClickListener(R.string.baseui_button_ok, { launchWearableManager() })
                    builder.setBackPressedListener { cancelAndFinish() }
                }
                Dialog.ERROR_FROM_WATCH -> {
                    if (shownDialogTag().isNotEmpty()) {
                        if (shownDialogTag() == Dialog.STOP) dismissDialogs()
                        else return
                    }
                    builder.setPositiveButtonClickListener(R.string.baseui_button_ok, { cancelAndFinish() })
                    builder.setBackPressedListener { cancelAndFinish() }
                }
                Dialog.TIME_OUT -> {
                    dismissDialogs()
                    builder.setPositiveButtonClickListener(R.string.baseui_button_ok, { cancelAndFinish() })
                    builder.setBackPressedListener { cancelAndFinish() }
                }
            }
            builder.setNegativeButtonTextColor(resources.getColor(R.color.dialog_color, null))
            builder.setPositiveButtonTextColor(resources.getColor(R.color.dialog_color, null))
            builder.setCanceledOnTouchOutside(false)
            try {
                supportFragmentManager.beginTransaction().add(builder.build(), tag).commitAllowingStateLoss()
                if (tag == Dialog.TIME_OUT) cancelCalibration("")
                else mOneMinuteTimer.startTimer()
                LOG.d(TAG, "Show $tag")
            } catch (e: Exception) {
                LOG.e(TAG, "Error in $tag by $e")
            }
        } else {
            LOG.i(TAG, "cannot show dialog on destroy.")
        }
    }

    private fun shownDialogTag() : String {
        supportFragmentManager.findFragmentByTag(Dialog.STOP)?.let {
            LOG.d(TAG, "Shown STOP_POPUP_TAG")
            return Dialog.STOP
        }
        supportFragmentManager.findFragmentByTag(Dialog.DONE)?.let {
            LOG.d(TAG, "Shown DONE_POPUP_TAG")
            return Dialog.DONE
        }
        supportFragmentManager.findFragmentByTag(Dialog.TIME_OUT)?.let {
            LOG.d(TAG, "Shown TIME_OUT_POPUP_TAG")
            return Dialog.TIME_OUT
        }
        supportFragmentManager.findFragmentByTag(Dialog.NO_CONNECTION)?.let {
            LOG.d(TAG, "Shown NO_CONNECTION_POPUP_TAG")
            return Dialog.NO_CONNECTION
        }
        supportFragmentManager.findFragmentByTag(Dialog.ERROR_FROM_WATCH)?.let {
            LOG.d(TAG, "Shown PAUSE_POPUP_TAG")
            return Dialog.ERROR_FROM_WATCH
        }
        LOG.d(TAG, "No shown dialog now.")
        return ""
    }

    private fun dismissDialogs() {
        supportFragmentManager.findFragmentByTag(Dialog.STOP)?.let {
            (it as SAlertDlgFragment).dismissAllowingStateLoss()
            LOG.d(TAG, "dismiss STOP_POPUP_TAG")
        }
        supportFragmentManager.findFragmentByTag(Dialog.DONE)?.let {
            (it as SAlertDlgFragment).dismissAllowingStateLoss()
            LOG.d(TAG, "dismiss DONE_POPUP_TAG")
        }
        supportFragmentManager.findFragmentByTag(Dialog.TIME_OUT)?.let {
            (it as SAlertDlgFragment).dismissAllowingStateLoss()
            LOG.d(TAG, "dismiss TIME_OUT_POPUP_TAG")
        }
        supportFragmentManager.findFragmentByTag(Dialog.NO_CONNECTION)?.let {
            (it as SAlertDlgFragment).dismissAllowingStateLoss()
            LOG.d(TAG, "dismiss NO_CONNECTION_POPUP_TAG")
        }
        supportFragmentManager.findFragmentByTag(Dialog.ERROR_FROM_WATCH)?.let {
            (it as SAlertDlgFragment).dismissAllowingStateLoss()
            LOG.d(TAG, "dismiss PAUSE_POPUP_TAG")
        }
        mOneMinuteTimer.stopTimer()
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        when (requestCode) {
            REQUEST_CODE_FOR_INPUT_ACTIVITY ->
                if (resultCode == RESULT_CODE_GO_PREV_FROM_INPUT_ACTIVITY) {
                    finish()
                } else if (resultCode == RESULT_CODE_RETAKE_ACTIVITY) {
                    StateManager.getInstance().gotoInitSate()
                    finish()
                }
        }
    }

    private fun checkAndMakeRandomError() {
        if (StateManager.getInstance().currentState.getCalibrationCount() == 2 &&
                DemoUtil.isRandomErrorCaseStep(DemoUtil.ERROR_MeasuringActivity)) {
            LOG.d(TAG, "This is in RandomErrorCase.")
            val random = (1..2).random()
            val delayTime = (1000L..28000L).random()
            when (random) {
                1 -> {
                    LOG.d(TAG, "Disable BT in RandomErrorCase.")
                    Handler().postDelayed({
                        DemoUtil.offBT()
                    }, delayTime)
                }
                2 -> {
                    LOG.d(TAG, "Time out in RandomErrorCase.")
                    Handler().postDelayed({
                        runOnUiThread { showDialog(Dialog.TIME_OUT) }
                    }, delayTime)
                }
            }
        }
    }

    class OneMinuteTimerHandler(private val mOuter: WeakReference<SHealthMonitorMeasurementActivity>) : Handler() {

        private val TAG = LOG.prefix + "OneMinuteTimerHandler"
        private val TIME_OUT_POPUP_TAG = "TIME_OUT_POPUP_TAG"

        private val POPUP_REMAIN_LIMIT_SECS = 60

        val MESSAGE_TIMER_START = 1001
        val MESSAGE_TIMER_STOP = 1002
        private val MESSAGE_TIMER_END = 1003
        val MESSAGE_TIMER_RESET = 1004

        private var count = POPUP_REMAIN_LIMIT_SECS

        fun startTimer() {
            sendEmptyMessage(MESSAGE_TIMER_RESET)
        }

        fun stopTimer() {
            sendEmptyMessage(MESSAGE_TIMER_STOP)
        }

        override fun handleMessage(msg: Message?) {
            when (msg?.what) {
                MESSAGE_TIMER_RESET -> {
                    LOG.d(TAG, "called MESSAGE_TIMER_RESET ${msg?.toString()}")
                    count = POPUP_REMAIN_LIMIT_SECS
                    sendEmptyMessage(MESSAGE_TIMER_START)
                }
                MESSAGE_TIMER_START -> {
                    if (count-- == 0) {
                        sendEmptyMessage(MESSAGE_TIMER_END)
                    } else {
                        sendEmptyMessageDelayed(MESSAGE_TIMER_START, 1000)
                    }
                }
                MESSAGE_TIMER_END -> {
                    LOG.d(TAG, "called MESSAGE_TIMER_END ${msg?.toString()}")
                    mOuter.get()?.showDialog(TIME_OUT_POPUP_TAG)
                    sendEmptyMessage(MESSAGE_TIMER_STOP)
                }
                MESSAGE_TIMER_STOP -> {
                    LOG.d(TAG, "called MESSAGE_TIMER_STOP ${msg?.toString()}")
                    removeMessages(MESSAGE_TIMER_START)
                }
            }
        }
    }

    class TimerHandler(private val mOuter: WeakReference<SHealthMonitorMeasurementActivity>) : Handler() {

        private val TAG = LOG.prefix + "TimerHandler"
        private val TIME_OUT_POPUP_TAG = "TIME_OUT_POPUP_TAG"

        private val LIMIT_SECS_FOR_ONE_SESSION = 120

        val MESSAGE_TIMER_START = 1001
        val MESSAGE_TIMER_STOP = 1002
        private val MESSAGE_TIMER_END = 1003
        val MESSAGE_TIMER_RESET = 1004

        private var count = LIMIT_SECS_FOR_ONE_SESSION

        fun startTimer() {
            sendEmptyMessage(MESSAGE_TIMER_RESET)
        }

        fun stopTimer() {
            sendEmptyMessage(MESSAGE_TIMER_STOP)
        }

        override fun handleMessage(msg: Message?) {

            when (msg?.what) {
                MESSAGE_TIMER_RESET -> {
                    LOG.d(TAG, "called MESSAGE_TIMER_RESET ${msg?.toString()}")
                    count = LIMIT_SECS_FOR_ONE_SESSION
                    sendEmptyMessage(MESSAGE_TIMER_START)
                }
                MESSAGE_TIMER_START -> {
                    if (count-- == 0) {
                        sendEmptyMessage(MESSAGE_TIMER_END)
                    } else {
                        sendEmptyMessageDelayed(MESSAGE_TIMER_START, 1000)
                    }
                }
                MESSAGE_TIMER_END -> {
                    LOG.d(TAG, "called MESSAGE_TIMER_END ${msg?.toString()}")
                    mOuter.get()?.showDialog(TIME_OUT_POPUP_TAG)
                    sendEmptyMessage(MESSAGE_TIMER_STOP)
                }
                MESSAGE_TIMER_STOP -> {
                    LOG.d(TAG, "called MESSAGE_TIMER_STOP ${msg?.toString()}")
                    removeMessages(MESSAGE_TIMER_START)
                }
            }
        }
    }

    fun sendSALog() {

        SHealthMonitorLogManager.sendCalibrationLog("SHealthMonitorMeasurementActivity",
                SHealthMonitorLogManager.BP_START_TO_CALIBRATION, StateManager.getInstance().currentState.getCalibrationCount())

        if (BpSharedPreferenceHelper.getInitialCalibrationComplete()) {
            if (StateManager.getInstance().currentState.getCalibrationCount() == 1) {
                SHealthMonitorLogManager.sendLog("SHealthMonitorMeasurementActivity", SHealthMonitorLogManager.BP_START_TO_RE_CALIBRATION)
            }
        }

    }

    fun sendErrorLog(errorString : String) {
        SHealthMonitorLogManager.sendErrorOnCalibration("SHealthMonitorMeasurementActivity", errorString,
                StateManager.getInstance().currentState.getCalibrationCount())
    }
}

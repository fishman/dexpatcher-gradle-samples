package com.samsung.android.shealthmonitor.bp.ui.activity

import android.app.Activity
import android.content.Context
import android.graphics.Color
import android.os.Bundle
import android.os.Handler
import android.os.Message
import android.support.v4.content.res.ResourcesCompat
import android.text.Editable
import android.text.TextWatcher
import android.view.*
import android.view.inputmethod.EditorInfo
import android.view.inputmethod.InputMethodManager

import android.widget.TextView
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.helper.BpSharedPreferenceHelper
import com.samsung.android.shealthmonitor.bp.manager.StateManager
import com.samsung.android.shealthmonitor.bp.manager.WearableBpManager
import com.samsung.android.shealthmonitor.bp.ui.view.TransparentProgressDialog
import com.samsung.android.shealthmonitor.bp.util.DemoUtil
import com.samsung.android.shealthmonitor.bp.util.DialogUtils
import com.samsung.android.shealthmonitor.bp.util.JsonUtil
import com.samsung.android.shealthmonitor.manager.SHealthMonitorLogManager
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.Utils
import kotlinx.android.synthetic.main.shealth_monitor_bp_input_activity.*
import java.lang.Exception
import java.lang.ref.WeakReference

class SHealthMonitorBpInputActivity : BaseAppCompatActivity() {

    private val TAG = LOG.prefix + "SHealthMonitorBpInputActivity"

    private val COMFIRM_POPUP_TAG = "COMFIRM_POPUP_TAG"
    private val OUT_OF_RANGE_DIALOG_TAG = "OUT_OF_RANGE_DIALOG_TAG"

    private var mProgressDialog : TransparentProgressDialog? = null
    private var mIsProgressing : Boolean = false

    val editActionWatcher : TextView.OnEditorActionListener

    private val mOuter = WeakReference<SHealthMonitorBpInputActivity>(this)
    private val mTimer = InputTimerHandler(mOuter)

    private var mConfirmDialog : SAlertDlgFragment? = null

    companion object {
        val RESULT_CODE_GO_PREV_FROM_INPUT_ACTIVITY = 101
        val RESULT_CODE_RETAKE_ACTIVITY = 102
    }

    init {
        editActionWatcher = object : TextView.OnEditorActionListener {
            override fun onEditorAction(view: TextView?, actionId: Int, event: KeyEvent?): Boolean {
                if (actionId == EditorInfo.IME_ACTION_DONE) {
                    mTimer.resetCount()
                    if (checkHigherThan()) {
                        validDiastolic()
                        showConfirmDialog()
                        return false
                    } else {
                        invalidDiastolic()
                        return true
                    }

                } else if (actionId == EditorInfo.IME_ACTION_NEXT) {
                    mTimer.resetCount()
                    return updateBgOfSystolicView()
                }

                return false
            }
        }
    }

    var bShowErrorText = false // For ignore first focusing at the starting

    val foucsWatcher = object : View.OnFocusChangeListener {
        override fun onFocusChange(view: View?, hasFocus: Boolean) {
            if (view?.id == mDiastolicEditText.id) {

                if (checkSystolic()) {
                    activeDiastolic()
                    validSystolic()
                    bShowErrorText = false
                } else {
                    Handler().postDelayed({ // delay for draw error : The cursor was remained in the Editor.
                        mSystolicEditText.requestFocus()
                    }, 100)
                }

            }
            mTimer.resetCount()
        }
    }


    fun changeDoneButton() {
        if (bottomButton.visibility == View.GONE) {
            return
        }

        val enable : Boolean
        if (bShowErrorText) {
            enable = false
        } else {
            enable = checkHigherThan()
        }
        LOG.i(TAG, "Done button is ${enable}")
        mDone.isEnabled = enable
    }


    public override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        setContentView(R.layout.shealth_monitor_bp_input_activity)

        initView()
    }

    private fun checkAndMakeRandomError() {
        if (StateManager.getInstance().currentState.getCalibrationCount() == 2 &&
            DemoUtil.isRandomErrorCaseStep(DemoUtil.ERROR_SHealthMonitorBpInputActivity)) {
            DemoUtil.onOffBTForDemo()
        }
    }

    private fun showProgress() {
        if (mProgressDialog == null) {
            mProgressDialog = TransparentProgressDialog (this)
            mProgressDialog?.setCancelable(false)
        }
        mProgressDialog?.show()
        mIsProgressing = true
    }

    private fun dismissProgress() {
        mProgressDialog?.dismiss()
        mIsProgressing = false
    }

    // for translucent status bar
    private fun makeFulltransParentStatusBar() {
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


    fun initView() {

        mDone.isEnabled = false

        mSystolicEditText.setOnEditorActionListener(editActionWatcher)
        mDiastolicEditText.setOnEditorActionListener(editActionWatcher)

        mSystolicEditText.setOnFocusChangeListener(foucsWatcher)
        mDiastolicEditText.setOnFocusChangeListener(foucsWatcher)

        //Code for font style change :-(
        mSystolicEditText.addTextChangedListener(object:TextWatcher{
            var hint : Boolean = true
            override fun afterTextChanged(s: Editable?) {
            }

            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {

            }
            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
                if(s == null || s.isEmpty()) {
                    // no text, hint is visible
                    hint = true
                    mSystolicEditText.typeface = ResourcesCompat.getFont(baseContext,
                            R.font.samsung_sharp_sans_regular)


                } else if(hint) {
                    // no hint, text is visible
                    hint = false
                    mSystolicEditText.typeface = ResourcesCompat.getFont(baseContext,
                            R.font.samsung_sharp_sans_medium)

                }
            }
        })

        mDiastolicEditText.addTextChangedListener(object:TextWatcher {
            var hint : Boolean = true
            override fun afterTextChanged(s: Editable?) {
            }
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {

            }
            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
                if(s == null || s.isEmpty()) {
                    // no text, hint is visible
                    hint = true
                    mDiastolicEditText.typeface = ResourcesCompat.getFont(baseContext,
                            R.font.samsung_sharp_sans_regular)

                } else if(hint) {
                    // no hint, text is visible
                    hint = false
                    mDiastolicEditText.typeface = ResourcesCompat.getFont(baseContext,
                            R.font.samsung_sharp_sans_medium)
                }
            }
        })
        //END: Code for font style change :-(

        mDone.setOnClickListener {
            if (checkHigherThan()) {
                showConfirmDialog()
            }
        }

        mTopview.viewTreeObserver.addOnGlobalLayoutListener {
            LOG.i(TAG, "onGlobalLayout")
            changeDoneButton()
            mTimer.resetCount()
        }

        mTimer.sendEmptyMessage(mTimer.MESSAGE_TIMER_START)

    }

    fun invalidSystolic() {
        mSystolicEditTextLayout.background = getDrawable(R.drawable.bp_calibrate_edit_invalid_active_background)
        mInvalidErrorText.visibility = View.VISIBLE
    }

    fun validSystolic() {
        mSystolicEditTextLayout.background = getDrawable(R.drawable.bp_calibrate_edit_deactive_background)
        mInvalidErrorText.visibility = View.GONE
    }

    fun invalidDiastolic() {
        mDiastolicEditTextLayout.background = getDrawable(R.drawable.bp_calibrate_edit_invalid_active_background)
        mInvalidErrorText.visibility = View.VISIBLE
    }

    fun validDiastolic() {
        mDiastolicEditTextLayout.background = getDrawable(R.drawable.bp_calibrate_edit_active_background)
        mInvalidErrorText.visibility = View.GONE
    }


    fun activeSystolic() {
        //mSystolicEditTextLayout.elevation = Utils.convertDpToPx(this,8)
        mSystolicEditTextLayout.background = getDrawable(R.drawable.bp_calibrate_edit_active_background)
        mSystolicLabel.setTextColor(getColor(R.color.bp_calibration_edit_systolic_color))


        //mDiastolicEditTextLayout.elevation = 0f
        mDiastolicEditTextLayout.background = getDrawable(R.drawable.bp_calibrate_edit_deactive_background)
        mDiastolicLabel.setTextColor(getColor(R.color.bp_calibration_edit_deactive_label_color))
    }

    fun activeDiastolic() {
        //mDiastolicEditTextLayout.elevation = Utils.convertDpToPx(this,8)
        mDiastolicEditTextLayout.background = getDrawable(R.drawable.bp_calibrate_edit_active_background)
        mDiastolicLabel.setTextColor(getColor(R.color.bp_calibration_edit_diastolic_color))

        //mSystolicEditTextLayout.elevation = 0f
        mSystolicEditTextLayout.background = getDrawable(R.drawable.bp_calibrate_edit_deactive_background)
        mSystolicLabel.setTextColor(getColor(R.color.bp_calibration_edit_systolic_color))
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
        }
        return super.onOptionsItemSelected(item)
    }

    override fun onBackPressed() {
        if (!mIsProgressing) {
            finish()
        } else {
            dismissProgress()
        }
    }

    fun showConfirmDialog() {

        //for Error Demo
        checkAndMakeRandomError()

        mTimer.resetCount()
        var showError = false

        val fragment = supportFragmentManager.findFragmentByTag(COMFIRM_POPUP_TAG)
        if (fragment != null && fragment.isVisible) {
            LOG.d(TAG, "showConnectionFailureDialog is already visible")
            return
        }

        val builder = SAlertDlgFragment.Builder(R.string.health_monitor_bp_input_monitor_confirm_popup_title, SAlertDlgFragment.TYPE_P_N_BUTTON)
        builder.setContent(R.layout.shealth_monitor_bp_input_dialog) {
            content, _, _, _, _ ->

            val sysValue = getSystolic()
            val diasValue = getDiastolic()

            if (!checkSystolicValue(sysValue)) {
                content.findViewById<View>(R.id.systolicCautionIcon).visibility = View.VISIBLE
                showError = true
            }
            if (!checkDiastolicValue(diasValue)) {
                content.findViewById<View>(R.id.diastolicCautionIcon).visibility = View.VISIBLE
                showError = true
            }

            if (showError) {
                content.findViewById<View>(R.id.mCautionText).visibility = View.VISIBLE
            }

            content.findViewById<TextView>(R.id.mSystolicText).text = mSystolicEditText.text
            content.findViewById<TextView>(R.id.mDiastolicText).text = mDiastolicEditText.text

        }

        builder.setPositiveButtonClickListener(R.string.shealth_monitor_confirm) {
            view ->
            mTimer.sendEmptyMessage(mTimer.MESSAGE_TIMER_STOP)
            if (showError) {
                showOutOfRangeDialog()
            } else {
                showProgress()
                view.isEnabled = false
                val nCount = StateManager.getInstance().currentState.getCalibrationCount()
                if (nCount >= 3) {
                    sendCalibrationFinalUpdate(view, nCount)
                } else {
                    sendCalibrationUpdate(view, nCount)
                }


            }

        }

        builder.setNegativeButtonClickListener(R.string.shealth_monitor_edit) {
            showSoftKeyboard(mDiastolicEditText)
            mConfirmDialog = null
        }

        builder.setDialogDismissListener {
            mConfirmDialog = null
            LOG.d(TAG, "Dismiss mConfirmDialog")
        }

        builder.setPositiveButtonTextColor(resources.getColor(R.color.dialog_color, null))
        builder.setNegativeButtonTextColor(resources.getColor(R.color.dialog_color, null))

        try {
            mConfirmDialog = builder.build()
            mConfirmDialog!!.show(supportFragmentManager, COMFIRM_POPUP_TAG)
        } catch (e: Exception) {
            LOG.d(TAG, "showConfirmDialog(), error in confirm dialog build")
        }


    }

    private fun sendCalibrationUpdate(view: View, nCount : Int) {
        val reqId = WearableBpManager.getInstance().updateBpCalibration(
                mSystolicEditText.text.toString().toInt(),
                mDiastolicEditText.text.toString().toInt(),
                nCount) { result, _, _ ->
                    dismissProgress()
                    when (result) {
                        "SUCCESS_REQUEST" -> {
                            SHealthMonitorLogManager.sendCalibrationLog("SHealthMonitorBpInputActivity",
                                    SHealthMonitorLogManager.BP_FINISHED_CALIBRATION, nCount)
                            Utils.runOnUiThread {
                                view.isEnabled = true
                                StateManager.getInstance().next()
                                setResult(RESULT_CODE_GO_PREV_FROM_INPUT_ACTIVITY)
                                finish()
                            }
                        }
                        "DISCONNECT_DEVICE" -> {
                            Utils.runOnUiThread {
                                view.isEnabled = true
                                DialogUtils.showNoConnectionDialog(this)
                            }
                        }
                        else -> {
                            Utils.runOnUiThread {
                                Utils.showToast(this, "Fail to sendPreCalibrationRequest, Try again!", false, false)
                                view.isEnabled = true
                                DialogUtils.showNoConnectionDialog(this)
                            }
                        }
                    }
                }
        if (reqId == -1) {
            dismissProgress()
            Utils.showToast(baseContext, "Connected watch was not found!", true, false)
            view.isEnabled = true
            DialogUtils.showNoConnectionDialog(this)
        }
    }

    private fun sendCalibrationFinalUpdate(view: View, nCount : Int) {
        val reqId = WearableBpManager.getInstance().updateBpCalibration(
                mSystolicEditText.text.toString().toInt(),
                mDiastolicEditText.text.toString().toInt(),
                nCount) { updateResult, _, _ ->
                    when (updateResult) {
                        "SUCCESS_REQUEST" -> {
                            val reqId = WearableBpManager.getInstance().sendInitialCalibrationRequest { calResult, _, receiveBody ->
                                LOG.d(TAG, "sendInitialCalibrationRequest result : $calResult")
                                dismissProgress()
                                when (calResult) {
                                    "SUCCESS_REQUEST" -> {
                                        SHealthMonitorLogManager.sendCalibrationLog("SHealthMonitorBpInputActivity",
                                                SHealthMonitorLogManager.BP_FINISHED_CALIBRATION, nCount)
                                        if (BpSharedPreferenceHelper.getInitialCalibrationComplete()) {
                                            SHealthMonitorLogManager.sendLog("SHealthMonitorBpInputActivity", SHealthMonitorLogManager.BP_FINISHED_RE_CALIBRATION)
                                        }

                                        val calibrationTime = JsonUtil.getCalibrationTimeFromBodyStr(receiveBody)
                                        Utils.runOnUiThread {
                                            StateManager.settingForCompletedCalibration(calibrationTime)
                                            view.isEnabled = true
                                            StateManager.getInstance().next()
                                            setResult(RESULT_CODE_GO_PREV_FROM_INPUT_ACTIVITY)
                                            finish()
                                        }
                                    }
                                    "DISCONNECT_DEVICE" -> {
                                        Utils.runOnUiThread {
                                            view.isEnabled = true
                                            DialogUtils.showNoConnectionDialog(this)
                                        }
                                    }
                                    else -> {
                                        Utils.runOnUiThread {
                                            Utils.showToast(this, "Fail to sendPreCalibrationRequest, Try again!", false, false)
                                            view.isEnabled = true
                                            DialogUtils.showNoConnectionDialog(this)
                                        }
                                    }
                                }
                            }
                            if (reqId == -1) {
                                this.runOnUiThread {
                                    dismissProgress()
                                    view.isEnabled = true
                                    Utils.showToast(baseContext, "Connected watch was not found!", false, false)
                                    DialogUtils.showNoConnectionDialog(this)
                                }
                            }
                        }
                        "DISCONNECT_DEVICE" -> {
                            Utils.runOnUiThread {
                                dismissProgress()
                                view.isEnabled = true
                                DialogUtils.showNoConnectionDialog(this)
                            }
                        }
                        else -> {
                            this.runOnUiThread {
                                dismissProgress()
                                view.isEnabled = true
                                Utils.showToast(this, "Fail to update, Try again!", false, false)
                                DialogUtils.showNoConnectionDialog(this)
                            }
                        }
                    }
                }

        if (reqId == -1) {
            dismissProgress()
            Utils.showToast(baseContext, "Connected watch was not found!", true, false)
            view.isEnabled = true
            DialogUtils.showNoConnectionDialog(this)
        }
    }

    fun updateBgOfSystolicView() : Boolean {
        val strSysValue = mSystolicEditText.text.toString().trim()
        if (strSysValue.isEmpty()) {
            //invalidSystolic()
            return true
        } else {
            //validSystolic()
            return false
        }
    }

    fun checkSystolic() : Boolean {
        val strSysValue = mSystolicEditText.text.toString().trim()
        var sysValue = -1
        return strSysValue.isNotEmpty()
    }

    fun getDiastolic() : Int {
        val strDiasValue = mDiastolicEditText.text.toString().trim()
        var diasysValue = -1
        if (strDiasValue.isNotEmpty()) {
            diasysValue = strDiasValue.toInt()
        }
        return diasysValue
    }


    fun getSystolic() : Int {
        val strSysValue = mSystolicEditText.text.toString().trim()
        var sysValue = -1
        if (strSysValue.isNotEmpty()) {
            sysValue = strSysValue.toInt()
        }
        return sysValue
    }

    fun checkHigherThan() : Boolean {
        val sysValue = getSystolic()
        val diasValue = getDiastolic()

        return ((sysValue >= 0) and (diasValue >=0)
                and checkValue(sysValue, diasValue))
    }

    private fun checkSystolicValue(value : Int) : Boolean {
        return ((80 <= value) and (value <= 170))
    }

    private fun checkDiastolicValue(value : Int) : Boolean {
        return ((50 <= value) and (value <= 110))
    }

    private fun checkValue(systolic: Int, diastolic : Int) : Boolean {
        return (systolic > diastolic)
    }

    private fun showSoftKeyboard(view: View) {
        view.requestFocus()
        Handler().postDelayed (
                {
                    val imm = getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
                    imm.showSoftInput(view, InputMethodManager.SHOW_IMPLICIT)

                }
                ,100
        )
    }

    override fun onDestroy() {
        mTimer.sendEmptyMessage(mTimer.MESSAGE_TIMER_STOP)
        super.onDestroy()
    }

    private fun showTimeOutDialog() {

        if (mConfirmDialog != null) {
            mConfirmDialog?.dismiss()
            mConfirmDialog = null
        }

        val builder = SAlertDlgFragment.Builder(R.string.shealth_monitor_time_out_title, SAlertDlgFragment.TYPE_P_BUTTON)
        builder.setContentText(R.string.shealth_monitor_time_out_body)

        builder.setPositiveButtonClickListener(R.string.baseui_button_ok) {
            setResult(RESULT_CODE_RETAKE_ACTIVITY)
            finish()
        }

        builder.setNegativeButtonTextColor(resources.getColor(R.color.dialog_color, null))
        builder.setPositiveButtonTextColor(resources.getColor(R.color.dialog_color, null))

        builder.setAutoDismiss(false)
        builder.setCanceledOnTouchOutside(false)
        builder.setBackPressedListener {  }
        try {
            builder.build().show(supportFragmentManager, COMFIRM_POPUP_TAG)
        } catch (e: Exception) {
            LOG.d(TAG, "showConfirmDialog(), error in confirm dialog build")
        }
    }


    class InputTimerHandler(private val mOuter: WeakReference<SHealthMonitorBpInputActivity>) : Handler() {

        private val TAG = LOG.prefix + "InputTimerHandler"
        private val TIME_OUT_POPUP_TAG = "TIME_OUT_POPUP_TAG"

        val MESSAGE_TIMER_START = 1001
        val MESSAGE_TIMER_STOP = 1002
        private val MESSAGE_TIMER_END = 1003

        private var count = 60

        fun resetCount() {
            count = 60
        }

        override fun handleMessage(msg: Message?) {
            LOG.d(TAG, "${msg?.what}, $count")
            when (msg?.what) {
                MESSAGE_TIMER_START -> {
                    if (count-- == 0) {
                        sendEmptyMessage(MESSAGE_TIMER_END)
                    } else {
                        sendEmptyMessageDelayed(MESSAGE_TIMER_START, 1000)
                    }
                }
                MESSAGE_TIMER_END -> mOuter.get()?.showTimeOutDialog()
                MESSAGE_TIMER_STOP -> removeMessages(MESSAGE_TIMER_START)
            }
        }
    }


    fun showOutOfRangeDialog() {

        mTimer.resetCount()
        mTimer.sendEmptyMessage(mTimer.MESSAGE_TIMER_STOP)

        val fragment = supportFragmentManager.findFragmentByTag(OUT_OF_RANGE_DIALOG_TAG)
        if (fragment != null && fragment.isVisible) {
            LOG.d(TAG, "showConnectionFailureDialog is already visible")
            return
        }

        val builder = SAlertDlgFragment.Builder(R.string.shealth_monitor_bp_input_out_of_range_title, SAlertDlgFragment.TYPE_P_BUTTON)
        builder.setContent(R.layout.shealth_monitor_bp_input_out_of_range_dialog) {
            content, _, _, _, _ ->

            content.findViewById<TextView>(R.id.mLearnMoreButton).setOnClickListener {
                SHealthMonitorBpHowToUseActivity.startActivity(this, SHealthMonitorBpHowToUseDetailActivity.HOW_TO_USE_TYPE_ONBOARDING)
            }

        }

        builder.setPositiveButtonClickListener(R.string.baseui_button_ok) {
            finish()
            Utils.startActivityByClassNameClearTask(baseContext,
                    "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorMainActivity")
        }

        builder.setDialogDismissListener {
            LOG.d(TAG, "Dismiss mConfirmDialog")
        }

        builder.setPositiveButtonTextColor(resources.getColor(R.color.dialog_color, null))

        try {
            mConfirmDialog = builder.build()
            mConfirmDialog!!.show(supportFragmentManager, OUT_OF_RANGE_DIALOG_TAG)
        } catch (e: Exception) {
            LOG.d(TAG, "showConfirmDialog(), error in confirm dialog build")
        }

    }
}

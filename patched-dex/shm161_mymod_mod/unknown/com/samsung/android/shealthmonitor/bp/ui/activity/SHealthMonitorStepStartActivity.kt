package com.samsung.android.shealthmonitor.bp.ui.activity

import android.graphics.Color
import android.os.Bundle
import android.view.MenuItem
import android.view.View

import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.manager.CalibrationState
import com.samsung.android.shealthmonitor.bp.manager.StateManager
import com.samsung.android.shealthmonitor.bp.ui.view.SHealthMonitorStepView
import com.samsung.android.shealthmonitor.util.LOG

import android.view.Menu
import android.view.WindowManager
import android.view.animation.AnimationUtils
import com.samsung.android.shealthmonitor.util.Utils
import android.app.Activity
import android.media.MediaPlayer
import android.os.Handler
import com.samsung.android.shealthmonitor.bp.ui.view.SHealthMonitorVideoView
import com.samsung.android.shealthmonitor.bp.util.DemoUtil
import com.samsung.android.shealthmonitor.bp.util.DialogUtils
import com.samsung.android.shealthmonitor.bp.util.DialogUtils.NO_CONNECTION_POPUP_TAG
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment
import com.samsung.android.shealthmonitor.ui.dialog.listener.OnPositiveButtonClickListener
import kotlinx.android.synthetic.main.shealth_monitor_starting_step_activity.*
import java.lang.Exception


class SHealthMonitorStepStartActivity : BaseAppCompatActivity() {

    private val TAG = LOG.prefix + "SHealthMonitorStepStartActivity"
    private val COMFIRM_POPUP_TAG = "COMFIRM_POPUP_TAG"
    var mCurrentView : SHealthMonitorStepView? = null
    var mSidePadding : Int? = null
    var mCurrentDrawingStatus : CalibrationState = CalibrationState.FIRST_READY
    var mCurrentIsPossibleBack : Boolean = true
    var mMenuItem : MenuItem? = null
    var mVideoView : SHealthMonitorVideoView? = null

    public override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setSetDefaultMenuColor(false)
        setContentView(R.layout.shealth_monitor_starting_step_activity)
        initView()
        makeFulltransParentStatusBar()
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

        // init constant value
        mSidePadding = Utils.convertDpToPx(this, 10).toInt()

        supportActionBar?.setDisplayShowTitleEnabled(false)
        supportActionBar?.setDisplayShowHomeEnabled(false)

        /**
         * IMPORTANT!! :: State logic
         * be careful for changing
        // Must be call at LAST: update view !!
        **/
        StateManager.getInstance().load()

        // TODO: set First ready state for test
        // StateManager.getInstance().setCalibrationState(CalibrationState.CALIBRATION_DONE)

        mCurrentDrawingStatus = StateManager.getInstance().currentState
        if(mCurrentDrawingStatus == CalibrationState.CALIBRATION_DONE) {
            LOG.d(TAG, "Recalibration is staring...")
            StateManager.getInstance().setCalibrationState(CalibrationState.FIRST_READY)
            mCurrentDrawingStatus = StateManager.getInstance().currentState
        }
        LOG.d(TAG, "Start status :  " + mCurrentDrawingStatus)
        /***/
        mVideoView = SHealthMonitorVideoView(this, mVideo.holder)

        changeView(mCurrentDrawingStatus)
        DemoUtil.initRandomError()

    }

    fun checkAndMakeRandomError(currentState : CalibrationState) {
        var makeError = false
        if (currentState == CalibrationState.SECOND_1_STEP) {
            makeError = DemoUtil.isRandomErrorCaseStep(DemoUtil.ERROR_SECOND_1_STEP)
        } else if (currentState == CalibrationState.FIRST_DONE) {
            makeError = DemoUtil.isRandomErrorCaseStep(DemoUtil.ERROR_SECOND_READY)
        }

        if (makeError) {
            DemoUtil.onOffBTForDemo()
        }
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.shealth_monitor_step_menu, menu)
        mMenuItem = menu.findItem(R.id.mMenuFirstItem)
        mMenuItem?.isVisible = mCurrentDrawingStatus.hasMenu()
        return super.onCreateOptionsMenu(menu)
    }

    override fun onResume() {
        super.onResume()

        if (mCurrentDrawingStatus != StateManager.getInstance().currentState) {
            mCurrentDrawingStatus = StateManager.getInstance().currentState
            changeView(mCurrentDrawingStatus)
        } else {
            mCurrentView?.onResume()
        }

        hiddenVideo() // for black screen, onPrepared video is called at OnResume, it can be seen black screen
    }

    override fun onPause() {
        super.onPause()
        pauseVideo()
        mCurrentView?.onPause()
    }

    private fun enableMenu(enable : Boolean) {
        mMenuItem?.isEnabled = enable
        if (mCurrentIsPossibleBack) {
            supportActionBar?.setDisplayHomeAsUpEnabled(enable)
        }

    }

    private fun changeView(state : CalibrationState) {
        LOG.d(TAG, "changeView")

        //For error demo
        checkAndMakeRandomError(state)

        mCurrentDrawingStatus = state
        changeMainView(state.responsibleView(this), state)

        mCurrentIsPossibleBack = state.isPossibleBack()
        supportActionBar?.setDisplayHomeAsUpEnabled(mCurrentIsPossibleBack)

        mMenuItem?.isVisible = state.hasMenu()
        enableMenu(true)
    }

    private var mNextClickListener = object : View.OnClickListener {
        override fun onClick(v:View) {

            val nextState = StateManager.getInstance().next()
            changeView(nextState)

        }
    }

    private fun hiddenVideo() {
        mVideo.alpha = 0.0f
        mBackGround.alpha = 1.0f
        mBackGround.visibility = View.VISIBLE
    }

    private fun showVideo() {
        if (mCurrentView?.hasVideo() == true) {
            LOG.d(TAG, "showVideo")
            mBackGround.alpha = 0.0f
            mVideo.alpha = 1.0f
            mBackGround.visibility = View.INVISIBLE
        } else {
            LOG.d(TAG, "CurrentVideo don't have video URI")
        }
    }

    private fun playVideo(withRenderingStart : Boolean) {
        LOG.d(TAG, "playVideo " + withRenderingStart)
        if (withRenderingStart) {
            mVideoView?.setOnInfoListener { _, what, _ ->

                if (what == MediaPlayer.MEDIA_INFO_VIDEO_RENDERING_START) {
                    LOG.d(TAG, "MEDIA_INFO_VIDEO_RENDERING_START")
                    Handler().postDelayed({
                                showVideo()
                            },
                            200
                    )
                    //true //warning
                }
                false
            }
        }
    }

    private fun stopVideo() {
        mVideoView?.stopPlayback()
    }

    private fun pauseVideo() {
        if (mVideo.visibility == View.VISIBLE && mVideoView!!.isPlaying) {
            LOG.d(TAG, "pauseVideo ")
            mVideoView!!.pause()
        }
    }

    private fun changeMainView(view : SHealthMonitorStepView, @Suppress("UNUSED_PARAMETER") state : CalibrationState) {

        if (mCurrentView != null) {
            mViewContainer.removeView(mCurrentView)
        }
        view.setAbNextListener(mNextClickListener)
        mCurrentView = view

        removeAllFragmentDialog()
        mBackGround.setBackgroundResource(view.getBackgroundDrawableId())

        pauseVideo() // pause previous video
        hiddenVideo() // must call for first time
        if (view.hasVideo()) {
            val videoPath = view.getVideoURI()
            mVideoView?.setVideoPath(videoPath)
            mVideoView?.setOnPreparedListener {
                LOG.d(TAG, "OnPrepared video")
                playVideo(true)
            }
            mVideoView?.setOnCompletionListener {
                LOG.d(TAG, "OnCompletion Video")
                playVideo(false)
            }
        } else {
            mVideoView?.setOnPreparedListener(null)
            mVideoView?.setOnCompletionListener(null)
        }

        mViewContainer.addView(mCurrentView)
        val animation = AnimationUtils.loadAnimation(this, com.samsung.android.shealthmonitor.bp.R.anim.abc_fade_in)
        mViewContainer.startAnimation(animation)

    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        when (item.itemId) {
            android.R.id.home -> { onBackPressed()}
            R.id.mMenuFirstItem -> {
                showMeasureLaterDialog()
            }
        }
        return super.onOptionsItemSelected(item)
    }

    override fun onBackPressed() {
        mCurrentView?.onBack()
        if (mCurrentIsPossibleBack) {
            val prevState = StateManager.getInstance().prev()
            if (prevState == CalibrationState.NONE) {
                finish()
            } else {
                changeView(prevState)
            }
        }
    }

    private fun showMeasureLaterDialog() {

        var titleResId = R.string.shealth_monitor_bp_2nd_measure_later_popup_title
        if (mCurrentDrawingStatus.getCalibrationCount() == 3) {
            titleResId = R.string.shealth_monitor_bp_last_measure_later_popup_title
        }

        val builder = SAlertDlgFragment.Builder(titleResId, SAlertDlgFragment.TYPE_P_N_BUTTON)
        builder.setContentText(R.string.shealth_monitor_bp_measure_later_popup_body)

        builder.setPositiveButtonClickListener(R.string.shealth_monitor_yes, OnPositiveButtonClickListener {
            StateManager.getInstance().reLoad()
            finish()
            Utils.startActivityByClassNameClearTask(baseContext,
                    "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorMainActivity")
        })

        builder.setNegativeButtonClickListener(R.string.common_cancel, {})

        builder.setNegativeButtonTextColor(resources.getColor(R.color.dialog_color, null))
        builder.setPositiveButtonTextColor(resources.getColor(R.color.dialog_color, null))

        try {
            builder.build().show(supportFragmentManager, COMFIRM_POPUP_TAG)
        } catch (e: Exception) {
            LOG.d(TAG, "showConfirmDialog(), error in confirm dialog build")
        }
    }

    fun removeAllFragmentDialog() {
        DialogUtils.removeFragmentDialog(this, NO_CONNECTION_POPUP_TAG )
    }
}

package com.samsung.android.shealthmonitor.bp.ui.view


import android.app.Activity
import android.content.Context
import android.media.MediaPlayer
import android.net.Uri
import android.os.Handler
import android.support.v4.app.FragmentActivity
import android.view.View
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.manager.StateManager
import com.samsung.android.shealthmonitor.bp.manager.WearableBpManager
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpHowToUseActivity
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpHowToUseDetailActivity
import com.samsung.android.shealthmonitor.bp.util.DialogUtils
import com.samsung.android.shealthmonitor.bp.util.JsonUtil
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.Utils
import kotlinx.android.synthetic.main.shealth_monitor_calibration_done_activity.view.*
import java.util.Locale

class SHealthMonitorCompleteView (context: Context) : SHealthMonitorStepView(context){

    var root:View
    private var mVideoView : SHealthMonitorVideoView? = null

    private val TAG = LOG.prefix + "SHealthMonitorCompleteView"

    init {

        val res : Int = R.layout.shealth_monitor_calibration_done_activity
        root = View.inflate(context, res, this)
        val activity = context as Activity


        mNext.setOnClickListener {
            view ->
                view.isEnabled = false
                Utils.startActivityByClassNameClearTask(activity,
                           "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorMainActivity")
                activity.finish()
        }

        mHowtoMeasuring.setOnClickListener {
            SHealthMonitorBpHowToUseActivity. startActivity(context, SHealthMonitorBpHowToUseDetailActivity.HOW_TO_USE_TYPE_MEASURING_BP)
        }

        mVideoView = SHealthMonitorVideoView(getContext(), mVideo.holder)
        val videoUri = Uri.parse(getViewPath())
        mVideoView?.setVideoPath(videoUri)
        mVideoView?.setOnPreparedListener {
            LOG.d(TAG, "OnPrepared video")
            playVideo(true)
        }
        mVideoView?.setOnCompletionListener {
            LOG.d(TAG, "OnCompletion Video")
            playVideo(false)
        }
    }

    private fun getViewPath() : String {
        val path = "android.resource://" +  context.packageName + "/"
        if ("KR".equals(Locale.getDefault().getCountry() , true)) {
            return path + R.raw.watch_calibration_completed_kr
        }
        return path + R.raw.watch_calibration_completed
    }

    private fun playVideo(withRenderingStart : Boolean) {
        LOG.d(TAG, "playVideo $withRenderingStart")
        if (withRenderingStart) {
            mVideoView?.setOnInfoListener { _, what, _ ->
                if (what == MediaPlayer.MEDIA_INFO_VIDEO_RENDERING_START) {
                    LOG.d(TAG, "MEDIA_INFO_VIDEO_RENDERING_START")
                    Handler().postDelayed({
                        showVideo()
                    },200
                    )
                    //true //warning
                }
                false
            }
        }
    }

    private fun hiddenVideo() {
        mVideo.alpha = 0.0f
        mVideoImage.alpha = 1.0f
        mVideoImage.visibility = View.VISIBLE
    }

    private fun stopVideo() {
        mVideoView?.stopPlayback()
    }

    private fun showVideo() {
        LOG.d(TAG, "showVideo")
        mVideoImage.alpha = 0.0f
        mVideo.alpha = 1.0f
        mVideoImage.visibility = View.INVISIBLE
    }

    private fun pauseVideo() {
        if (mVideo.visibility == View.VISIBLE && mVideoView!!.isPlaying) {
            LOG.d(TAG, "pauseVideo ")
            mVideoView?.pause()
        }
    }

    override fun onResume() {
        hiddenVideo()
    }

    override fun onPause() {
        pauseVideo()
    }

    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        stopVideo()
    }

    fun sendInitialCalibrationRequest(activity : Activity, view : View) {
        view.isEnabled = false
        val reqId = WearableBpManager.getInstance().sendInitialCalibrationRequest { result, _, receiveBody ->
            LOG.d(TAG, "sendInitialCalibrationRequest result : $result")
            if (root.isAttachedToWindow) {
                when (result) {
                    "SUCCESS_REQUEST" -> {
                        val calibrationTime = JsonUtil.getCalibrationTimeFromBodyStr(receiveBody)
                        Utils.runOnUiThread {
                            StateManager.settingForCompletedCalibration(calibrationTime)
                            StateManager.getInstance().next()
                            view.isEnabled = true
                            Utils.startActivityByClassNameClearTask(activity,
                                    "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorMainActivity")
                            activity.finish()
                        }
                    }
                    "DISCONNECT_DEVICE" -> {
                        Utils.runOnUiThread {
                            view.isEnabled = true
                            DialogUtils.showNoConnectionDialog(context as FragmentActivity)
                        }
                    }
                    else -> {
                        Utils.runOnUiThread {
                            Utils.showToast(context, "Fail to sendPreCalibrationRequest, Try again!", false, false)
                            view.isEnabled = true
                        }
                    }
                }
            } else {
                LOG.d(TAG, "Not isAttachedToWindow")
            }

        }
        if (reqId == -1) {
            Utils.showToast(context, "Connected watch was not found!", false, false)
            view.isEnabled = true
            DialogUtils.showNoConnectionDialog(context as FragmentActivity)
        }
    }


    override fun setAbNextListener( listener :  OnClickListener) {
    }

    override fun setAbPrevListener( listener :  OnClickListener) {
    }

    override fun getBackgroundDrawableId(): Int {
        return R.color.calibration_done_background
    }

    override fun onBack() {
    }

}

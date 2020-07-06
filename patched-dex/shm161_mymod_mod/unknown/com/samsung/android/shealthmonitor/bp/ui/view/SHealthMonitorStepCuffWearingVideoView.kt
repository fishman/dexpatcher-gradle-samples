package com.samsung.android.shealthmonitor.bp.ui.view


import android.app.Activity
import android.content.Context
import android.net.Uri
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.util.LOG


class SHealthMonitorStepCuffWearingVideoView (context: Context, bodyId : Int = -1) : SHealthMonitorStepCuffWearingView(context, bodyId) {

    private val TAG = LOG.prefix + "SHealthMonitorStepOneCuffWearingView"

    init {
        mBackground = R.drawable.how_to_wear_bpc
    }

    override fun setAbNextListener(listener :  OnClickListener) {
        mMainNextClickListener = listener
    }

    override fun setAbPrevListener( listener :  OnClickListener) {
    }

    override fun getBackgroundDrawableId(): Int {
        return mBackground
    }

    override fun getVideoURI() : Uri? {
        val activity = context as Activity
        val path = "android.resource://" +  activity.packageName + "/" + R.raw.how_to_wear_bpc_video_720
        return Uri.parse(path)
    }

    override fun hasVideo() : Boolean {
        return true
    }

    override fun onBack() {
    }
}

package com.samsung.android.shealthmonitor.bp.ui.view


import android.app.Activity
import android.content.Context
import android.net.Uri
import android.view.View
import com.samsung.android.shealthmonitor.bp.R

import kotlinx.android.synthetic.main.shealth_monitor_first_step_instruction_watch_test_view.view.*


class SHealthMonitorStepWatchWearingVideoView (context: Context) : SHealthMonitorStepView(context){

    private var mBackground : Int

    init {
        var layout : Int = R.layout.shealth_monitor_first_step_instruction_watch_test_view
        mBackground = R.drawable.how_to_wear_watch
        
        View.inflate(context, layout, this)
    }

    override fun setAbNextListener(listener :  OnClickListener) {
        mNext?.setOnClickListener(listener)
    }

    override fun setAbPrevListener( listener :  OnClickListener) {
    }

    override fun getBackgroundDrawableId(): Int {
        if (hasVideo()) {
            return R.drawable.how_to_wear_watch
        }
        return mBackground
    }


    override fun getVideoURI() : Uri? {
        val activity = context as Activity
        val path = "android.resource://" +  activity.packageName + "/" + R.raw.how_to_wear_watch_video_720
        return Uri.parse(path)
    }

    override fun hasVideo() : Boolean {
        return true
    }

    override fun onBack() {
        cancelCalibration("")
    }

}

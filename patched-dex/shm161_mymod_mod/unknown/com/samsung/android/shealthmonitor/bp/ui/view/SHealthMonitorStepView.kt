package com.samsung.android.shealthmonitor.bp.ui.view

import android.content.Context
import android.net.Uri
import android.transition.Fade
import android.transition.Slide
import android.transition.Transition
import android.view.Gravity
import android.widget.RelativeLayout
import com.samsung.android.shealthmonitor.bp.manager.WearableBpManager
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.Utils
import com.samsung.android.shealthmonitor.util.Utils.runOnUiThread

abstract class SHealthMonitorStepView (context:Context) : RelativeLayout(context) {

    init {
    }

    private val TAG = LOG.prefix + "SHealthMonitorStepView"
    abstract fun setAbNextListener( listener :  OnClickListener)
    abstract fun setAbPrevListener( listener :  OnClickListener)
    abstract fun getBackgroundDrawableId() : Int
    abstract fun onBack()

    open fun onResume(){
    }

    open fun onPause(){
    }

    open fun hasVideo() : Boolean {
        return false
    }

    open fun getVideoURI() : Uri? {
        return null
    }

    open fun getInTransition() : Transition {
        return Slide(Gravity.LEFT)//Fade(Fade.IN)
    }

    open fun getOutTransition() : Transition {
        return Fade(Fade.OUT)//Slide(Gravity.LEFT)
    }

    fun cancelCalibration(nextAction : String) {
        var reqId = WearableBpManager.getInstance().cancelCalibration(nextAction){
            result, _, _ ->
            when (result) {
                "SUCCESS_REQUEST" -> {
                    runOnUiThread {
                        Utils.showToast(context, "cancel success", true, false)
                    }
                }
                else -> {
                    runOnUiThread {
                        Utils.showToast(context, "cancel fail", true, false)
                    }
                }
            }
        }

        if (reqId == -1) {
            Utils.showToast(context, "Connected watch was not found!", false, false)
        }
    }
}

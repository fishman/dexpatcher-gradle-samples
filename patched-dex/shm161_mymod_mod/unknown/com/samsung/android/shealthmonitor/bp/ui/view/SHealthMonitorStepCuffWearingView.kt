package com.samsung.android.shealthmonitor.bp.ui.view


import android.content.Context
import android.support.v4.app.FragmentActivity
import android.view.View
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.manager.WearableBpManager
import com.samsung.android.shealthmonitor.bp.util.DialogUtils
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.Utils
import kotlinx.android.synthetic.main.shealth_monitor_first_step_instruction_cuff_wearing_view.view.*


open class SHealthMonitorStepCuffWearingView (context: Context, bodyId : Int = -1) : SHealthMonitorStepView(context){

    var root:View
    var mBackground : Int
    private val TAG = LOG.prefix + "SHealthMonitorStepOneCuffWearingView"
    var mMainNextClickListener : View.OnClickListener? = null

    init {
        val layout : Int = R.layout.shealth_monitor_first_step_instruction_cuff_wearing_view
        mBackground = R.drawable.cuff_img2

        root = View.inflate(context, layout, this)
        if (bodyId != -1) {
            mTitle.setText(bodyId)
        }

        mNext.setOnClickListener {
            goToNextState(mNext)
        }
    }

    override fun setAbNextListener(listener :  OnClickListener) {
        mMainNextClickListener = listener
    }

    override fun setAbPrevListener( listener :  OnClickListener) {
    }

    override fun getBackgroundDrawableId(): Int {
        return mBackground
    }

    override fun hasVideo() : Boolean {
        return false
    }

    override fun onBack() {
        cancelCalibration("")
    }

    private fun goToNextState(view : View) {
        view.isEnabled = false
        val reqId = WearableBpManager.getInstance().readyBpCalibration { result, _, _ ->
            if (root.isAttachedToWindow) {
                when (result) {
                    "SUCCESS_REQUEST" -> {
                        Utils.runOnUiThread {
                            LOG.d(TAG, "success readyBpCalibration")
                            mMainNextClickListener?.onClick(view)
                            view.isEnabled = true
                        }
                    }
                    "DISCONNECT_DEVICE" -> {
                        Utils.runOnUiThread {
                            view.isEnabled = true
                            val activity = context as FragmentActivity
                            DialogUtils.showNoConnectionDialog(activity)
                        }
                    }
                    else -> {
                        Utils.runOnUiThread {
                            Utils.showToast(context, "Fail to readyBpCalibration, Try again!", false, false)
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
            //mMainNextClickListener?.onClick(view)
            view.isEnabled = true
            val activity = context as FragmentActivity
            DialogUtils.showNoConnectionDialog(activity)
        }
    }
}

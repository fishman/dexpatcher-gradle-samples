package com.samsung.android.shealthmonitor.bp.ui.view

import android.content.Context
import android.support.v4.app.FragmentActivity
import android.view.View
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.manager.CalibrationState
import com.samsung.android.shealthmonitor.bp.manager.WearableBpManager
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorStepStartActivity
import com.samsung.android.shealthmonitor.bp.util.DialogUtils
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.Utils
import kotlinx.android.synthetic.main.shealth_monitor_second_step_ready_view.view.*

class SHealthMonitorStepStartView (context: Context, calibrationState : CalibrationState) : SHealthMonitorStepView(context) {

    var root:View
    var mCurrentState : CalibrationState
    var mConfirmTitle : String = ""
    var mMainNextClickListener : OnClickListener? = null
    private val TAG = LOG.prefix + "SHealthMonitorStepStartView"
    private val CONTINUE_POPUP_TAG = "CONTINUE_POPUP_TAG"
    init {

        mCurrentState = calibrationState
        val res : Int
        when (calibrationState) {
            CalibrationState.FIRST_DONE -> {
                res = R.layout.shealth_monitor_second_step_ready_view
                mConfirmTitle = context.getString(R.string.shealth_monitor_bp_take_the_ps_measurement, context.getString(R.string.common_tracker_next).decapitalize())
            }
            CalibrationState.SECOND_DONE -> {
                res = R.layout.shealth_monitor_third_step_ready_view
                mConfirmTitle = context.getString(R.string.shealth_monitor_bp_take_the_ps_measurement, context.getString(R.string.common_tracker_last).decapitalize())
            }
            else -> {
                res = R.layout.shealth_monitor_first_step_ready_view
            }
        }

        root = View.inflate(context, res, this)

        mNext.setOnClickListener {
            goToNextState(mNext)
        }
    }

    override fun setAbNextListener( listener :  OnClickListener) {
        mMainNextClickListener = listener
    }

    override fun setAbPrevListener( listener :  OnClickListener) {
    }

    override fun getBackgroundDrawableId(): Int {
        return R.color.step_start_top_color
    }

    override fun onBack() {
    }

    private fun goToNextState(view : View) {
        view.isEnabled = false
        val reqId = WearableBpManager.getInstance().sendPreCalibrationRequest { result, _, _ ->

            if (root.isAttachedToWindow) {
                when (result) {
                    "SUCCESS_REQUEST" -> {
                        Utils.runOnUiThread {
                            LOG.d(TAG, "success sendPreCalibrationRequest")
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
            //mMainNextClickListener?.onClick(view)
            view.isEnabled = true
            val activity = context as FragmentActivity
            DialogUtils.showNoConnectionDialog(activity)
        }
    }

    fun showConfirmDialog() {

        mNext.isEnabled = false
        val activity = context as SHealthMonitorStepStartActivity
        val builder = SAlertDlgFragment.Builder(mConfirmTitle, SAlertDlgFragment.TYPE_P_N_BUTTON)
        builder.setContent(R.layout.shealth_monitor_step_continue_dialog)
        builder.setPositiveButtonClickListener(R.string.shealth_monitor_yes) {
            goToNextState(mNext)
        }
        builder.setNegativeButtonClickListener(R.string.shealth_monitor_not_yet) {
            mNext.isEnabled = true
        }

        builder.setPositiveButtonTextColor(resources.getColor(R.color.dialog_color, null))
        builder.setNegativeButtonTextColor(resources.getColor(R.color.dialog_color, null))

        try {
            builder.build().show(activity.supportFragmentManager, CONTINUE_POPUP_TAG)
        } catch (e: Exception) {
            LOG.d(TAG, "showConfirmDialog(), error in confirm dialog build")
        }

    }
}

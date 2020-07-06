package com.samsung.android.shealthmonitor.bp.ui.view

import android.content.Context
import android.graphics.Color
import android.text.Spannable
import android.text.Spanned
import android.text.method.LinkMovementMethod
import android.text.style.ClickableSpan
import android.view.LayoutInflater
import android.view.View
import android.widget.LinearLayout
import android.widget.Toast
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.manager.StateManager
import com.samsung.android.shealthmonitor.bp.manager.WearableBpManager
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpCalibrateFirstPrerequisiteActivity
import com.samsung.android.shealthmonitor.helper.SharedPreferenceHelper
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.Utils
import kotlinx.android.synthetic.main.shealth_monitor_bp_calibrate_first_prerequisite_step3.view.*

class PrerequisiteStep3(activity: SHealthMonitorBpCalibrateFirstPrerequisiteActivity) : LinearLayout(activity) {
    private val DIALOG_TAG_MEDICAL_CONDITION_POPUP = "DIALOG_TAG_MEDICAL_CONDITION_POPUP"

    var mActivity: SHealthMonitorBpCalibrateFirstPrerequisiteActivity? = null

    init {
        this.initView(activity)
    }

    private fun initView(activity: SHealthMonitorBpCalibrateFirstPrerequisiteActivity) {
        mActivity = activity
        val inflater = mActivity?.getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
        inflater.inflate(R.layout.shealth_monitor_bp_calibrate_first_prerequisite_step3, this, true)
        mContinueButton.setOnClickListener {
            mContinueButton.isEnabled= false
            var count = StateManager.getInstance().currentState.getCalibrationCount()
            if (count == 0 || count == 1) {
                WearableBpManager.getInstance().sendTermsAndConditionRequest { result, seq_num, receiveBody ->
                    if (result == "SUCCESS_REQUEST") {
                        sendPreCalibrationRequest()
                    } else {
                        Toast.makeText(context, resources.getString(R.string.shealth_monitor_something_went_wrong_try_again), Toast.LENGTH_SHORT).show()
                        mContinueButton.isEnabled = true
                    }
                }
            } else {
                sendPreCalibrationRequest()
            }
        }

        var highlightText = context.getString(R.string.shealth_monitor_bp_these_medical_conditions)
        mMedicalConditions.text = context.getString(R.string.shealth_monitor_bp_do_not_use_if_you_have_ps, highlightText)
        var start = mMedicalConditions.text.indexOf(highlightText)
        val spannable = mMedicalConditions.text as Spannable
        spannable.setSpan(object : ClickableSpan() {
            override fun onClick(widget: View) {
                showMedicalConditionDialog()
            }
        }, start, start + highlightText.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        mMedicalConditions.movementMethod = LinkMovementMethod.getInstance()
    }

    private fun sendPreCalibrationRequest() {
        val reqId = WearableBpManager.getInstance().sendPreCalibrationRequest { result, _, _ ->
            if (result == "SUCCESS_REQUEST") {
                Utils.runOnUiThread {
                    LOG.d(TAG, "success sendPreCalibrationRequest")
                    launchNextScreen()
                }
            } else {
                Utils.runOnUiThread {
                    Utils.showToast(mActivity, "Fail to initiate, Try again!", false, false)
                    mContinueButton.isEnabled = true
                }
            }
        }
        if (reqId == -1) {
            Utils.showToast(mActivity, "Connected watch was not found!, UI test mode", true, false)
            launchNextScreen()
            mContinueButton.isEnabled = true
        }
    }

    fun showMedicalConditionDialog() {
        val fragment = mActivity!!.supportFragmentManager.findFragmentByTag(DIALOG_TAG_MEDICAL_CONDITION_POPUP)
        if (fragment != null && fragment.isVisible) {
            LOG.d(TAG, "showMedicalConditionDialog is already visible")
            return
        }

        if (!mActivity!!.isFinishing && !mActivity!!.isDestroyed) {
            val builder = SAlertDlgFragment.Builder(R.string.shealth_monitor_bp_medical_conditions_include,
                    SAlertDlgFragment.TYPE_P_BUTTON)

            builder.setContent(R.layout.shealth_monitor_bp_medical_conditions_dialog_content)
            builder.setPositiveButtonTextColor(Color.parseColor("#5280f2"))
            builder.setPositiveButtonClickListener(R.string.baseui_button_ok, {})

            try {
                if (mActivity!!.isForeground) builder.build().show(mActivity!!.supportFragmentManager, DIALOG_TAG_MEDICAL_CONDITION_POPUP)
            } catch (e: IllegalStateException) {
                LOG.e(TAG, e.toString())
            }
        }
    }

    private fun launchNextScreen(){
        SharedPreferenceHelper.setIntroductionDisplayed(true)
        Utils.startActivityByClassName(mActivity, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorStepStartActivity")
    }

    companion object {
        private val TAG = LOG.prefix + "PrerequisiteStep3"
    }
}

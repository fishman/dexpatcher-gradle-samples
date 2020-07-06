package com.samsung.android.shealthmonitor.home.ui.activity

import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.view.MenuItem
import com.samsung.android.shealthmonitor.controller.ControlManager
import com.samsung.android.shealthmonitor.helper.SharedPreferenceHelper
import com.samsung.android.shealthmonitor.home.R
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_notification_activity.*


class SHealthMonitorNotificationActivity : BaseAppCompatActivity() {

    public override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        LOG.i(TAG, "onCreate() - Start")

        setContentView(R.layout.shealth_monitor_notification_activity)
        initView()
        initActionBar()
        LOG.i(TAG, "onCreate() - End")
    }


    private fun initView() {
        mNotificationSwitch.isChecked =SharedPreferenceHelper.isNotificationEnabled()
        mCalibrationReminderSwitch.isChecked = SharedPreferenceHelper.isCalibrationReminderEnabled()
        mCalibrationReminderSwitch.isEnabled = SharedPreferenceHelper.isNotificationEnabled()
        updateNotificationSwitchColor(SharedPreferenceHelper.isNotificationEnabled())

        mNotificationSwitch.setOnCheckedChangeListener { _, isChecked ->
            SharedPreferenceHelper.setNotificationSetting(isChecked)
            updateNotificationSwitchColor(isChecked)
            mCalibrationReminderSwitch.isEnabled = isChecked
            ControlManager.getInstance().setEnableNotification(isChecked)
        }

        mCalibrationReminderSwitch.setOnCheckedChangeListener { _, isChecked ->
            SharedPreferenceHelper.setCalibrationReminderSetting(isChecked)
            ControlManager.getInstance().setEnableNotification(ControlManager.SUPPORT_CONTROLLER_BP, isChecked)

        }
    }

    private fun updateNotificationSwitchColor(isChecked: Boolean){
        if(isChecked) {
            mNotificationSwitch.setTrackResource(R.drawable.switch_track_global_on)
            mNotificationSwitch.setThumbResource(R.drawable.switch_thumb_global_on)
            mNotificationSwitchContainer.background =  resources.getDrawable(R.drawable.common_background_blue, null)
            mNotificationSwitchText.setTextColor(Color.WHITE)
        } else {
            mNotificationSwitch.setTrackResource(R.drawable.switch_track_selector)
            mNotificationSwitch.setThumbResource(R.drawable.switch_thumb_selector)
            mNotificationSwitchContainer.background =  resources.getDrawable(R.drawable.common_background , null)
            mNotificationSwitchText.setTextColor(Color.BLACK)
        }
    }

    private fun updateView () {

    }

    private fun initActionBar() {

        if (supportActionBar != null) {
            supportActionBar!!.setDisplayShowCustomEnabled(false)
            supportActionBar!!.title = ""
        }
    }

    private fun startActivityByClassName(packageName: String, className: String, launchFlag: Int) {
        try {
            val activity = Class.forName("com.samsung.android.shealthmonitor.$packageName.ui.activity.$className")
            val intent = Intent(this, activity)
            intent.flags = launchFlag //Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
            startActivity(intent)
        } catch (e: ClassNotFoundException) {
            LOG.e(TAG, " Exception : class not found = $e")
        }

    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
        }

        return super.onOptionsItemSelected(item)
    }

    override fun onResume() {
        super.onResume()
        LOG.i(TAG, "onResume() - Start")
        LOG.i(TAG, "onResume() - End")
    }

    companion object {
        private val TAG = LOG.prefix + "SHealthMonitorNotificationActivity"
    }
}
package com.samsung.android.shealthmonitor.home.ui.activity

import android.content.Intent
import android.os.Bundle
import android.view.MenuItem
import com.samsung.android.shealthmonitor.controller.ControlManager
import com.samsung.android.shealthmonitor.helper.ContextHolder
import com.samsung.android.shealthmonitor.home.R
import com.samsung.android.shealthmonitor.home.ui.view.AboutBpView
import com.samsung.android.shealthmonitor.home.util.SHealthMonitorPolicyViewer
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.Utils
import kotlinx.android.synthetic.main.shealth_monitor_about_activity.*


class SHealthMonitorAboutActivity : BaseAppCompatActivity() {

    public override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        LOG.i(TAG, "onCreate() - Start")

        setContentView(R.layout.shealth_monitor_about_activity)
        initView()
        initActionBar()
        LOG.i(TAG, "onCreate() - End")
    }


    private fun initView() {
        var versionFormat = ContextHolder.getContext().resources?.getString(R.string.home_about_version_s)
        mMainAppVersion.text = String.format(versionFormat.toString(), Utils.getMobileAppVersionName())

        mTermOfUse.setOnClickListener {
            SHealthMonitorPolicyViewer.showTncPolicy()
        }
        mPrivacyPolicy.setOnClickListener {
            SHealthMonitorPolicyViewer.showPrivacyPolicy()
        }
        mOPenSource.setOnClickListener{
            startActivityByClassName("home",
                    "SHealthMonitorOpenSourceLicensesActivity",
                    Intent.FLAG_ACTIVITY_CLEAR_TOP)
        }

        if( ControlManager.getInstance().getControllerInterface(ControlManager.SUPPORT_CONTROLLER_BP) != null ) {
            mAppListContainer.addView(AboutBpView(this))
        }

        if( ControlManager.getInstance().getControllerInterface(ControlManager.SUPPORT_CONTROLLER_ECG) != null  ) {

        }

        updateView()
    }

    private fun updateView () {
        var icon = packageManager.getApplicationIcon(ContextHolder.getContext().applicationInfo)
        mAppIcon.setImageDrawable(icon)
    }

    private fun initActionBar() {
        supportActionBar?.setDisplayShowCustomEnabled(false)
        supportActionBar?.title = ""
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
        private val TAG = LOG.prefix + "SHealthMonitorAboutActivity"
    }
}
package com.samsung.android.shealthmonitor.home.ui.activity

import android.os.Bundle
import android.view.MenuItem
import com.samsung.android.shealthmonitor.dataroom.manager.SamsungHealthDataSyncManager
import com.samsung.android.shealthmonitor.home.R
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_data_permission_activity.*


class SHealthMonitorDataPermissionActivity : BaseAppCompatActivity() {

    public override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        LOG.i(TAG, "onCreate() - Start")

        setContentView(R.layout.shealth_monitor_data_permission_activity)
        initView()
        initActionBar()
        LOG.i(TAG, "onCreate() - End")
    }


    private fun initView() {
        mPermissionContainer.setOnClickListener {
            launchPermissionScreen()
        }
        updateView()
    }

    private fun updateView () {

    }

    private fun initActionBar() {

        if (supportActionBar != null) {
            supportActionBar!!.setDisplayShowCustomEnabled(false)
            supportActionBar!!.title = ""
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
        private val TAG = LOG.prefix + "SHealthMonitorDataPermissionActivity"
    }

    private fun launchPermissionScreen() {
        SamsungHealthDataSyncManager.getInstance().showPermissionForSdkStore(this,
                object : SamsungHealthDataSyncManager.SyncResultListener {
                    override fun onResult(hasAllPermissions: Boolean, hasDefaultPermission: Boolean) {
                        if (hasAllPermissions) {
                            LOG.i(TAG, "HealthSdkDataManager request() - Success")
                        } else {
                            LOG.i(TAG, "HealthSdkDataManager request() - Failed")
                        }

                        if (hasDefaultPermission) {
                            val profile = SamsungHealthDataSyncManager.getInstance().getProfile()
                            if (profile != null) {
                                LOG.d(TAG, "Profile " + profile.userName)
                                LOG.d(TAG, "Profile " + profile.gender)
                                LOG.d(TAG, "Profile " + profile.birthDate)
                            } else {
                                LOG.d(TAG, "Profile is null ")
                            }

                        }
                    }
                })
    }
}
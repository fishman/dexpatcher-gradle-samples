package com.samsung.android.shealthmonitor.home.ui.activity

import android.os.Bundle
import android.view.MenuItem
import com.samsung.android.shealthmonitor.home.R
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity

class SHealthMonitorOpenSourceLicensesActivity : BaseAppCompatActivity() {

    public override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.shealth_monitor_open_source_license_activity)
        initActionBar()
    }

    private fun initActionBar() {
        if (supportActionBar != null) {
            supportActionBar!!.setDisplayShowCustomEnabled(false)
            supportActionBar!!.title = getString(R.string.home_about_open_source_licenses)
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
        }

        return super.onOptionsItemSelected(item)
    }
}
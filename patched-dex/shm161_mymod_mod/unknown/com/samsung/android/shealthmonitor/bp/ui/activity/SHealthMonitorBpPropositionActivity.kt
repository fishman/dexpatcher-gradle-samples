package com.samsung.android.shealthmonitor.bp.ui.activity

import android.content.Intent
import android.os.Bundle
import android.view.MenuItem
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.ui.activity.BaseActivity
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_bp_proposition_activity.*

class SHealthMonitorBpPropositionActivity : BaseActivity() {

    private val TAG = LOG.prefix + "SHealthMonitorBpPropositionActivity"

    public override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.shealth_monitor_bp_proposition_activity)
        initView()
    }

    fun initView() {
        mHowToUseButton.setOnClickListener{
            val activity = Class.forName("com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpHowToUseActivity")
            val intent = Intent(this, activity)
            intent.flags = Intent.FLAG_ACTIVITY_CLEAR_TOP
            startActivity(intent)
        }
    }

    override fun onBackPressed() {
        finish()
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
        }
        return super.onOptionsItemSelected(item)
    }
}

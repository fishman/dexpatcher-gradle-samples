package com.samsung.android.shealthmonitor.bp.ui.activity

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.MenuItem
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_how_to_use_activity.*

class SHealthMonitorBpHowToUseActivity : BaseAppCompatActivity() {

    private val TAG = LOG.prefix + "SHealthMonitorHowToUseActivity"

    public override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.shealth_monitor_how_to_use_activity)
        initView()
    }

    fun initView() {
        super.setTitle(R.string.how_to_use)
        supportActionBar?.setDisplayShowTitleEnabled(true)

        mHowtoUseProfile.setOnClickListener {
            startActivity(this, SHealthMonitorBpHowToUseDetailActivity.HOW_TO_USE_TYPE_PROFILE_SETUP)
        }

        mHowtoUseOnBoarding.setOnClickListener {
            startActivity(this, SHealthMonitorBpHowToUseDetailActivity.HOW_TO_USE_TYPE_ONBOARDING)
        }

        mHowtoUseMeasuring.setOnClickListener {
            startActivity(this, SHealthMonitorBpHowToUseDetailActivity.HOW_TO_USE_TYPE_MEASURING_BP)
        }

        mHowtoUseBpResult.setOnClickListener {
            startActivity(this, SHealthMonitorBpHowToUseDetailActivity.HOW_TO_USE_TYPE_BP_RESULTS)
        }
    }

    companion object {
        fun startActivity(context : Context, type: Int) {
            val activity = Class.forName("com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpHowToUseDetailActivity")
            val intent = Intent(context, activity)
            intent.putExtra(SHealthMonitorBpHowToUseDetailActivity.HOW_TO_USE_TYPE, type)
            intent.flags = Intent.FLAG_ACTIVITY_CLEAR_TOP
            context.startActivity(intent)
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

package com.samsung.android.shealthmonitor.bp.ui.activity

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.support.v4.text.HtmlCompat
import android.view.MenuItem
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.util.CommonConstants
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_how_to_use_bp_results_activity.*
import kotlinx.android.synthetic.main.shealth_monitor_how_to_use_calibrating_activity.*
import kotlinx.android.synthetic.main.shealth_monitor_how_to_use_measuring_bp_activity.*
import kotlinx.android.synthetic.main.shealth_monitor_how_to_use_profile_setup_activity.*


class SHealthMonitorBpHowToUseDetailActivity : BaseAppCompatActivity() {

    private val TAG = LOG.prefix + "SHealthMonitorBpHowToUseDetailActivity"

    companion object {
        val HOW_TO_USE_TYPE = "HOW_TO_USE_TYPE"
        val HOW_TO_USE_TYPE_PROFILE_SETUP = 0
        val HOW_TO_USE_TYPE_ONBOARDING = 1
        val HOW_TO_USE_TYPE_MEASURING_BP = 2
        val HOW_TO_USE_TYPE_BP_RESULTS = 3
        //remove HOW_TO_USE_TYPE_DATA_SYNC is not used
    }

    public override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        supportActionBar?.setDisplayShowTitleEnabled(true)

        var resouceId = R.layout.shealth_monitor_how_to_use_profile_setup_activity
        val intent = intent
        if (intent != null) {
            val resouceType = intent.getIntExtra(HOW_TO_USE_TYPE, 0)

            when (resouceType) {
                (HOW_TO_USE_TYPE_PROFILE_SETUP) -> {
                    resouceId = R.layout.shealth_monitor_how_to_use_profile_setup_activity
                    super.setTitle(R.string.how_to_use_setting_up_bp_app)
                }
                (HOW_TO_USE_TYPE_ONBOARDING) -> {
                    resouceId = R.layout.shealth_monitor_how_to_use_calibrating_activity
                    super.setTitle(R.string.how_to_use_calibrating_your_galaxy_watch)
                }
                (HOW_TO_USE_TYPE_MEASURING_BP) -> {
                    resouceId = R.layout.shealth_monitor_how_to_use_measuring_bp_activity
                    super.setTitle(R.string.how_to_use_measuring_bp)
                }
                (HOW_TO_USE_TYPE_BP_RESULTS) -> {
                    resouceId = R.layout.shealth_monitor_how_to_use_bp_results_activity

                    super.setTitle(R.string.how_to_use_blood_pressure_results)
                }

            }
            setContentView(resouceId)

            when (resouceType) {
                (HOW_TO_USE_TYPE_PROFILE_SETUP) -> {
                    step_1_1_link_layout.setOnClickListener {
                        val intent = Intent(Intent.ACTION_VIEW, Uri.parse(CommonConstants.URL_GALAXY_WATCH_SITE))
                        startActivity(intent)
                    }
                }
                (HOW_TO_USE_TYPE_ONBOARDING) -> {
                    val text = resources.getString(R.string.how_to_use_onboarding_note, resources.getString(R.string.shealth_monitor_bp_history_recalibrate_title))
                    note_text.text = HtmlCompat.fromHtml(text, HtmlCompat.FROM_HTML_MODE_LEGACY)
                }
                (HOW_TO_USE_TYPE_BP_RESULTS) -> {
                    val text = resources.getString(R.string.how_to_use_bp_result_note)
                    bp_result_note_text.text = HtmlCompat.fromHtml(text, HtmlCompat.FROM_HTML_MODE_LEGACY)
                }
                (HOW_TO_USE_TYPE_MEASURING_BP) -> {
                    val text = resources.getString(R.string.how_to_use_measuring_bp_3_1)
                    how_to_use_measuring_bp_3_1.text = HtmlCompat.fromHtml(text, HtmlCompat.FROM_HTML_MODE_LEGACY)
                }
            }

        } else {
            setContentView(resouceId)
        }



    }

    override fun onBackPressed() {
        finish()
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
            return true
        }
        return super.onOptionsItemSelected(item)
    }
}

package com.samsung.android.shealthmonitor.bp.ui.activity

import android.content.Intent
import android.os.Bundle
import android.view.Menu
import android.view.MenuItem
import android.view.View
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.ui.view.PrerequisiteStep1
import com.samsung.android.shealthmonitor.bp.ui.view.PrerequisiteStep2
import com.samsung.android.shealthmonitor.bp.ui.view.PrerequisiteStep3
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_bp_calibrate_first_prerequisite.*

class SHealthMonitorBpCalibrateFirstPrerequisiteActivity : BaseAppCompatActivity() {
    private val TAG = LOG.prefix + "SHealthMonitorBpCalibrateFirstPrerequisiteActivity"

    companion object {
        const val BP_CALIBRATE_FIRST_PREREQUISITE_STEP_SCENARIO = "BP_CALIBRATE_FIRST_PREREQUISITE_STEP_SCENARIO"
    }
    var mCurrentStep = 0
    var mViewList = ArrayList<View>()
    var mScenario = 123

    public override fun onCreate(savedInstanceState: Bundle?) {
        setSetDefaultMenuColor(true)
        super.onCreate(savedInstanceState)
        setContentView(R.layout.shealth_monitor_bp_calibrate_first_prerequisite)

        val intent = intent
        if (intent != null) {
            if (intent.hasExtra(BP_CALIBRATE_FIRST_PREREQUISITE_STEP_SCENARIO)) {
                mScenario = intent.getIntExtra(BP_CALIBRATE_FIRST_PREREQUISITE_STEP_SCENARIO,-1)
            }
        }
        initActionBar()
    }

    private fun initView() {
        setViewList(mScenario)
        setView(mCurrentStep)
//        mContinueButton.setOnClickListener { moveNext() }

    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.shealth_monitor_one_menu_setting, menu)
        return super.onCreateOptionsMenu(menu)
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            movePrevious()
            return true
        } else if (item.itemId == R.id.introduction_menu) {
            startActivityByClassName("bp", "SHealthMonitorBpHowToUseActivity",
                    Intent.FLAG_ACTIVITY_CLEAR_TOP)
        }
        return super.onOptionsItemSelected(item)
    }

    override fun onBackPressed() {
        movePrevious()
    }

    override fun onResume() {
        super.onResume()
        initView()
        LOG.i(TAG, "onResume() - Start")
        LOG.i(TAG, "onResume() - End")
    }

    private fun movePrevious() {
        if ( mCurrentStep == 0 ) {
            finish()
        } else {
            mCurrentStep--
            setView(mCurrentStep)
        }
    }

    fun moveNext() {
        if ( mViewList.size > mCurrentStep + 1) {
            mCurrentStep++
            setView(mCurrentStep)
        }
    }

    private fun setView(position: Int) {
        LOG.i(TAG, " setView :$position")
        mContentView.removeAllViews()
        mContentView.addView(mViewList[position])
    }

    private fun setViewList(type: Int) {
        var case = type
        if ( case <= 0) {
            case = 123
        }
        val scenario = case.toString().split("")

        mViewList.clear()
        for ( index in scenario) {
            when (index) {
                "1" -> {
                    mViewList.add(PrerequisiteStep1(this))
                }
                "2" -> {
                    mViewList.add(PrerequisiteStep2(this))
                }
                "3" -> {
                    mViewList.add(PrerequisiteStep3(this))
                }
            }
        }
    }

    private fun initActionBar() {
        supportActionBar?.setDisplayShowCustomEnabled(false)
        supportActionBar?.elevation = 0f
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
}

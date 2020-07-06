package com.samsung.android.shealthmonitor.bp.ui.view

import android.content.Context
import android.graphics.Color
import android.view.LayoutInflater
import android.view.View
import android.widget.LinearLayout
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpCalibrateFirstPrerequisiteActivity
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_bp_calibrate_first_prerequisite_step1.view.*

class PrerequisiteStep2(activity: SHealthMonitorBpCalibrateFirstPrerequisiteActivity) : LinearLayout(activity) {

    var mActivity: SHealthMonitorBpCalibrateFirstPrerequisiteActivity? = null

    init {
        this.initView(activity)
    }

    private fun initView(activity: SHealthMonitorBpCalibrateFirstPrerequisiteActivity) {
        mActivity = activity
        val inflater = mActivity?.getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
        inflater.inflate(R.layout.shealth_monitor_bp_calibrate_first_prerequisite_step2, this, true)
        mNavigationLayout.mLeftButton.visibility = View.GONE
        mNavigationLayout.mRightButton.text = activity.getString(R.string.common_tracker_next)
        mNavigationLayout.mRightButton.setTextColor(Color.parseColor("#5280f2"))
        mNavigationLayout.mRightButton.setOnClickListener{ mActivity!!.moveNext()}
    }

    companion object {
        private val TAG = LOG.prefix + "PrerequisiteStep2"
    }
}

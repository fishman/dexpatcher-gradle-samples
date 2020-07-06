package com.samsung.android.shealthmonitor.bp.ui.card

import android.content.Context
import android.view.View
import android.widget.LinearLayout
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_bp_calibration_expired_top_card_layout.view.*


class SHealthMonitorBpReminderWithColorBtnTopCard constructor(context: Context) : LinearLayout(context) {

    private val TAG = LOG.prefix + "SHealthMonitorBpReminderWithColorBtnTopCard"

    init {
        View.inflate(context, R.layout.shealth_monitor_bp_calibration_expired_top_card_layout, this)
        setContent()
    }

    fun setContent() {
        setIcon(R.drawable.calibration_reminder_icon)
        setTitle(R.string.shealth_monitor_calibration_reminder)
        setDescription(resources.getString(R.string.shealth_monitor_bp_expired_calibration_desc))
        setButtonText(R.string.shealth_monitor_bp_card_calibrate_watch)
    }

    fun setContent(cal: Int, day : Int) {
        setIcon(R.drawable.calibration_reminder_icon)
        setTitle(R.string.shealth_monitor_bp_card_calibrate_continue)
        setRemainDays(cal, day)
        setButtonText(R.string.shealth_monitor_bp_card_calibrate_continue)
    }

    fun setRemainDays(cal: Int, day: Int) {
        when (day) {
            1 -> setDescription(resources.getString(R.string.shealth_monitor_bp_expired_continue_calibration_desc_1_day, cal))
            else -> setDescription(resources.getString(R.string.shealth_monitor_bp_expired_continue_calibration_desc_n_days, cal, day))
        }
    }

    fun setIcon(icon : Int) {
        mIcon?.setImageResource(icon)
    }

    fun setTitle(title : Int) {
        mTitle?.text = resources.getText(title)
    }

    fun setDescription(description : String) {
        mDescription?.text = description
    }

    fun setButtonText(buttonName : Int) {
        mColorButton?.text = resources.getText(buttonName)
    }

    fun setButtonOnClickListener(listener : OnClickListener) {
        mColorButton?.setOnClickListener(listener)
    }
}

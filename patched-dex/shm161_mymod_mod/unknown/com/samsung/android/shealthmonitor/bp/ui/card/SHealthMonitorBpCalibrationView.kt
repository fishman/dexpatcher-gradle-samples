package com.samsung.android.shealthmonitor.bp.ui.card

import android.content.Context
import android.view.View
import android.widget.LinearLayout
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_bp_calibration_view.view.*


class SHealthMonitorBpCalibrationView constructor(context: Context, type: Int, listener: OnClickListener) : LinearLayout(context) {

    private val TAG = LOG.prefix + "SHealthMonitorBpCalibrationView"

    private var mStep: Int = 0;

    init {
        View.inflate(context, R.layout.shealth_monitor_bp_calibration_view, this)
        setContent(type)
        setButtonOnClickListener(listener)
    }

    fun setCardTouchListener(listener: OnTouchListener) {
        proto_type_card_inner.setOnTouchListener(listener)
    }

    fun setContent(step: Int) {
        mStep = step
        when (step) {
            0, 1 -> {
                setImage(R.drawable.watch_2)
                setDescription(resources.getString(R.string.shealth_monitor_bp_card_calibration_first))
                setButtonText(resources.getString(R.string.shealth_monitor_bp_card_calibrate_watch))
            }
            2 -> {
                setImage(R.mipmap.watch_2_1_finsihed)
                setDescription(resources.getString(R.string.shealth_monitor_bp_card_calibration_second))
                setButtonText(resources.getString(R.string.shealth_monitor_bp_card_calibrate_continue))
            }
            3 -> {
                setImage(R.mipmap.watch_2_2_finsihed)
                setDescription(resources.getString(R.string.shealth_monitor_bp_card_calibration_third))
                setButtonText(resources.getString(R.string.shealth_monitor_bp_card_calibrate_continue))
            }
        }
    }

    fun setImage(icon : Int) {
        mImage?.setImageResource(icon)
    }

    fun setButtonText(title : String) {
        mButton?.text = title
    }

    fun setDescription(description : String) {
        mBodyText?.text = description
    }

    fun setButtonOnClickListener(listener: OnClickListener) {
        listener. let { mButton?.setOnClickListener(it) }
    }

    fun getCurrentStep(): Int {
        return mStep
    }
}

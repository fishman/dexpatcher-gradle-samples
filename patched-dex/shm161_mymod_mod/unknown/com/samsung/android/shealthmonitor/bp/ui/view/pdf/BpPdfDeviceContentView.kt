package com.samsung.android.shealthmonitor.bp.ui.view.pdf

import android.content.Context
import android.view.View
import android.widget.LinearLayout
import com.samsung.android.shealthmonitor.bp.R
import kotlinx.android.synthetic.main.shealth_monitor_bp_pdf_device_table_view.view.*


class BpPdfDeviceContentView constructor(context: Context, includeDateOfUse : Boolean) : LinearLayout (context) {

    var root: View
    init {
        var res: Int = R.layout.shealth_monitor_bp_pdf_device_content_view
        root = View.inflate(context, res, this)

        if (includeDateOfUse) {
            mDataOfUseLabel.visibility = View.VISIBLE
            mDeviceNameLabel.layoutParams.width = getContext().resources.getDimension(R.dimen.pdf_row_device_name_width_for_date_of_use).toInt()
            mCalibrationDateLabel.layoutParams.width = getContext().resources.getDimension(R.dimen.pdf_row_last_calibration_date_width_for_date_of_use).toInt()
        }
    }
}
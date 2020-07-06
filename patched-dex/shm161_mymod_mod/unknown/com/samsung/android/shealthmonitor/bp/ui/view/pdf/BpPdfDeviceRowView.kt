package com.samsung.android.shealthmonitor.bp.ui.view.pdf

import android.content.Context
import android.view.View
import android.widget.TableRow

import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.helper.BpDeviceInfo
import com.samsung.android.shealthmonitor.helper.pdf.PdfConstants
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_bp_pdf_device_row.view.*

class BpPdfDeviceRowView (context: Context, bpDeviceInfo : BpDeviceInfo, includemDateOfUse : Boolean) : TableRow(context) {

    var root: View
    init {

        var res: Int = R.layout.shealth_monitor_bp_pdf_device_row
        root = View.inflate(context, res, this)

        if (includemDateOfUse) {
            mDateOfUse.visibility = View.VISIBLE
            mDateOfUse.text = bpDeviceInfo.mDayOfUse
            mDeviceName.layoutParams.width = getContext().resources.getDimension(R.dimen.pdf_row_device_name_width_for_date_of_use).toInt()
            mLastCalibrationDate.layoutParams.width = getContext().resources.getDimension(R.dimen.pdf_row_last_calibration_date_width_for_date_of_use).toInt()
        }

        mDeviceName.text = bpDeviceInfo.mDeviceNickname
        mLastCalibrationDate.text = bpDeviceInfo.mLastCalibrationDate
        LOG.d(PdfConstants.TAG, "mDeviceName " + bpDeviceInfo.mDeviceNickname)
        LOG.d(PdfConstants.TAG, "mLastCalibrationDate " + bpDeviceInfo.mLastCalibrationDate)

        this.minimumHeight = getContext().resources.getDimension(R.dimen.pdf_row_min_height).toInt()

    }
}

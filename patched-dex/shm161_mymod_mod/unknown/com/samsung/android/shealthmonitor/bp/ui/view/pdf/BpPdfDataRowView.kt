package com.samsung.android.shealthmonitor.bp.ui.view.pdf

import android.content.Context
import android.view.View
import android.widget.TableRow

import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.helper.BpData
import kotlinx.android.synthetic.main.shealth_monitor_bp_pdf_data_row.view.*


class BpPdfDataRowView (context: Context, bpInfo : BpData) : TableRow(context) {

    var root: View
    init {

        var res: Int = R.layout.shealth_monitor_bp_pdf_data_row
        root = View.inflate(context, res, this)


        mDate.text = bpInfo.mDate
        mTime.text = bpInfo.mTime
        mSystolic.text = bpInfo.mSystolic.toString()
        mDiastolic.text = bpInfo.mDiastolic.toString()
        mPulse.text = bpInfo.mPulseRate.toString()
        mNotes.text = bpInfo.mNotes

        this.minimumHeight = getContext().resources.getDimension(R.dimen.pdf_row_min_height).toInt()

    }
}

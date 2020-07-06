package com.samsung.android.shealthmonitor.bp.ui.view.pdf

import android.content.Context
import android.view.View
import android.widget.LinearLayout
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.helper.BpPdfInfo
import kotlinx.android.synthetic.main.shealth_monitor_bp_pdf_top_content_view.view.*


class BpPdfTopContentView constructor(context: Context, bpPdfInfo : BpPdfInfo) : LinearLayout (context) {

    var root: View
    init {

        var res: Int = R.layout.shealth_monitor_bp_pdf_top_content_view
        root = View.inflate(context, res, this)

        mName.text = bpPdfInfo.mName
        mBirthDay.text = bpPdfInfo.mBirthDay
        mGender.text = bpPdfInfo.mGender
        mPeriodDate.text = bpPdfInfo.mPeriodDateStr
    }
}
package com.samsung.android.shealthmonitor.bp.ui.view.pdf

import android.content.Context
import android.view.View
import android.widget.LinearLayout
import com.samsung.android.shealthmonitor.bp.R


class BpPdfDataTableView constructor(context: Context) : LinearLayout (context) {

    var root: View
    init {
        var res: Int = R.layout.shealth_monitor_bp_pdf_data_table_view
        root = View.inflate(context, res, this)
    }
}
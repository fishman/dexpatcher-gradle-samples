package com.samsung.android.shealthmonitor.bp.ui.view.pdf

import android.content.Context
import android.view.View
import android.widget.LinearLayout
import android.widget.RelativeLayout
import com.samsung.android.shealthmonitor.bp.R



open class BpPdfPageView constructor(context: Context, resId : Int, paddingTop : Int) : LinearLayout (context) {

    var root: View
    init {

        var res: Int = resId
        root = View.inflate(context, res, this)
        this.orientation = VERTICAL
        root.layoutParams = LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT)
        layoutParams = LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT)

        if (paddingTop > 0) {
            this.setPadding(0, paddingTop, 0, 0)
        }
    }
}
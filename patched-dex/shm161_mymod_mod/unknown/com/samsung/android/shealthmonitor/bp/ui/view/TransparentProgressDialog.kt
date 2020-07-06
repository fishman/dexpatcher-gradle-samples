package com.samsung.android.shealthmonitor.bp.ui.view

import android.app.Dialog
import android.content.Context
import android.view.Gravity
import android.view.Window
import com.samsung.android.shealthmonitor.bp.R

class TransparentProgressDialog(context : Context) : Dialog(context, R.style.TransparentProgressDialog) {

    init {
        val wlmp = getWindow()?.getAttributes()
        wlmp?.gravity = Gravity.CENTER_HORIZONTAL
        getWindow()?.setAttributes(wlmp)
        setTitle(null)
        setCancelable(false)
        setOnCancelListener(null)
        requestWindowFeature(Window.FEATURE_NO_TITLE)
        setContentView(R.layout.progress_dialog)
    }

    open override fun show() {
        super.show()

    }
}
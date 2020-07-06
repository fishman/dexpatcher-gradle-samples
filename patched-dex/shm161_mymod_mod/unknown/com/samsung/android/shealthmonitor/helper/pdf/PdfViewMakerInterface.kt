package com.samsung.android.shealthmonitor.helper.pdf

import android.content.Context
import android.view.View

interface PdfViewMakerInterface {
    fun makeContentViews(context: Context, startTime : Long) :  List<View>?
}
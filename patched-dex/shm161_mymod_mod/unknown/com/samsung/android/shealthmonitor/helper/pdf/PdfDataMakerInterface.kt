package com.samsung.android.shealthmonitor.helper.pdf

import android.content.Context

interface PdfDataMakerInterface <T> {
    fun makePdfDataForDisplay(context: Context, startTime : Long) : T
}
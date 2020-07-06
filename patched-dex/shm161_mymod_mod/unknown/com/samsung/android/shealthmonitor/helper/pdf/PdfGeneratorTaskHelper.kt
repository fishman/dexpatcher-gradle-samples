package com.samsung.android.shealthmonitor.helper.pdf

import android.content.Context
import android.graphics.Paint
import android.graphics.pdf.PdfDocument
import android.os.AsyncTask
import android.view.View
import com.samsung.android.shealthmonitor.util.LOG
import java.io.File
import java.io.FileOutputStream
import java.io.OutputStream
import java.lang.ref.WeakReference

object PdfConstants {
    val PAGE_WIDTH = 612// 1/72 inch, us letter size
    val PAGE_HEIGHT = 792 // 1/72 pixel, us letter size
    val BOTTOM_MARGIN_SIZE = 84 //pixel
    val PAGE_TOP_PADDING_SIZE = 36 //pixel
    val PAGE_ECG_LR_PADDING_SIZE = 40 //pixel
    val PAGE_EXTRA_PADDING_SIZE = 52 //pixel
    val TAG = LOG.prefix + "PdfGenHelper"
}

interface PdfResultListener {
    fun pdfResult(result: Boolean, file : File, exception: Exception?)
}

class PdqGeneratorTaskHelper(context : Context, startTime: Long, file: File, maker : PdfViewMakerInterface, listener: PdfResultListener, randScape : Boolean = false) : AsyncTask<Void, Void, Boolean>() {

    val mWeakRefContext : WeakReference<Context> =  WeakReference(context)
    var mStartTime: Long = startTime
    var mFile: File = file
    var mListener: PdfResultListener = listener
    var mException: Exception? = null
    var mPdfViewMaker = maker
    var mLandScape = randScape
    val TAG = PdfConstants.TAG

    init {

    }

    override fun doInBackground(vararg params: Void?): Boolean {

        val context = mWeakRefContext.get()
        if (context == null) {
            LOG.e(TAG, "Context is null")
            return false
        }

        var success: Boolean
        var outputStream : FileOutputStream? = null
        try {
            val contentViews = mPdfViewMaker.makeContentViews(context, mStartTime)
            LOG.d(TAG, "generateContentViews done")

            val pdfFile = mFile
            outputStream = pdfFile.outputStream()
            makePdf(outputStream, contentViews!!, mLandScape)
            success = true
        } catch (exception: Exception) {
            mException = exception
            LOG.e(TAG, exception.message)
            success = false
        } finally {
            if (outputStream != null) {
                outputStream.close()
            }
        }
        return success
    }

    override fun onPreExecute() {
        super.onPreExecute()
    }

    override fun onPostExecute(result: Boolean) {
        super.onPostExecute(result)
        if (result) {
            //Send Success callback.
            mListener.pdfResult(true, mFile,null)
        } else {
            //Send Error callback.
            mListener.pdfResult(false, mFile, mException)
        }
    }

    private fun makePdf(outputStream : OutputStream, contentViews : List<View>, landscape : Boolean) {

        val document = PdfDocument()

        var pageCounter = 1
        for (contentView in contentViews) {
            // crate a page description, PDF pages
            val pageInfo : PdfDocument.PageInfo
            if (landscape) {
                pageInfo = PdfDocument.PageInfo.Builder(PdfConstants.PAGE_HEIGHT, PdfConstants.PAGE_WIDTH, pageCounter++).create()
            } else {
                pageInfo = PdfDocument.PageInfo.Builder(PdfConstants.PAGE_WIDTH, PdfConstants.PAGE_HEIGHT, pageCounter++).create()
            }

            // start a page
            val page = document.startPage(pageInfo)

            val measureWidth = View.MeasureSpec.makeMeasureSpec(page.canvas.width, View.MeasureSpec.EXACTLY)
            val measuredHeight = View.MeasureSpec.makeMeasureSpec(page.canvas.height, View.MeasureSpec.EXACTLY)
            contentView.measure(measureWidth, measuredHeight)
            contentView.layout(0, 0, page.canvas.width, page.canvas.height)
            contentView.draw(page.canvas)

            // finish the page
            document.finishPage(page)
        }

        // write the document content
        document.writeTo(outputStream)
        // close the document
        document.close()
    }
}
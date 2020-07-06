package com.samsung.android.shealthmonitor.bp.helper

import android.content.Context
import android.view.View
import android.view.ViewGroup
import com.samsung.android.shealthmonitor.bp.ui.view.pdf.*
import com.samsung.android.shealthmonitor.helper.pdf.PdfConstants
import com.samsung.android.shealthmonitor.helper.pdf.PdfViewMakerInterface
import com.samsung.android.shealthmonitor.util.LOG
import kotlinx.android.synthetic.main.shealth_monitor_bp_pdf_data_table_view.view.*
import kotlinx.android.synthetic.main.shealth_monitor_bp_pdf_device_table_view.view.*
import kotlinx.android.synthetic.main.shealth_monitor_bp_pdf_page_view.view.*
import java.util.*
import kotlin.collections.ArrayList

class PdfBpViewMaker(bpDataMaker : PdfBpDataMaker) : PdfViewMakerInterface {

    val mBpDataMaker = bpDataMaker
    val TAG = PdfConstants.TAG

    override fun makeContentViews(context: Context, startTime : Long) :  List<View>? {
        val bpInfo = mBpDataMaker.makePdfDataForDisplay(context, startTime)
        return makeContentViews(context, bpInfo)
    }

    fun makeContentViews(context : Context, bpInfo : BpPdfInfo) :  List<View>? {

        var resultArray = ArrayList<View>()

        val measureWidth = View.MeasureSpec.makeMeasureSpec(PdfConstants.PAGE_WIDTH, View.MeasureSpec.UNSPECIFIED)
        val measuredHeight = View.MeasureSpec.makeMeasureSpec(PdfConstants.PAGE_HEIGHT, View.MeasureSpec.UNSPECIFIED)


        val firstPageView = BpPdfDataPageView(context)

        resultArray.add(firstPageView)

        val topView = BpPdfTopContentView(context, bpInfo)
        firstPageView.mContentView.addView(topView)

        //calcurate height
        val contentHeight = getMeasureViewHeight(topView, measureWidth, measuredHeight)
        val tableHeaderHeight = getMeasureViewHeight(topView.mTableLayout, measureWidth, measuredHeight)

        var firstPageRemainHeight = PdfConstants.PAGE_HEIGHT - contentHeight - PdfConstants.BOTTOM_MARGIN_SIZE + PdfConstants.PAGE_EXTRA_PADDING_SIZE // bottom text + margin size

        LOG.d(TAG, "topView.height : " + contentHeight + ", tableHeaderSize : " + tableHeaderHeight + ", remainHeight " + firstPageRemainHeight)

        if (firstPageRemainHeight == -1) {
            LOG.e(TAG, "Invalid size : ")
            return null
        }

        if (bpInfo.mBpDataList.isNotEmpty()) {

            /**
             * draw first info page and data table
             */
            val drawingQueue: Queue<BpData> = LinkedList()
            drawingQueue.addAll(bpInfo.mBpDataList)

            //add First page
            addDataRowView(context, topView.mTableLayout, drawingQueue,
                    firstPageRemainHeight, measureWidth, measuredHeight)
            // end first page

            // draw reaming page
            while (!drawingQueue.isEmpty()) {
                resultArray.add(generatDataTablePageView(context, drawingQueue,
                        measureWidth, measuredHeight))
            }


            /**
             * draw device table
             */
            val drawingDevicesQueue: Queue<BpDeviceInfo> = LinkedList()
            drawingDevicesQueue.addAll(bpInfo.mBpDeviceList)

            // get size
            val contentView = resultArray.last().mContentView
            val lastPageHeight = getMeasureViewHeight(contentView, measureWidth, measuredHeight)
            var lastPageRemainHeight = PdfConstants.PAGE_HEIGHT - lastPageHeight - PdfConstants.BOTTOM_MARGIN_SIZE - PdfConstants.PAGE_TOP_PADDING_SIZE
            LOG.d(TAG, "lastPageHeight.height : " + lastPageHeight + ", lastPageRemainHeight : " + lastPageRemainHeight)

            val includeDateOfUse = bpInfo.mBpDeviceList.size > 1
            val deviceContentView = BpPdfDeviceContentView(context, includeDateOfUse)
            val deviceContentHeight = getMeasureViewHeight(deviceContentView, measureWidth, measuredHeight)
            val deviceRowSize = getMeasureViewHeight(deviceContentView.mDeviceTableLayout, measureWidth, measuredHeight)

            LOG.d(TAG, "deviceContentHeight : " + deviceContentHeight + ", deviceRowSize : " + deviceRowSize)

            var contentViewAdded = false
            if (deviceContentHeight + deviceRowSize <= lastPageRemainHeight) {

                LOG.d(TAG, "Append view")
                val parentView = resultArray.last() as ViewGroup
                parentView.mAdditionalContentView.addView(deviceContentView)

                val remainHeight = lastPageRemainHeight - deviceContentHeight + deviceRowSize
                LOG.d(TAG, "Append remainHeight : " + remainHeight)
                addDeviceRowView(context, deviceContentView.mDeviceTableLayout, drawingDevicesQueue,
                        remainHeight, measureWidth, measuredHeight, includeDateOfUse)

                contentViewAdded = true
            }

            // draw device table page
            while (!drawingDevicesQueue.isEmpty()) {
                if (contentViewAdded) {
                    resultArray.add(generatDeviceTablePageView(context, drawingDevicesQueue,
                            measureWidth, measuredHeight, includeDateOfUse, null))
                } else {
                    resultArray.add(generatDeviceTablePageView(context, drawingDevicesQueue,
                            measureWidth, measuredHeight, includeDateOfUse, deviceContentView))
                    contentViewAdded = true
                }
            }

        }

        return resultArray
    }


    fun addDataRowView(context : Context, parentView : ViewGroup, drawingQueue : Queue<BpData>,
                       height : Int, measureWidth : Int, measuredHeight : Int) {

        while(!drawingQueue.isEmpty()) {
            val rowView = BpPdfDataRowView(context, drawingQueue.peek())
            val rowHeight = getMeasureViewHeight(rowView, measureWidth, measuredHeight)
            val remainHeight = height - getMeasureViewHeight(parentView, measureWidth, measuredHeight)
            LOG.i(TAG, "rowHeight : " + rowHeight + ", remain " + remainHeight)
            if (remainHeight - rowHeight < 0) {
                LOG.d(TAG, "break")
                break
            }
            drawingQueue.remove()
            parentView.addView(rowView)
        }
    }

    fun generatDataTablePageView(context : Context, drawingQueue : Queue<BpData>,
                                 measureWidth : Int, measuredHeight : Int
    ) : View {
        val pageView = BpPdfDataPageView(context, PdfConstants.PAGE_TOP_PADDING_SIZE)
        pageView.mContentView.addView(BpPdfDataTableView(context))

        val initPageViewHeight = getMeasureViewHeight(pageView, measureWidth, measuredHeight)
        LOG.d(TAG, "initPageViewHeight size: " + initPageViewHeight)

        val remainHeight = PdfConstants.PAGE_HEIGHT - initPageViewHeight - PdfConstants.BOTTOM_MARGIN_SIZE + PdfConstants.PAGE_EXTRA_PADDING_SIZE
        LOG.d(TAG, "generatDataTablePageView  remainHeight : " +  remainHeight)

        addDataRowView(context, pageView.mTableLayout, drawingQueue, remainHeight,
                measureWidth, measuredHeight)
        return pageView
    }

    fun addDeviceRowView(context : Context, parentView : ViewGroup, drawingQueue : Queue<BpDeviceInfo>,
                         height : Int, measureWidth : Int, measuredHeight : Int, includeDateOfUse : Boolean) {

        while(!drawingQueue.isEmpty()) {
            val rowView = BpPdfDeviceRowView(context, drawingQueue.peek(), includeDateOfUse)
            val rowHeight = getMeasureViewHeight(rowView, measureWidth, measuredHeight)
            val remainHeight = height - getMeasureViewHeight(parentView, measureWidth, measuredHeight)
            LOG.i(TAG, "[addDeviceRowView]rowHeight : " + rowHeight + ", remain " + remainHeight)
            if (remainHeight - rowHeight < 0) {
                LOG.d(TAG, "break")
                break
            }
            drawingQueue.remove()
            parentView.addView(rowView)
        }
    }

    fun generatDeviceTablePageView(context : Context, drawingQueue : Queue<BpDeviceInfo>,
                                   measureWidth : Int, measuredHeight : Int, includeDateOfUse : Boolean,
                                   deviceContentView : BpPdfDeviceContentView? ) : View {
        val pageView = BpPdfDevicePageView(context, PdfConstants.PAGE_TOP_PADDING_SIZE)
        if (deviceContentView != null) {
            pageView.mContentView.addView(deviceContentView)
        } else {
            pageView.mContentView.addView(BpPdfDeviceTableView(context, includeDateOfUse))
        }

        val initPageViewHeight = getMeasureViewHeight(pageView, measureWidth, measuredHeight)
        LOG.d(TAG, "[generatDeviceTablePageView]initPageViewHeight size: " + initPageViewHeight)

        val remainHeight = PdfConstants.PAGE_HEIGHT - initPageViewHeight - PdfConstants.BOTTOM_MARGIN_SIZE + PdfConstants.PAGE_EXTRA_PADDING_SIZE
        LOG.d(TAG, "[generatDeviceTablePageView]generatDataTablePageView  remainHeight : " +  remainHeight)

        addDeviceRowView(context, pageView.mDeviceTableLayout, drawingQueue, remainHeight,
                measureWidth, measuredHeight, includeDateOfUse)
        return pageView
    }

    private fun getMeasureViewHeight(view : View, measureWidth : Int, measuredHeight : Int)  : Int {
        view.measure(measureWidth, measuredHeight)
        return view.measuredHeight
    }

}
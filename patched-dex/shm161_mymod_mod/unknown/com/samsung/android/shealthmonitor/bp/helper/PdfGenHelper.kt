package com.samsung.android.shealthmonitor.bp.helper

import android.os.Handler
import android.widget.RadioGroup
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.helper.pdf.PdfConstants
import com.samsung.android.shealthmonitor.helper.pdf.PdfResultListener
import com.samsung.android.shealthmonitor.helper.pdf.PdqGeneratorTaskHelper
import com.samsung.android.shealthmonitor.manager.SHealthMonitorLogManager
import com.samsung.android.shealthmonitor.ui.activity.BaseActivity
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment
import com.samsung.android.shealthmonitor.ui.dialog.listener.ContentInitializationListener
import com.samsung.android.shealthmonitor.ui.dialog.listener.OnNegativeButtonClickListener
import com.samsung.android.shealthmonitor.ui.dialog.listener.OnPositiveButtonClickListener
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.ShareViaUtils
import com.samsung.android.shealthmonitor.util.Utils
import com.samsung.android.shealthmonitor.util.calendar.BaseDateUtils
import java.io.File

object PdfGenHelper {

    fun showSelectPeriodDialog(activity : BaseActivity, tag : String) {

        var periodGroup : RadioGroup? = null

        val builder = SAlertDlgFragment.Builder(R.string.bp_select_the_period_dialog_title, SAlertDlgFragment.TYPE_P_N_BUTTON)
        builder.setContent(R.layout.shealth_monitor_bp_share_pdf_dialog, ContentInitializationListener {
            content, parentActivity, _, savedInstanceState, _ ->

            periodGroup = content.findViewById(R.id.mPeriodGroup)

        })

        builder.setPositiveButtonClickListener(R.string.share, OnPositiveButtonClickListener {
            view ->
            activity.showProgressBar(true)

            val selectedItem = periodGroup!!.getCheckedRadioButtonId()

            var startTime = 0L
            val currentTime = System.currentTimeMillis()
            val startOfToday = BaseDateUtils.getStartOfDay(currentTime)

            when(selectedItem) {
                (R.id.mLastWeek) -> {
                    startTime = startOfToday - BaseDateUtils.MILLIS_IN_WEEK
                }
                (R.id.mLastTwoWeeks) -> {
                    startTime = startOfToday - 2* BaseDateUtils.MILLIS_IN_WEEK
                }
                (R.id.mLastMonth) -> {
                    startTime = startOfToday - BaseDateUtils.MILLIS_IN_MONTH
                }
                (R.id.mLastThreeMonths) -> {
                    startTime = startOfToday - 3* BaseDateUtils.MILLIS_IN_MONTH
                }
                (R.id.mYearToDate) -> {
                    startTime = BaseDateUtils.getStartOfYear(System.currentTimeMillis())
                }
            }

            sharePdfReport(activity, startTime)

            SHealthMonitorLogManager.sendLog(activity.componentName.shortClassName, SHealthMonitorLogManager.BP_SHARED_BP_RESULT)

        })

        builder.setNegativeButtonClickListener(R.string.common_cancel, OnNegativeButtonClickListener {
        })

        builder.setPositiveButtonTextColor(activity.resources.getColor(R.color.dialog_color, null))
        builder.setNegativeButtonTextColor(activity.resources.getColor(R.color.dialog_color, null))

        try {
            builder.build().show(activity.supportFragmentManager, tag)
        } catch (e: java.lang.Exception) {
            LOG.d(PdfConstants.TAG, "showConfirmDialog(), error in confirm dialog build")
        }

    }

    //must called in showSelectPeriodDialog
    private fun sharePdfReport(activity : BaseActivity, startTime : Long) {
        val file = ShareViaUtils.makeShareFileToSdCard(activity, "pdf", null)

        PdqGeneratorTaskHelper(activity, startTime, file, PdfBpViewMaker(PdfBpDataMaker()), object : PdfResultListener {
            override fun pdfResult(result: Boolean, file: File, exception: Exception?) {
                if (!result) {
                    Utils.showToast(activity, "Fail to generate PDF", false, true)
                    file.delete()
                    activity.showProgressBar(false)
                } else {
                    LOG.d(PdfConstants.TAG, "Success!!! making a pdf file")
                    ShareViaUtils.showShareViaDialog(activity, file, ShareViaUtils.MIME_TYPE_PDF) {
                        LOG.d(PdfConstants.TAG, "Start sharing pdf file")
                        //Share dialog is showed slowly
                        Handler().postDelayed({ activity.showProgressBar(false) }, 2000)
                    }
                }
            }
        }).execute()
    }
}

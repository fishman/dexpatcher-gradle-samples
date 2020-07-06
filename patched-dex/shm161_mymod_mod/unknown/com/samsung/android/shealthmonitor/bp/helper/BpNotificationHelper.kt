package com.samsung.android.shealthmonitor.bp.helper

import android.app.Notification
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import com.samsung.android.shealthmonitor.bp.R
import com.samsung.android.shealthmonitor.bp.control.BpReCalibrationController
import com.samsung.android.shealthmonitor.bp.manager.StateManager
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpCalibrateFirstPrerequisiteActivity
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpHistoryRecalibrate
import com.samsung.android.shealthmonitor.helper.IntentAction
import com.samsung.android.shealthmonitor.util.CommonConstants
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.NotificationHelper
import com.samsung.android.shealthmonitor.util.NotificationHelper.TAG


object BpNotificationHelper {

    fun showNotification(context: Context, jobId : Int) {
        LOG.i(TAG, " [showNotification] jonId : $jobId")
        when (jobId) {

            CommonConstants.JobId.JOB_ID_PRE_RECALIBRATION_NOTI.value,
            CommonConstants.JobId.JOB_ID_FINAL_RECALIBRATION_NOTI.value -> {

                val days = BpReCalibrationController.getRemainDay()
                LOG.i(TAG, "[showNotification] remain days : $days")
                var body : String
                when (days) {
                    0 -> body = context.getString(R.string.shealth_monitor_bp_recalibration_reminder_desc_today)
                    1 -> body = context.getString(R.string.shealth_monitor_bp_recalibration_reminder_desc_1_day)
                    else -> body = context.getString(R.string.shealth_monitor_bp_recalibration_reminder_desc_n_days, days)
                }
                (context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager).notify(NotificationHelper.notifyDefId,
                        getRecordNotificationCalibration(context,
                                context.getString(R.string.shealth_monitor_calibration_reminder),
                                body, context.getString(R.string.shealth_monitor_bp_learn_more)))
            }

            CommonConstants.JobId.JOB_ID_EXPIRED_RECALIBRATION_NOTI.value -> {
                (context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager).notify(NotificationHelper.notifyDefId,
                        getRecordNotificationContinueCalibration(context,
                                context.getString(R.string.shelath_monitor_bp_expired_noti_title),
                                context.getString(R.string.shealth_monitor_bp_expired_calibration_desc)
                                 ,context.getString(R.string.shealth_monitor_bp_learn_more),13))
            }

            CommonConstants.JobId.JOB_ID_CALIBRATION_2ND_NOTI.value,
            CommonConstants.JobId.JOB_ID_CALIBRATION_3RD_NOTI.value -> {

                var elapsedDay: BpReCalibrationController.CalibrationDayReminder = BpReCalibrationController.CalibrationDayReminder.CALIBRATION_2ND_REMINDER
                if (jobId == CommonConstants.JobId.JOB_ID_CALIBRATION_3RD_NOTI.value) {
                    elapsedDay = BpReCalibrationController.CalibrationDayReminder.CALIBRATION_3RD_REMINDER
                }
                val dayOfCalibrationStep = elapsedDay.inDays

                val cal = 4 - StateManager.getInstance().currentState.getCalibrationCount()
                var bodyText : String

                if (dayOfCalibrationStep == 1) {
                    bodyText = context.getString(R.string.shealth_monitor_bp_continue_calibration_desc_1_day, cal)
                } else {
                    bodyText = context.getString(R.string.shealth_monitor_bp_continue_calibration_desc_n_days, cal, dayOfCalibrationStep)
                }

                (context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager).notify(NotificationHelper.notifyDefId,
                        getRecordNotificationContinueCalibration(context,
                                context.getString(R.string.shealth_monitor_bp_continue_calibration),
                                bodyText, context.getString(R.string.shealth_monitor_bp_card_calibrate_continue), 3))
            }
            else -> LOG.e(TAG, " [showNotification] Not supported jobId")
        }
    }

    fun getRecordNotificationCalibration(context: Context, title: String, text: String, buttonText: String): Notification {

        try {
            val intent = Intent(context, SHealthMonitorBpHistoryRecalibrate::class.java)
            intent.flags = Intent.FLAG_ACTIVITY_CLEAR_TOP
            //for supporting back button
            intent.putExtra(IntentAction.EXTRA_KEY_FROM_OUTSIDE, true)

            val pendingIntent = PendingIntent.getActivity(context, 0,
                    intent, PendingIntent.FLAG_UPDATE_CURRENT)

            return NotificationHelper.getRecordNotification(context, title, text, buttonText, pendingIntent)

        } catch (e: ClassNotFoundException) {
            LOG.e(TAG, " Exception : class not found = $e")
            throw AssertionError(e.toString())
        }

    }

    fun getRecordNotificationContinueCalibration(context: Context, title: String, text: String, buttonText: String, targetScree : Int): Notification {

        try {
            val intent = Intent(context, SHealthMonitorBpCalibrateFirstPrerequisiteActivity::class.java)
            intent.flags = Intent.FLAG_ACTIVITY_CLEAR_TOP
            intent.putExtra(SHealthMonitorBpCalibrateFirstPrerequisiteActivity.BP_CALIBRATE_FIRST_PREREQUISITE_STEP_SCENARIO,
                    targetScree)
            //for supporting back button
            intent.putExtra(IntentAction.EXTRA_KEY_FROM_OUTSIDE, true)

            val pendingIntent = PendingIntent.getActivity(context, 0,
                    intent, PendingIntent.FLAG_UPDATE_CURRENT)

            return NotificationHelper.getRecordNotification(context, title, text, buttonText, pendingIntent)

        } catch (e: ClassNotFoundException) {
            LOG.e(TAG, " Exception : class not found = $e")
            throw AssertionError(e.toString())
        }

    }
}
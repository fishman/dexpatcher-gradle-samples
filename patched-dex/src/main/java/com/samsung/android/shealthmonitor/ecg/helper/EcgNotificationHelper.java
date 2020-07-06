package com.samsung.android.shealthmonitor.ecg.helper;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.samsung.android.shealthmonitor.bp.R;
import com.samsung.android.shealthmonitor.bp.control.BpReCalibrationController;
import com.samsung.android.shealthmonitor.ecg.manager.StateManager;
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpCalibrateFirstPrerequisiteActivity;
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpHistoryRecalibrate;
import com.samsung.android.shealthmonitor.helper.IntentAction;
import com.samsung.android.shealthmonitor.util.CommonConstants;
import com.samsung.android.shealthmonitor.util.LOG;
import com.samsung.android.shealthmonitor.util.NotificationHelper;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BpNotificationHelper.kt */
public final class EcgNotificationHelper {
    public static final EcgNotificationHelper INSTANCE = new EcgNotificationHelper();

    private EcgNotificationHelper() {
    }

    public final void showNotification(Context context, int i) {
        String str;
        String string;
        Intrinsics.checkParameterIsNotNull(context, "context");
        LOG.i(NotificationHelper.TAG, " [showNotification] jonId : " + i);
        if (i == CommonConstants.JobId.JOB_ID_PRE_RECALIBRATION_NOTI.getValue() || i == CommonConstants.JobId.JOB_ID_FINAL_RECALIBRATION_NOTI.getValue()) {
            int remainDay = BpReCalibrationController.getRemainDay();
            LOG.i(NotificationHelper.TAG, "[showNotification] remain days : " + remainDay);
            switch (remainDay) {
                case 0:
                    str = context.getString(R.string.shealth_monitor_bp_recalibration_reminder_desc_today);
                    Intrinsics.checkExpressionValueIsNotNull(str, "context.getString(R.stri…tion_reminder_desc_today)");
                    break;
                case 1:
                    str = context.getString(R.string.shealth_monitor_bp_recalibration_reminder_desc_1_day);
                    Intrinsics.checkExpressionValueIsNotNull(str, "context.getString(R.stri…tion_reminder_desc_1_day)");
                    break;
                default:
                    str = context.getString(R.string.shealth_monitor_bp_recalibration_reminder_desc_n_days, new Object[]{Integer.valueOf(remainDay)});
                    Intrinsics.checkExpressionValueIsNotNull(str, "context.getString(R.stri…minder_desc_n_days, days)");
                    break;
            }
            Object systemService = context.getSystemService("notification");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
            }
            String string2 = context.getString(R.string.shealth_monitor_calibration_reminder);
            Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…tor_calibration_reminder)");
            String string3 = context.getString(R.string.shealth_monitor_bp_learn_more);
            Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.stri…th_monitor_bp_learn_more)");
            ((NotificationManager) systemService).notify(NotificationHelper.notifyDefId, getRecordNotificationCalibration(context, string2, str, string3));
        } else if (i == CommonConstants.JobId.JOB_ID_EXPIRED_RECALIBRATION_NOTI.getValue()) {
            Object systemService2 = context.getSystemService("notification");
            if (systemService2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
            }
            String string4 = context.getString(R.string.shelath_monitor_bp_expired_noti_title);
            Intrinsics.checkExpressionValueIsNotNull(string4, "context.getString(R.stri…or_bp_expired_noti_title)");
            String string5 = context.getString(R.string.shealth_monitor_bp_expired_calibration_desc);
            Intrinsics.checkExpressionValueIsNotNull(string5, "context.getString(R.stri…expired_calibration_desc)");
            String string6 = context.getString(R.string.shealth_monitor_bp_learn_more);
            Intrinsics.checkExpressionValueIsNotNull(string6, "context.getString(R.stri…th_monitor_bp_learn_more)");
            ((NotificationManager) systemService2).notify(NotificationHelper.notifyDefId, getRecordNotificationContinueCalibration(context, string4, string5, string6, 13));
        } else if (i == CommonConstants.JobId.JOB_ID_CALIBRATION_2ND_NOTI.getValue() || i == CommonConstants.JobId.JOB_ID_CALIBRATION_3RD_NOTI.getValue()) {
            BpReCalibrationController.CalibrationDayReminder calibrationDayReminder = BpReCalibrationController.CalibrationDayReminder.CALIBRATION_2ND_REMINDER;
            if (i == CommonConstants.JobId.JOB_ID_CALIBRATION_3RD_NOTI.getValue()) {
                calibrationDayReminder = BpReCalibrationController.CalibrationDayReminder.CALIBRATION_3RD_REMINDER;
            }
            int inDays = calibrationDayReminder.getInDays();
            StateManager instance = StateManager.getInstance();
            Intrinsics.checkExpressionValueIsNotNull(instance, "StateManager.getInstance()");
            int calibrationCount = 4 - instance.getCurrentState().getCalibrationCount();
            if (inDays == 1) {
                string = context.getString(R.string.shealth_monitor_bp_continue_calibration_desc_1_day, new Object[]{Integer.valueOf(calibrationCount)});
                Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…ibration_desc_1_day, cal)");
            } else {
                string = context.getString(R.string.shealth_monitor_bp_continue_calibration_desc_n_days, new Object[]{Integer.valueOf(calibrationCount), Integer.valueOf(inDays)});
                Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…al, dayOfCalibrationStep)");
            }
            String str2 = string;
            Object systemService3 = context.getSystemService("notification");
            if (systemService3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
            }
            String string7 = context.getString(R.string.shealth_monitor_bp_continue_calibration);
            Intrinsics.checkExpressionValueIsNotNull(string7, "context.getString(R.stri…_bp_continue_calibration)");
            String string8 = context.getString(R.string.shealth_monitor_bp_card_calibrate_continue);
            Intrinsics.checkExpressionValueIsNotNull(string8, "context.getString(R.stri…_card_calibrate_continue)");
            ((NotificationManager) systemService3).notify(NotificationHelper.notifyDefId, getRecordNotificationContinueCalibration(context, string7, str2, string8, 3));
        } else {
            LOG.e(NotificationHelper.TAG, " [showNotification] Not supported jobId");
        }
    }

    public final Notification getRecordNotificationCalibration(Context context, String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(str, "title");
        Intrinsics.checkParameterIsNotNull(str2, "text");
        Intrinsics.checkParameterIsNotNull(str3, "buttonText");
        try {
            Intent intent = new Intent(context, SHealthMonitorBpHistoryRecalibrate.class);
            intent.setFlags(67108864);
            intent.putExtra(IntentAction.EXTRA_KEY_FROM_OUTSIDE, true);
            Notification recordNotification = NotificationHelper.getRecordNotification(context, str, str2, str3, PendingIntent.getActivity(context, 0, intent, 134217728));
            Intrinsics.checkExpressionValueIsNotNull(recordNotification, "NotificationHelper.getRe…uttonText, pendingIntent)");
            return recordNotification;
        } catch (Exception e) {
            LOG.e(NotificationHelper.TAG, " Exception : class not found = " + e);
            throw new AssertionError(e.toString());
        }
    }

    public final Notification getRecordNotificationContinueCalibration(Context context, String str, String str2, String str3, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(str, "title");
        Intrinsics.checkParameterIsNotNull(str2, "text");
        Intrinsics.checkParameterIsNotNull(str3, "buttonText");
        try {
            Intent intent = new Intent(context, SHealthMonitorBpCalibrateFirstPrerequisiteActivity.class);
            intent.setFlags(67108864);
            intent.putExtra(SHealthMonitorBpCalibrateFirstPrerequisiteActivity.BP_CALIBRATE_FIRST_PREREQUISITE_STEP_SCENARIO, i);
            intent.putExtra(IntentAction.EXTRA_KEY_FROM_OUTSIDE, true);
            Notification recordNotification = NotificationHelper.getRecordNotification(context, str, str2, str3, PendingIntent.getActivity(context, 0, intent, 134217728));
            Intrinsics.checkExpressionValueIsNotNull(recordNotification, "NotificationHelper.getRe…uttonText, pendingIntent)");
            return recordNotification;
        } catch (Exception e) {
            LOG.e(NotificationHelper.TAG, " Exception : class not found = " + e);
            throw new AssertionError(e.toString());
        }
    }
}

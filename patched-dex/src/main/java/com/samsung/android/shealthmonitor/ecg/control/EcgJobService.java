package com.samsung.android.shealthmonitor.ecg.control;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import com.samsung.android.shealthmonitor.bp.control.BpReCalibrationController;
import com.samsung.android.shealthmonitor.ecg.helper.EcgNotificationHelper;
import com.samsung.android.shealthmonitor.ecg.helper.EcgSharedPreferenceHelper;
import com.samsung.android.shealthmonitor.helper.ContextHolder;
import com.samsung.android.shealthmonitor.util.CommonConstants;
import com.samsung.android.shealthmonitor.util.LOG;

public class EcgJobService extends JobService {
    private static final String TAG = "S HealthMonitor - EcgJobService";

    public void onCreate() {
        super.onCreate();
        LOG.d(TAG, "onCreate()");
    }

    public void onDestroy() {
        LOG.d(TAG, "onDestroy()");
        super.onDestroy();
    }

    public static void setEcgUpdataCheckTask() {
        LOG.d(TAG, "setEcgUpdataCheckTask start ");
        if (((JobScheduler) ContextHolder.getContext().getSystemService("jobscheduler")).schedule(setJobInfo(CommonConstants.JobId.JOB_ID_UPDATE_CHECK_ECG).build()) == 1) {
            LOG.d(TAG, "setEcgUpdataCheckTask job Scheduled successfully!");
        }
        LOG.d(TAG, "setEcgUpdataCheckTask end");
    }

    public static void stopEcgUpdataCheckTask() {
        LOG.d(TAG, "stopEcgUpdateTask() was called");
        ((JobScheduler) ContextHolder.getContext().getSystemService("jobscheduler")).cancel(CommonConstants.JobId.JOB_ID_UPDATE_CHECK_BP.getValue());
    }

    private static JobInfo.Builder setJobInfo(CommonConstants.JobId jobId) {
        JobInfo.Builder builder = new JobInfo.Builder(jobId.getValue(), new ComponentName(ContextHolder.getContext(), EcgJobService.class));
        builder.setOverrideDeadline(60000);
        builder.setBackoffCriteria(86400000, 0);
        builder.setRequiredNetworkType(1);
        builder.setPersisted(true);
        return builder;
    }

    public boolean onStartJob(JobParameters jobParameters) {
        int jobId = jobParameters.getJobId();
        LOG.d(TAG, "onStartJob() was called " + jobId);
        if (jobId == CommonConstants.JobId.JOB_ID_PRE_RECALIBRATION_NOTI.getValue() || jobId == CommonConstants.JobId.JOB_ID_FINAL_RECALIBRATION_NOTI.getValue() || jobId == CommonConstants.JobId.JOB_ID_EXPIRED_RECALIBRATION_NOTI.getValue()) {
            EcgNotificationHelper.INSTANCE.showNotification(getBaseContext(), jobId);
            cancelJobSchedule(jobId);
            jobFinished(jobParameters, false);
        }
        if (jobId == CommonConstants.JobId.JOB_ID_CALIBRATION_2ND_NOTI.getValue() || jobId == CommonConstants.JobId.JOB_ID_CALIBRATION_3RD_NOTI.getValue()) {
            EcgNotificationHelper.INSTANCE.showNotification(getBaseContext(), jobId);
            cancelJobSchedule(jobId);
        }
        jobFinished(jobParameters, false);
        return true;
    }

    public boolean onStopJob(JobParameters jobParameters) {
        LOG.d(TAG, "onStopJob() was called");
        return true;
    }

    public static JobInfo getPending(int i) {
        for (JobInfo next : ((JobScheduler) ContextHolder.getContext().getSystemService("jobscheduler")).getAllPendingJobs()) {
            if (i == next.getId()) {
                return next;
            }
        }
        return null;
    }

    public static void cancelJobSchedule(int i) {
        ((JobScheduler) ContextHolder.getContext().getSystemService("jobscheduler")).cancel(i);
    }

    public static void makeEcgCalibrationNotiTask(CommonConstants.JobId jobId, BpReCalibrationController.CalibrationDayReminder calibrationDayReminder) {
        LOG.d(TAG, "makeEcgCalibrationNotiTask start : " + calibrationDayReminder);
        JobScheduler jobScheduler = (JobScheduler) ContextHolder.getContext().getSystemService("jobscheduler");
        // JobInfo.Builder timeSchedule = timeSchedule(jobId, BpReCalibrationController.getTriggerInterval(calibrationDayReminder.getValue(), EcgSharedPreferenceHelper.getEcgCurrentCalibrationStepTime()));
        JobInfo.Builder timeSchedule = timeSchedule(jobId, 100);
        if (timeSchedule == null) {
            LOG.d(TAG, "makeEcgCalibrationNotiTask time was expired");
            cancelJobSchedule(jobId.getValue());
            return;
        }
        if (jobScheduler.schedule(timeSchedule.build()) == 1) {
            LOG.d(TAG, "makeEcgCalibrationNotiTask job Scheduled successfully!");
        }
        LOG.d(TAG, "makeEcgCalibrationNotiTask end");
    }

    public static void makeEcgRecalibrationNotiTask(CommonConstants.JobId jobId, int i) {
        LOG.d(TAG, "makeEcgRecalibrationNotiTask start , isFinal: " + i);
        JobScheduler jobScheduler = (JobScheduler) ContextHolder.getContext().getSystemService("jobscheduler");
        JobInfo.Builder timeSchedule = timeSchedule(jobId, BpReCalibrationController.getTriggerInterval(i));
        if (timeSchedule == null) {
            LOG.d(TAG, "makeEcgRecalibrationNotiTask time was expired");
            cancelJobSchedule(jobId.getValue());
            return;
        }
        if (jobScheduler.schedule(timeSchedule.build()) == 1) {
            LOG.d(TAG, "makeEcgRecalibrationNotiTask job Scheduled successfully!");
        }
        LOG.d(TAG, "makeEcgRecalibrationNotiTask end");
    }

    public static JobInfo.Builder timeSchedule(CommonConstants.JobId jobId, long j) {
        if (j <= 0) {
            LOG.d(TAG, "timeSchedule time was expired " + j);
            return null;
        }
        JobInfo.Builder builder = new JobInfo.Builder(jobId.getValue(), new ComponentName(ContextHolder.getContext(), EcgJobService.class));
        builder.setMinimumLatency(j);
        builder.setOverrideDeadline(j);
        builder.setPersisted(true);
        return builder;
    }
}

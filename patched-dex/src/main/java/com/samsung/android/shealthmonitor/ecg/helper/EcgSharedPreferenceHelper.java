package com.samsung.android.shealthmonitor.ecg.helper;

import android.content.SharedPreferences;
import com.samsung.android.shealthmonitor.data.InformationJsonObject;
import com.samsung.android.shealthmonitor.helper.ContextHolder;
import com.samsung.android.shealthmonitor.network.StubApiWrapper;
import com.samsung.android.shealthmonitor.util.DataKeyUtil;
import com.samsung.android.shealthmonitor.util.LOG;
import com.samsung.android.shealthmonitor.util.Utils;

public class EcgSharedPreferenceHelper {
    private static final String APP_UPDATE_LAST_CHECK_TIME = "shealth_monitor_ecg_app_update_last_check_time";
    private static final String APP_UPDATE_LATEST_VERSION = "shealth_monitor_ecg_app_update_latest_version";
    private static final String APP_UPDATE_LATEST_VERSION_CODE = "shealth_monitor_ecg_app_update_latest_version_code";
    private static final String APP_WEARABLE_COMMON_INFORMATION = "shealth_monitor_ecg_app_wearable_common_information_";
    private static final String ECG_CALIBRATION_LAST_TIME = "shealth_monitor_ecg_ecg_calibration_last_time";
    private static final String ECG_CALIBRATION_STATE = "shealth_monitor_ecg_ecg_calibration_state";
    private static final String ECG_CALIBRATION_STEP_TIME = "shealth_monitor_ecg_ecg_calibration_step_time";
    private static final String ECG_CHART_PULSE_ON = "shealth_monitor_ecg_ecg_chart_pulse_on";
    private static final String ECG_INITIAL_CALIBRATION_DONE = "shealth_monitor_ecg_initial_calibration_done";
    private static final String ECG_MEASURED_DATA_EXIST = "shealth_monitor_ecg_ecg_measured_data_exist";
    private static final String ECG_TOP_CARD_VISIBILITY = "shealth_monitor_ecg_ecg_top_card_visibility";
    private static final String ECG_TnC_COMPLETE = "shealth_monitor_ecg_tc_complete";
    private static final String KEY_PREFIX = "shealth_monitor_ecg_";
    private static final String LAST_SYNCED_ID = "shealth_monitor_ecg_ecg_last_sync_id_health_datastore";
    private static final String TAG = "S HealthMonitor - EcgSharedPreferenceHelper";

    private static SharedPreferences getPermanentSharedPreferences() {
        return ContextHolder.getContext().getSharedPreferences("permanent_shared_preferences_bp", 4);
    }

    public static boolean getTncComplete() {
        return ((Boolean) getInternal(ECG_TnC_COMPLETE, false)).booleanValue();
    }

    public static void setTncComplete(boolean z) {
        putInternal(ECG_TnC_COMPLETE, Boolean.valueOf(z));
    }

    public static void setLastUpdateCheckTime() {
        putInternal(APP_UPDATE_LAST_CHECK_TIME, Long.valueOf(System.currentTimeMillis()));
    }

    public static long getLastUpdateCheckTime() {
        return ((Long) getInternal(APP_UPDATE_LAST_CHECK_TIME, 0L)).longValue();
    }

    public static void setLatestAppVersionCode(String str) {
        putInternal(APP_UPDATE_LATEST_VERSION_CODE, str);
    }

    public static String getLatestAppVersionCode() {
        return (String) getInternal(APP_UPDATE_LATEST_VERSION_CODE, StubApiWrapper.RESULT_CODE_NOT_FOUND_APPLICATION);
    }

    public static void setLatestAppVersion(String str) {
        putInternal(APP_UPDATE_LATEST_VERSION, str);
    }

    public static String getLatestAppVersion() {
        return (String) getInternal(APP_UPDATE_LATEST_VERSION, StubApiWrapper.RESULT_CODE_NOT_FOUND_APPLICATION);
    }

    public static void setWearableInformation(String str) {
        putInternal(APP_WEARABLE_COMMON_INFORMATION, str);
    }

    public static InformationJsonObject getWearableInformation() {
        try {
            String str = (String) getInternal(APP_WEARABLE_COMMON_INFORMATION, "");
            if (str != null && !str.isEmpty()) {
                return (InformationJsonObject) Utils.makeObjectFromJson(str, InformationJsonObject.class);
            }
            LOG.e(TAG, "[getWearableInformation]: value is not exist.");
            return null;
        } catch (Exception e) {
            LOG.e(TAG, " [getWearableInformation] exception : " + LOG.getStackTraceString(e));
            return null;
        }
    }

    public static void setLastSyncedIdForDataStore(long j) {
        putInternal(LAST_SYNCED_ID, Long.valueOf(j));
    }

    public static long getLastSyncedIdForDataStore() {
        return ((Long) getInternal(LAST_SYNCED_ID, -1L)).longValue();
    }

    public static boolean getInitialCalibrationComplete() {
        return ((Boolean) getInternal(ECG_INITIAL_CALIBRATION_DONE, false)).booleanValue();
    }

    public static void setInitialCalibrationComplete(boolean z) {
        putInternal(ECG_INITIAL_CALIBRATION_DONE, Boolean.valueOf(z));
    }

    public static void setEcgCalibrationState(String str) {
        putInternal(ECG_CALIBRATION_STATE, str);
    }

    public static String getEcgCalibrationState() {
        return (String) getInternal(ECG_CALIBRATION_STATE, (Object) null);
    }

    public static void setEcgCurrentCalibrationStepTime(long j) {
        putInternal(ECG_CALIBRATION_STEP_TIME, Long.valueOf(j));
    }

    public static long getEcgCurrentCalibrationStepTime() {
        return ((Long) getInternal(ECG_CALIBRATION_STEP_TIME, -1L)).longValue();
    }

    public static void setEcgLastCalibrationTime(long j) {
        putInternal(ECG_CALIBRATION_LAST_TIME, Long.valueOf(j));
    }

    public static long getLastEcgCalibrationTime() {
        return ((Long) getInternal(ECG_CALIBRATION_LAST_TIME, -1L)).longValue();
    }

    public static void setTopIntroCardVisibility(boolean z) {
        putInternal(ECG_TOP_CARD_VISIBILITY, Boolean.valueOf(z));
    }

    public static boolean getTopIntroCardVisibility() {
        return ((Boolean) getInternal(ECG_TOP_CARD_VISIBILITY, true)).booleanValue();
    }

    public static boolean getChartPulseOn() {
        return ((Boolean) getInternal(ECG_CHART_PULSE_ON, false)).booleanValue();
    }

    public static void setChartPulseOn(boolean z) {
        putInternal(ECG_CHART_PULSE_ON, Boolean.valueOf(z));
    }

    public static void setEcgMeasuredDataExist(boolean z) {
        putInternal(ECG_MEASURED_DATA_EXIST, Boolean.valueOf(z));
    }

    public static boolean getEcgMeasuredDataExist() {
        return ((Boolean) getInternal(ECG_MEASURED_DATA_EXIST, false)).booleanValue();
    }

    private static <T> void putInternal(String str, T t) {
        try {
            SharedPreferences permanentSharedPreferences = getPermanentSharedPreferences();
            if (permanentSharedPreferences == null) {
                LOG.e(TAG, "[putInternal]: preferences is null. (" + str + ")");
            } else if (t == null) {
                permanentSharedPreferences.edit().remove(str).apply();
            } else {
                permanentSharedPreferences.edit().putString(str, DataKeyUtil.dataEncrypt(t.toString())).apply();
            }
        } catch (Exception e) {
            LOG.e(TAG, " [putInternal] exception(" + str + ") : " + LOG.getStackTraceString(e));
        }
    }

    private static <T> T getInternal(String str, T t) {
        SharedPreferences permanentSharedPreferences = getPermanentSharedPreferences();
        if (permanentSharedPreferences != null) {
            try {
                String string = permanentSharedPreferences.getString(str, "");
                if (string != null) {
                    if (!string.isEmpty()) {
                        String dataDecrypt = DataKeyUtil.dataDecrypt(string);
                        if (dataDecrypt.isEmpty()) {
                            return t;
                        }
                        if (t instanceof Boolean) {
                            return (T)Boolean.valueOf(dataDecrypt);
                        }
                        if (t instanceof Integer) {
                            return (T)Integer.valueOf(dataDecrypt);
                        }
                        return t instanceof Long ? (T)Long.valueOf(dataDecrypt) : (T)dataDecrypt;
                    }
                }
                return t;
            } catch (Exception e) {
                LOG.e(TAG, " [getInternal] exception(" + str + "): " + LOG.getStackTraceString(e));
            }
        } else {
            LOG.e(TAG, "[getInternal]: preferences is null. (" + str + ")");
            return t;
        }
		return t;
    }
}

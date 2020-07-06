package com.samsung.android.shealthmonitor.ecg.util;

import android.app.Activity;
import android.app.Dialog;
import android.bluetooth.BluetoothAdapter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioGroup;
import com.samsung.android.shealthmonitor.bp.R;
import com.samsung.android.shealthmonitor.bp.manager.CalibrationState;
import com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorMeasurementActivity;
import com.samsung.android.shealthmonitor.helper.ContextHolder;
import com.samsung.android.shealthmonitor.helper.SharedPreferenceHelper;
import com.samsung.android.shealthmonitor.ui.activity.BaseAppCompatActivity;
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment;
import com.samsung.android.shealthmonitor.ui.dialog.listener.OnPositiveButtonClickListener;
import com.samsung.android.shealthmonitor.util.LOG;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

public class DemoUtil {
    private static final String ERROR_DEMO = "ERROR_DEMO";
    public static final String ERROR_MeasuringActivity = "MeasuringActivity";
    public static final String ERROR_SECOND_1_STEP = CalibrationState.SECOND_1_STEP.name();
    public static final String ERROR_SECOND_READY = CalibrationState.FIRST_DONE.name();
    public static final String ERROR_SHealthMonitorBpInputActivity = "SHealthMonitorBpInputActivity";
    private static final String TAG = "S HealthMonitor - DemoUtil";
    /* access modifiers changed from: private */
    public static int sErrorIndex;
    /* access modifiers changed from: private */
    public static LinkedList<String> sErrorTypeList;
    /* access modifiers changed from: private */
    public static Boolean sIsErrorDemo;
    private static Boolean sIsErrorType;
    private static String sRandomError;

    public static void enableCustomErrorType(boolean z) {
        sIsErrorType = Boolean.valueOf(z);
    }

    public static boolean isCustomErrorType() {
        return sIsErrorType.booleanValue();
    }

    public static String getCustomErrorType() {
        if (!sIsErrorType.booleanValue() || sErrorTypeList == null) {
            return null;
        }
        return sErrorTypeList.get(sErrorIndex);
    }

    public static void moveNextCustomErrorType() {
        if (sIsErrorType.booleanValue() && sErrorTypeList != null) {
            int i = sErrorIndex + 1;
            sErrorIndex = i;
            if (i >= sErrorTypeList.size()) {
                sErrorIndex = 0;
            }
        }
    }

    public static void setErrorDemo(boolean z) {
        showSelectErrortypeDialog("ERROR_TYPE_POPUP");
    }

    public static boolean isErrorDemo() {
        if (sIsErrorDemo == null) {
            sIsErrorDemo = Boolean.valueOf(getErrorDemoState());
        }
        return sIsErrorDemo.booleanValue();
    }

    private static boolean getErrorDemoState() {
        SharedPreferences permanentSharedPreferences = SharedPreferenceHelper.getPermanentSharedPreferences();
        if (permanentSharedPreferences != null) {
            try {
                return permanentSharedPreferences.getBoolean(ERROR_DEMO, false);
            } catch (Exception e) {
                LOG.e(TAG, " [getErrorDemoState] exception : " + LOG.getStackTraceString(e));
            }
        } else {
            LOG.e(TAG, "[getErrorDemoState]: preferences is null.");
            return false;
        }
		return false;
    }

    /* access modifiers changed from: private */
    public static void setErrorDemoState(boolean z) {
        SharedPreferences permanentSharedPreferences = SharedPreferenceHelper.getPermanentSharedPreferences();
        if (permanentSharedPreferences != null) {
            permanentSharedPreferences.edit().putBoolean(ERROR_DEMO, z).apply();
        } else {
            LOG.e(TAG, "[getErrorDemoState]: preferences is null.");
        }
        LOG.d(TAG, "[getErrorDemoState]: " + z);
    }

    public static void initRandomError() {
        if (isErrorDemo()) {
            List asList = Arrays.asList(new String[]{ERROR_SECOND_READY, ERROR_SECOND_1_STEP, ERROR_MeasuringActivity, ERROR_SHealthMonitorBpInputActivity});
            Collections.shuffle(asList, new Random(System.nanoTime()));
            sRandomError = (String) asList.get(0);
            sRandomError = ERROR_MeasuringActivity;
            LOG.d(TAG, "Picked random error " + sRandomError);
            return;
        }
        LOG.d(TAG, "Disabled random error ");
    }

    public static boolean isRandomErrorCaseStep(String str) {
        if (isErrorDemo() && sRandomError != null && str.equals(sRandomError)) {
            return true;
        }
        return false;
    }

    public static void offBT() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            LOG.d(TAG, "bt not is supported");
            return;
        }
        if (defaultAdapter.isEnabled()) {
            defaultAdapter.disable();
            LOG.d(TAG, "bt is disabled");
        } else {
            LOG.d(TAG, "bt was disabled");
        }
        sRandomError = null;
    }

    public static void onBT() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            LOG.d(TAG, "bt not is supported");
            return;
        }
        if (defaultAdapter.disable()) {
            defaultAdapter.enable();
            LOG.d(TAG, "bt is enable");
        } else {
            LOG.d(TAG, "bt was enable");
        }
        sRandomError = null;
    }

    public static void onOffBTForDemo() {
        final BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            LOG.d(TAG, "bt not is supported");
            return;
        }
        if (defaultAdapter.isEnabled()) {
            defaultAdapter.disable();
            LOG.d(TAG, "bt is disabled");
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                public final void run() {
                    defaultAdapter.enable();
                }
            }, 1000);
        } else {
            LOG.d(TAG, "bt was disabled");
        }
        sRandomError = null;
    }

    static void showSelectErrortypeDialog(String str) {
        final RadioGroup[] radioGroupArr = {null};
        enableCustomErrorType(false);
        BaseAppCompatActivity baseAppCompatActivity = (BaseAppCompatActivity) ContextHolder.getCurrentActivity();
        if (baseAppCompatActivity == null) {
            LOG.d(TAG, "current activity is null");
            return;
        }
        SAlertDlgFragment.Builder builder = new SAlertDlgFragment.Builder("", 1);
        builder.setHideTitle(true);
        builder.setContent(R.layout.shealth_monitor_bp_error_type_test_dialog, new DemoUtil$$Lambda$0(radioGroupArr));
        builder.setPositiveButtonClickListener(R.string.baseui_button_ok, new OnPositiveButtonClickListener() {
            public final void onClick(View view) {
                if (DemoUtil.isErrorDemo() && radioGroupArr[0] != null) {
                    int checkedRadioButtonId = radioGroupArr[0].getCheckedRadioButtonId();
                    if (checkedRadioButtonId == R.id.mError_Default) {
                        DemoUtil.enableCustomErrorType(false);
                        return;
                    }
                    DemoUtil.enableCustomErrorType(true);
                    int unused = DemoUtil.sErrorIndex = 0;
                    if (DemoUtil.sErrorTypeList == null) {
                        LinkedList unused2 = DemoUtil.sErrorTypeList = new LinkedList();
                        DemoUtil.sErrorTypeList.add(SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getSQI());
                        DemoUtil.sErrorTypeList.add(SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getLOW_SQI());
                        DemoUtil.sErrorTypeList.add(SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getNO_BEAT());
                        DemoUtil.sErrorTypeList.add(SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getDETECT_MOVE());
                        DemoUtil.sErrorTypeList.add(SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getWEAR_OFF());
                        DemoUtil.sErrorTypeList.add(SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getLOW_BATTERY());
                        DemoUtil.sErrorTypeList.add(SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getNOT_ENOUGH_SPACE());
                    }
                    String str = null;
                    if (checkedRadioButtonId == R.id.mERROR_SQI) {
                        str = SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getSQI();
                    } else if (checkedRadioButtonId == R.id.mError_LOW_SQI) {
                        str = SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getLOW_SQI();
                    } else if (checkedRadioButtonId == R.id.mError_NO_BEAT) {
                        str = SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getNO_BEAT();
                    } else if (checkedRadioButtonId == R.id.mError_Move) {
                        str = SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getDETECT_MOVE();
                    } else if (checkedRadioButtonId == R.id.mError_WEAR_OFF) {
                        str = SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getWEAR_OFF();
                    } else if (checkedRadioButtonId == R.id.mError_LOW_BATTERY) {
                        str = SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getLOW_BATTERY();
                    } else if (checkedRadioButtonId == R.id.mError_NOT_ENOUGH_SPACE) {
                        str = SHealthMonitorMeasurementActivity.CalibrationResult.INSTANCE.getNOT_ENOUGH_SPACE();
                    }
                    if (str != null) {
                        DemoUtil.sErrorTypeList.remove(str);
                        DemoUtil.sErrorTypeList.addFirst(str);
                    }
                }
            }
        });
        builder.setPositiveButtonTextColor(baseAppCompatActivity.getResources().getColor(R.color.dialog_color, (Resources.Theme) null));
        try {
            builder.build().show(baseAppCompatActivity.getSupportFragmentManager(), str);
        } catch (Exception unused) {
            LOG.d(TAG, "showConfirmDialog(), error in confirm dialog build");
        }
    }

    static final /* synthetic */ void lambda$showSelectErrortypeDialog$0$DemoUtil(final RadioGroup[] radioGroupArr, View view, Activity activity, Dialog dialog, Bundle bundle, SAlertDlgFragment.OKButtonHandler oKButtonHandler) {
        final RadioGroup radioGroup = (RadioGroup) view.findViewById(R.id.mRadioGroup);
        radioGroupArr[0] = radioGroup;
        boolean isErrorDemo = isErrorDemo();
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.mEnableError);
        checkBox.setChecked(isErrorDemo);
        for (int i = 0; i < radioGroup.getChildCount(); i++) {
            radioGroup.getChildAt(i).setEnabled(isErrorDemo);
        }
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    DemoUtil.setErrorDemoState(true);
                    Boolean unused = DemoUtil.sIsErrorDemo = true;
                    for (int i = 0; i < radioGroup.getChildCount(); i++) {
                        radioGroup.getChildAt(i).setEnabled(true);
                    }
                    return;
                }
                DemoUtil.setErrorDemoState(false);
                Boolean unused2 = DemoUtil.sIsErrorDemo = false;
                radioGroupArr[0].setEnabled(false);
                for (int i2 = 0; i2 < radioGroup.getChildCount(); i2++) {
                    radioGroup.getChildAt(i2).setEnabled(false);
                }
            }
        });
    }
}

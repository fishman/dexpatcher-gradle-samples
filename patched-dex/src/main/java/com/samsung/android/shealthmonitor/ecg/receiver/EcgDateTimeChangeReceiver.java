package com.samsung.android.shealthmonitor.ecg.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.samsung.android.shealthmonitor.bp.control.BpReCalibrationController;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EcgDateTimeChangeReceiver.kt */
public final class EcgDateTimeChangeReceiver extends BroadcastReceiver {
    public final void onReceive(Context context, Intent intent) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(intent, "intent");
        BpReCalibrationController.updateBpRecalibrationSchedule();
        BpReCalibrationController.updateBpCalibrationNoti();
    }
}

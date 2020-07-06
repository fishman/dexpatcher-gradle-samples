package com.samsung.android.shealthmonitor.ecg.helper;

import com.samsung.context.sdk.samsunganalytics.internal.util.Preferences;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PdfEcgDataMaker.kt */
public final class EcgDeviceCalSet {
    private final String mCalibrationId;
    private final String mDeviceId;
    private final long mStartTime;

    public EcgDeviceCalSet(String str, long j, String str2) {
        Intrinsics.checkParameterIsNotNull(str, Preferences.PREFS_KEY_DID);
        Intrinsics.checkParameterIsNotNull(str2, "calibrationId");
        this.mDeviceId = str;
        this.mStartTime = j;
        this.mCalibrationId = str2;
    }

    public final String getMDeviceId() {
        return this.mDeviceId;
    }

    public final long getMStartTime() {
        return this.mStartTime;
    }

    public final String getMCalibrationId() {
        return this.mCalibrationId;
    }

    public final String getDeviceId() {
        return this.mDeviceId;
    }

    public final long getStartTime() {
        return this.mStartTime;
    }

    public final String getCalibrationId() {
        return this.mCalibrationId;
    }
}

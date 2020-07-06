package com.samsung.android.shealthmonitor.ecg.helper;

import com.samsung.android.shealthmonitor.util.calendar.BaseDateUtils;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PdfEcgDataMaker.kt */
public final class EcgDeviceInfo {
    private String mDayOfUse = "";
    private String mDeviceNickname;
    private long mEndTime = -1;
    private String mLastCalibrationDate;
    private long mStartTime;

    public EcgDeviceInfo(String str, long j, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "deviceNickname");
        Intrinsics.checkParameterIsNotNull(str2, "lastCalibrationDate");
        this.mDeviceNickname = str;
        this.mLastCalibrationDate = str2;
        this.mStartTime = j;
    }

    public final String getMDeviceNickname() {
        return this.mDeviceNickname;
    }

    public final void setMDeviceNickname(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.mDeviceNickname = str;
    }

    public final String getMLastCalibrationDate() {
        return this.mLastCalibrationDate;
    }

    public final void setMLastCalibrationDate(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.mLastCalibrationDate = str;
    }

    public final long getMStartTime() {
        return this.mStartTime;
    }

    public final void setMStartTime(long j) {
        this.mStartTime = j;
    }

    public final long getMEndTime() {
        return this.mEndTime;
    }

    public final void setMEndTime(long j) {
        this.mEndTime = j;
    }

    public final String getMDayOfUse() {
        return this.mDayOfUse;
    }

    public final void setMDayOfUse(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.mDayOfUse = str;
    }

    public final void updateDayOfUse(long j) {
        String str;
        String str2;
        this.mEndTime = j;
        if (this.mEndTime == -1) {
            str2 = BaseDateUtils.getDateTime(this.mStartTime, BaseDateUtils.Type.DATE_TIME_YEAR);
            Intrinsics.checkExpressionValueIsNotNull(str2, "BaseDateUtils.getDateTim…tils.Type.DATE_TIME_YEAR)");
            str = this.mLastCalibrationDate;
        } else {
            str2 = BaseDateUtils.getDateTime(this.mStartTime, BaseDateUtils.Type.DATE_TIME_YEAR);
            Intrinsics.checkExpressionValueIsNotNull(str2, "BaseDateUtils.getDateTim…tils.Type.DATE_TIME_YEAR)");
            str = BaseDateUtils.getDateTime(this.mEndTime, BaseDateUtils.Type.DATE_TIME_YEAR);
            Intrinsics.checkExpressionValueIsNotNull(str, "BaseDateUtils.getDateTim…tils.Type.DATE_TIME_YEAR)");
        }
        this.mDayOfUse = str2 + " ~ " + str;
    }
}

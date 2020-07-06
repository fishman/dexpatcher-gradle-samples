package com.samsung.android.shealthmonitor.ecg.helper;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: PdfEcgDataMaker.kt */
public final class EcgData {
    private String mDate;
    private int mDiastolic;
    private String mNotes;
    private int mPulseRate;
    private int mSystolic;
    private String mTime;

    public EcgData(String str, String str2, int i, int i2, int i3, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "date");
        Intrinsics.checkParameterIsNotNull(str2, "time");
        Intrinsics.checkParameterIsNotNull(str3, "notes");
        this.mDate = str;
        this.mTime = str2;
        this.mSystolic = i;
        this.mDiastolic = i2;
        this.mPulseRate = i3;
        this.mNotes = str3;
    }

    public final String getMDate() {
        return this.mDate;
    }

    public final void setMDate(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.mDate = str;
    }

    public final String getMTime() {
        return this.mTime;
    }

    public final void setMTime(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.mTime = str;
    }

    public final int getMSystolic() {
        return this.mSystolic;
    }

    public final void setMSystolic(int i) {
        this.mSystolic = i;
    }

    public final int getMDiastolic() {
        return this.mDiastolic;
    }

    public final void setMDiastolic(int i) {
        this.mDiastolic = i;
    }

    public final int getMPulseRate() {
        return this.mPulseRate;
    }

    public final void setMPulseRate(int i) {
        this.mPulseRate = i;
    }

    public final String getMNotes() {
        return this.mNotes;
    }

    public final void setMNotes(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.mNotes = str;
    }
}

package com.samsung.android.shealthmonitor.ecg.roomdata.data;

import com.samsung.android.shealthmonitor.dataroom.data.CommonData;
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomConstants;
import com.samsung.android.shealthmonitor.util.Utils;
import java.io.Serializable;
import org.json.JSONObject;

public class EcgData extends CommonData implements Serializable {
    private static final String TAG = "S HealthMonitor - EcgData";
    private int mDiastole;
    private int mHeartRate;
    private int mSystolic;

    public EcgData() {
        this.mHeartRate = -1;
        this.mDiastole = -1;
        this.mSystolic = -1;
    }

    public EcgData(String str) {
        setUuid(str);
        this.mHeartRate = 0;
        this.mDiastole = 0;
        this.mSystolic = 0;
    }

    public EcgData(String str, String str2, String str3, long j, long j2, long j3, long j4, int i, int i2, int i3) {
        this(str, str2, str3, j, j2, j3, j4, "", i, i2, i3);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public EcgData(String str, String str2, String str3, long j, long j2, long j3, long j4, String str4, int i, int i2, int i3) {
        super(str, str2, str3, j, j2, j3, j4, str4);
        this.mSystolic = i;
        this.mDiastole = i2;
        this.mHeartRate = i3;
    }

    public EcgData(CommonData commonData, int i, int i2, int i3) {
        super(commonData);
        this.mSystolic = i;
        this.mDiastole = i2;
        this.mHeartRate = i3;
    }

    public EcgData(JSONObject jSONObject) {
        super(jSONObject);
        this.mSystolic = Utils.getInt(jSONObject, "systolic");
        this.mDiastole = Utils.getInt(jSONObject, "diastolic");
        this.mHeartRate = Utils.getInt(jSONObject, "hr");
    }

    public String toString() {
        return TAG + super.toString() + " Systolic : " + this.mSystolic + " Diastole : " + this.mDiastole + " HeartRate : " + this.mHeartRate;
    }

    public int getSystolic() {
        return this.mSystolic;
    }

    public void setSystolic(int i) {
        this.mSystolic = i;
    }

    public int getDiastole() {
        return this.mDiastole;
    }

    public void setDiastole(int i) {
        this.mDiastole = i;
    }

    public int getHeartRate() {
        return this.mHeartRate;
    }

    public void setHeartRate(int i) {
        this.mHeartRate = i;
    }
}

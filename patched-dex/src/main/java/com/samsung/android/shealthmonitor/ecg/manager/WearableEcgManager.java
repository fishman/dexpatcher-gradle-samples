package com.samsung.android.shealthmonitor.ecg.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Pair;
import com.samsung.android.shealthmonitor.ecg.helper.EcgSharedPreferenceHelper;
import com.samsung.android.shealthmonitor.helper.ContextHolder;
import com.samsung.android.shealthmonitor.util.LOG;
import com.samsung.android.shealthmonitor.wearable.wearablemessage.WearableMessageData;
import com.samsung.android.shealthmonitor.wearable.wearablemessage.WearableMessageManager;
import org.json.JSONException;
import org.json.JSONObject;


public class WearableEcgManager {
  private static final String TAG = "S HealthMonitor - WearableEcgManager";
  private static WearableEcgManager mInstance;
  private static final String RECEIVER_ECG_COMMON = "com.samsung.wearable.app.health.samd.ecg.common";
  private static final String RECEIVER_ECG_MEASURING = "com.samsung.wearable.app.health.samd.ecg.measuring";
  private static final String RECEIVER_ECG_SYNCMANAGER = "com.samsung.wearable.app.health.samd.ecg.syncmanager";
  private static final String SENDER_ECG_COMMON = "com.samsung.mobile.app.health.samd.ecg.common";
  private static final String SENDER_ECG_MEASURING = "com.samsung.mobile.app.health.samd.ecg.measuring";
  private static final String SENDER_ECG_SYNCMANAGER = "com.samsung.mobile.app.health.samd.ecg.syncmanager";

  private BroadcastReceiver mBrReceiver = new BroadcastReceiver() {
    public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra(WearableMessageData.Key.MESSAGE);
            LOG.d(WearableEcgManager.TAG, " [onReceive] Got message: " + stringExtra);
        }
    };
    /* access modifiers changed from: private */
    public final Object mLock = new Object();
    /* access modifiers changed from: private */
    public JSONObject mLockResult;
    final WearableMessageManager.ResultListener mResultListener = new WearableMessageManager.ResultListener() {
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0091, code lost:
            r5 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:18:?, code lost:
            com.samsung.android.shealthmonitor.util.LOG.e(com.samsung.android.shealthmonitor.ecg.manager.WearableEcgManager.TAG, " [] Exception : " + com.samsung.android.shealthmonitor.util.LOG.getStackTraceString(r5));
         */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x00b3, code lost:
            r5 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:40:0x0114, code lost:
            if (com.samsung.android.shealthmonitor.ecg.manager.WearableEcgManager.access$100(r4.this$0) == null) goto L_0x0116;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:41:0x0116, code lost:
            com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.access$102(r4.this$0, new org.json.JSONObject());
         */
        /* JADX WARNING: Code restructure failed: missing block: B:43:?, code lost:
            com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.access$100(r4.this$0).put("result", "error");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:44:0x012e, code lost:
            r6 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:47:?, code lost:
            com.samsung.android.shealthmonitor.util.LOG.e(com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.TAG, " [] Exception : " + com.samsung.android.shealthmonitor.util.LOG.getStackTraceString(r6));
         */
        /* JADX WARNING: Code restructure failed: missing block: B:48:0x0146, code lost:
            com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.access$000(r4.this$0).notifyAll();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:49:0x014f, code lost:
            throw r5;
         */
        /* JADX WARNING: Exception block dominator not found, dom blocks: [B:13:0x0083, B:24:0x00b8] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onResult(java.lang.String r5, int r6, java.lang.String r7) {
          LOG.d(WearableEcgManager.TAG, " [onResult] Got message: " + r5 + r7);
            /*
                r4 = this;
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r0 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this
                java.lang.Object r0 = r0.mLock
                monitor-enter(r0)
                java.lang.String r1 = "S HealthMonitor - WearableEcgManager"
                java.lang.String r2 = " [resultListener] ok? "
                com.samsung.android.shealthmonitor.util.LOG.i(r1, r2)     // Catch:{ all -> 0x0150 }
                java.lang.String r1 = "S HealthMonitor - WearableEcgManager"
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0150 }
                java.lang.String r3 = "[WM] onResult : "
                r2.<init>(r3)     // Catch:{ all -> 0x0150 }
                r2.append(r5)     // Catch:{ all -> 0x0150 }
                java.lang.String r5 = ", seq num : "
                r2.append(r5)     // Catch:{ all -> 0x0150 }
                r2.append(r6)     // Catch:{ all -> 0x0150 }
                java.lang.String r5 = ", receiveBody : "
                r2.append(r5)     // Catch:{ all -> 0x0150 }
                r2.append(r7)     // Catch:{ all -> 0x0150 }
                java.lang.String r5 = r2.toString()     // Catch:{ all -> 0x0150 }
                com.samsung.android.shealthmonitor.util.LOG.i(r1, r5)     // Catch:{ all -> 0x0150 }
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r5 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ JSONException -> 0x00b5 }
                org.json.JSONObject r6 = new org.json.JSONObject     // Catch:{ JSONException -> 0x00b5 }
                r6.<init>(r7)     // Catch:{ JSONException -> 0x00b5 }
                org.json.JSONObject unused = r5.mLockResult = r6     // Catch:{ JSONException -> 0x00b5 }
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r5 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ JSONException -> 0x00b5 }
                org.json.JSONObject r5 = r5.mLockResult     // Catch:{ JSONException -> 0x00b5 }
                java.lang.String r6 = "result"
                java.lang.String r5 = r5.getString(r6)     // Catch:{ JSONException -> 0x00b5 }
                java.lang.String r6 = "success"
                boolean r5 = r5.equalsIgnoreCase(r6)     // Catch:{ JSONException -> 0x00b5 }
                if (r5 != 0) goto L_0x0071
                android.content.Context r5 = com.samsung.android.shealthmonitor.helper.ContextHolder.getContext()     // Catch:{ JSONException -> 0x00b5 }
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x00b5 }
                java.lang.String r7 = "Result : "
                r6.<init>(r7)     // Catch:{ JSONException -> 0x00b5 }
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r7 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ JSONException -> 0x00b5 }
                org.json.JSONObject r7 = r7.mLockResult     // Catch:{ JSONException -> 0x00b5 }
                java.lang.String r1 = "result"
                java.lang.String r7 = r7.getString(r1)     // Catch:{ JSONException -> 0x00b5 }
                r6.append(r7)     // Catch:{ JSONException -> 0x00b5 }
                java.lang.String r6 = r6.toString()     // Catch:{ JSONException -> 0x00b5 }
                r7 = 0
                com.samsung.android.shealthmonitor.util.Utils.showToast(r5, r6, r7, r7)     // Catch:{ JSONException -> 0x00b5 }
            L_0x0071:
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r5 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ all -> 0x0150 }
                org.json.JSONObject r5 = r5.mLockResult     // Catch:{ all -> 0x0150 }
                if (r5 != 0) goto L_0x00a9
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r5 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ all -> 0x0150 }
                org.json.JSONObject r6 = new org.json.JSONObject     // Catch:{ all -> 0x0150 }
                r6.<init>()     // Catch:{ all -> 0x0150 }
                org.json.JSONObject unused = r5.mLockResult = r6     // Catch:{ all -> 0x0150 }
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r5 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ JSONException -> 0x0091 }
                org.json.JSONObject r5 = r5.mLockResult     // Catch:{ JSONException -> 0x0091 }
                java.lang.String r6 = "result"
                java.lang.String r7 = "error"
                r5.put(r6, r7)     // Catch:{ JSONException -> 0x0091 }
                goto L_0x00a9
            L_0x0091:
                r5 = move-exception
                java.lang.String r6 = "S HealthMonitor - WearableEcgManager"
                java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x0150 }
                java.lang.String r1 = " [] Exception : "
                r7.<init>(r1)     // Catch:{ all -> 0x0150 }
                java.lang.String r5 = com.samsung.android.shealthmonitor.util.LOG.getStackTraceString(r5)     // Catch:{ all -> 0x0150 }
                r7.append(r5)     // Catch:{ all -> 0x0150 }
                java.lang.String r5 = r7.toString()     // Catch:{ all -> 0x0150 }
                com.samsung.android.shealthmonitor.util.LOG.e(r6, r5)     // Catch:{ all -> 0x0150 }
            L_0x00a9:
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r4 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ all -> 0x0150 }
                java.lang.Object r4 = r4.mLock     // Catch:{ all -> 0x0150 }
            L_0x00af:
                r4.notifyAll()     // Catch:{ all -> 0x0150 }
                goto L_0x010c
            L_0x00b3:
                r5 = move-exception
                goto L_0x010e
            L_0x00b5:
                r5 = move-exception
                java.lang.String r6 = "S HealthMonitor - WearableEcgManager"
                java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x00b3 }
                java.lang.String r1 = " [mResultListener] Exception : "
                r7.<init>(r1)     // Catch:{ all -> 0x00b3 }
                java.lang.String r5 = com.samsung.android.shealthmonitor.util.LOG.getStackTraceString(r5)     // Catch:{ all -> 0x00b3 }
                r7.append(r5)     // Catch:{ all -> 0x00b3 }
                java.lang.String r5 = r7.toString()     // Catch:{ all -> 0x00b3 }
                com.samsung.android.shealthmonitor.util.LOG.e(r6, r5)     // Catch:{ all -> 0x00b3 }
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r5 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ all -> 0x0150 }
                org.json.JSONObject r5 = r5.mLockResult     // Catch:{ all -> 0x0150 }
                if (r5 != 0) goto L_0x0105
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r5 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ all -> 0x0150 }
                org.json.JSONObject r6 = new org.json.JSONObject     // Catch:{ all -> 0x0150 }
                r6.<init>()     // Catch:{ all -> 0x0150 }
                org.json.JSONObject unused = r5.mLockResult = r6     // Catch:{ all -> 0x0150 }
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r5 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ JSONException -> 0x00ed }
                org.json.JSONObject r5 = r5.mLockResult     // Catch:{ JSONException -> 0x00ed }
                java.lang.String r6 = "result"
                java.lang.String r7 = "error"
                r5.put(r6, r7)     // Catch:{ JSONException -> 0x00ed }
                goto L_0x0105
            L_0x00ed:
                r5 = move-exception
                java.lang.String r6 = "S HealthMonitor - WearableEcgManager"
                java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x0150 }
                java.lang.String r1 = " [] Exception : "
                r7.<init>(r1)     // Catch:{ all -> 0x0150 }
                java.lang.String r5 = com.samsung.android.shealthmonitor.util.LOG.getStackTraceString(r5)     // Catch:{ all -> 0x0150 }
                r7.append(r5)     // Catch:{ all -> 0x0150 }
                java.lang.String r5 = r7.toString()     // Catch:{ all -> 0x0150 }
                com.samsung.android.shealthmonitor.util.LOG.e(r6, r5)     // Catch:{ all -> 0x0150 }
            L_0x0105:
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r4 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ all -> 0x0150 }
                java.lang.Object r4 = r4.mLock     // Catch:{ all -> 0x0150 }
                goto L_0x00af
            L_0x010c:
                monitor-exit(r0)     // Catch:{ all -> 0x0150 }
                return
            L_0x010e:
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r6 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ all -> 0x0150 }
                org.json.JSONObject r6 = r6.mLockResult     // Catch:{ all -> 0x0150 }
                if (r6 != 0) goto L_0x0146
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r6 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ all -> 0x0150 }
                org.json.JSONObject r7 = new org.json.JSONObject     // Catch:{ all -> 0x0150 }
                r7.<init>()     // Catch:{ all -> 0x0150 }
                org.json.JSONObject unused = r6.mLockResult = r7     // Catch:{ all -> 0x0150 }
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r6 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ JSONException -> 0x012e }
                org.json.JSONObject r6 = r6.mLockResult     // Catch:{ JSONException -> 0x012e }
                java.lang.String r7 = "result"
                java.lang.String r1 = "error"
                r6.put(r7, r1)     // Catch:{ JSONException -> 0x012e }
                goto L_0x0146
            L_0x012e:
                r6 = move-exception
                java.lang.String r7 = "S HealthMonitor - WearableEcgManager"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0150 }
                java.lang.String r2 = " [] Exception : "
                r1.<init>(r2)     // Catch:{ all -> 0x0150 }
                java.lang.String r6 = com.samsung.android.shealthmonitor.util.LOG.getStackTraceString(r6)     // Catch:{ all -> 0x0150 }
                r1.append(r6)     // Catch:{ all -> 0x0150 }
                java.lang.String r6 = r1.toString()     // Catch:{ all -> 0x0150 }
                com.samsung.android.shealthmonitor.util.LOG.e(r7, r6)     // Catch:{ all -> 0x0150 }
            L_0x0146:
                com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r4 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.this     // Catch:{ all -> 0x0150 }
                java.lang.Object r4 = r4.mLock     // Catch:{ all -> 0x0150 }
                r4.notifyAll()     // Catch:{ all -> 0x0150 }
                throw r5     // Catch:{ all -> 0x0150 }
            L_0x0150:
                r4 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x0150 }
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.AnonymousClass2.onResult(java.lang.String, int, java.lang.String):void");
        }
    };
    private String mUuidForUpdateCalibration;

    public static synchronized WearableEcgManager getInstance() {
        WearableEcgManager wearableEcgManager;
        synchronized (WearableEcgManager.class) {
            if (mInstance == null) {
                mInstance = new WearableEcgManager();
            }
            wearableEcgManager = mInstance;
        }
        return wearableEcgManager;
    }

    public WearableEcgManager() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.samsung.wearable.app.health.samd.ecg");
        ContextHolder.getContext().registerReceiver(this.mBrReceiver, intentFilter);
    }

    private JSONObject makeRequest(String str, boolean z) {
        if (!z) {
            return makeRequestBody(str, (Pair[]) null);
        }
        return makeRequestBody(str, new Pair[]{Pair.create("status", "complete")});
    }

    private JSONObject makeRequestBody(String str, Pair[] pairArr) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "request");
            jSONObject.put("action", str);
            if (pairArr != null && pairArr.length > 0) {
                JSONObject jSONObject2 = new JSONObject();
                for (int i = 0; i < pairArr.length; i++) {
                    jSONObject2.put((String) pairArr[i].first, pairArr[i].second);
                }
                jSONObject.put("data", jSONObject2);
            }
            LOG.i(TAG, " [makeRequest] body = " + jSONObject.toString());
        } catch (JSONException e) {
            LOG.e(TAG, " Exception : " + e.toString() + LOG.getStackTraceString(e));
        }
        return jSONObject;
    }

    private JSONObject makeRequest(String str, int i, int i2, int i3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "request");
            jSONObject.put("action", str);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ref_systolic", i);
            jSONObject2.put("ref_diastolic", i2);
            jSONObject2.put("nth", i3);
            synchronized (this) {
                if (this.mUuidForUpdateCalibration != null && !this.mUuidForUpdateCalibration.isEmpty()) {
                    jSONObject2.put("datauuid", this.mUuidForUpdateCalibration);
                    this.mUuidForUpdateCalibration = null;
                }
            }
            jSONObject.put("data", jSONObject2);
            LOG.i(TAG, " [makeRequest] body = " + jSONObject.toString());
        } catch (JSONException e) {
            LOG.e(TAG, " Exception : " + e.toString() + LOG.getStackTraceString(e));
        }
        return jSONObject;
    }

    private JSONObject makeRequest(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "request");
            jSONObject.put("action", str);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("app_version_code", str2);
            jSONObject.put("data", jSONObject2);
            LOG.i(TAG, " [makeRequest] body = " + jSONObject.toString());
        } catch (JSONException e) {
            LOG.e(TAG, " Exception : " + e.toString() + LOG.getStackTraceString(e));
        }
        return jSONObject;
    }

    private JSONObject waitLock() {
        synchronized (this.mLock) {
            try {
                this.mLock.wait(50000);
            } catch (InterruptedException e) {
                LOG.e(TAG, " [waitLock] Exception : " + LOG.getStackTraceString(e));
            }
        }
        return this.mLockResult;
    }

    private boolean waitLockIsSuccess() {
        try {
            this.mLock.wait(50000);
            if (this.mLockResult != null) {
                return this.mLockResult.getString("result").equalsIgnoreCase("success");
            }
            return false;
        } catch (Exception e) {
            LOG.e(TAG, " [waitLock] Exception : " + LOG.getStackTraceString(e));
            return false;
        }
    }

    private boolean doRequestMessage(String str) {
        return doRequestMessage(str, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING);
    }

    private boolean doRequestMessage(String str, String str2, String str3) {
        boolean waitLockIsSuccess;
        synchronized (this.mLock) {
            WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, str2, str3, str, this.mResultListener);
            waitLockIsSuccess = waitLockIsSuccess();
        }
        return waitLockIsSuccess;
    }

    public int sendTermsAndConditionRequest(WearableMessageManager.ResultListener resultListener) {
        return WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING, makeRequest("terms_and_condition", true).toString(), resultListener);
    }

    public boolean sendTermsAndConditionRequestSync() {
        return doRequestMessage(makeRequest("terms_and_condition", true).toString());
    }


  public int sendOnboardingRequest(WearableMessageManager.ResultListener resultListener) {
    return WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING, makeRequest("onboarding", true).toString(), resultListener);
  }

  public boolean sendOnboardingRequestSync() {
    return doRequestMessage(makeRequest("initiate_calibration", true).toString());
  }

  public int sendInitiateCalibrationRequest(WearableMessageManager.ResultListener resultListener) {
        return WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING, makeRequest("initiate_calibration", true).toString(), resultListener);
    }

    public boolean sendInitiateCalibrationRequestSync() {
        return doRequestMessage(makeRequest("initiate_calibration", true).toString());
    }

    public int sendPreCalibrationRequest(WearableMessageManager.ResultListener resultListener) {
        return WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING, makeRequest("prepare_calibration", false).toString(), resultListener);
    }

    public boolean sendPreCalibrationRequestSync() {
        return doRequestMessage(makeRequest("prepare_calibration", false).toString());
    }

    public int sendInitialCalibrationRequest(WearableMessageManager.ResultListener resultListener) {
        JSONObject jSONObject;
        if (EcgSharedPreferenceHelper.getLastEcgCalibrationTime() > 0) {
            jSONObject = makeRequest("re_calibration", true);
        } else {
            jSONObject = makeRequest("initial_calibration", true);
        }
        return WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING, jSONObject.toString(), resultListener);
    }

    public boolean sendInitialCalibrationRequestSync() {
        JSONObject jSONObject;
        if (EcgSharedPreferenceHelper.getInitialCalibrationComplete()) {
            jSONObject = makeRequest("re_calibration", true);
        } else {
            jSONObject = makeRequest("initial_calibration", true);
        }
        return doRequestMessage(jSONObject.toString());
    }

    public int readyEcgCalibration(WearableMessageManager.ResultListener resultListener) {
        return WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING, makeRequest("ready_calibration", false).toString(), resultListener);
    }

    public boolean readyEcgCalibrationSync() {
        return doRequestMessage(makeRequest("ready_calibration", false).toString());
    }

    public int startEcgCalibration(WearableMessageManager.ResultListener resultListener) {
        return WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING, makeRequest("start_calibration", false).toString(), resultListener);
    }

    public boolean startEcgCalibrationSync() {
        return doRequestMessage(makeRequest("start_calibration", false).toString());
    }

    public int updateEcgCalibration(int i, int i2, int i3, WearableMessageManager.ResultListener resultListener) {
        return WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING, makeRequest("update_calibration", i, i2, i3).toString(), resultListener);
    }

    public boolean updateEcgCalibrationSync(int i, int i2, int i3) {
        return doRequestMessage(makeRequest("update_calibration", i, i2, i3).toString());
    }

    public int startEstimation(WearableMessageManager.ResultListener resultListener) {
        return WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING, makeRequest("start_estimation", false).toString(), resultListener);
    }

    public JSONObject startEstimationSync() {
        WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING, makeRequest("start_estimation", false).toString(), this.mResultListener);
        return waitLock();
    }

    public int cancelCalibration(String str, WearableMessageManager.ResultListener resultListener) {
        return WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_MEASURING, RECEIVER_ECG_MEASURING, makeRequestBody("cancel_calibration", new Pair[]{Pair.create("next_action", str)}).toString(), resultListener);
    }

    public boolean cancelCalibrationSync() {
        return doRequestMessage(makeRequest("cancel_calibration", false).toString());
    }

    public int sendEcgForceUpdateRequest(String str, WearableMessageManager.ResultListener resultListener) {
        return WearableMessageManager.getInstance().requestMessage(WearableMessageData.TypeValue.MESSAGE, SENDER_ECG_COMMON, RECEIVER_ECG_COMMON, makeRequest("force_update", str).toString(), resultListener);
    }

    public boolean sendMakeDemoRequestSync() {
        return doRequestMessage(makeRequestBody("create_demo", new Pair[]{Pair.create("day", 27)}).toString(), SENDER_ECG_COMMON, RECEIVER_ECG_COMMON);
    }

    public void setUuidForUpdateCalibration(String str) {
        LOG.i(TAG, " [setUuidForUpdateCalibration] String : " + str);
        synchronized (this) {
            this.mUuidForUpdateCalibration = str;
        }
    }
}

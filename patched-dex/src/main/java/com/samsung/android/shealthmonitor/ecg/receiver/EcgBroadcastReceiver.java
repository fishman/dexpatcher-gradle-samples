package com.samsung.android.shealthmonitor.ecg.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.samsung.android.shealthmonitor.ecg.control.EcgJobService;
import com.samsung.android.shealthmonitor.bp.control.BpReCalibrationController;
import com.samsung.android.shealthmonitor.ecg.helper.EcgSharedPreferenceHelper;
import com.samsung.android.shealthmonitor.ecg.manager.CalibrationState;
import com.samsung.android.shealthmonitor.ecg.manager.StateManager;
import com.samsung.android.shealthmonitor.bp.util.JsonUtil;
import com.samsung.android.shealthmonitor.controller.ControlInterface;
import com.samsung.android.shealthmonitor.controller.ControlManager;
import com.samsung.android.shealthmonitor.data.InformationJsonObject;
import com.samsung.android.shealthmonitor.helper.ContextHolder;
import com.samsung.android.shealthmonitor.helper.IntentAction;
import com.samsung.android.shealthmonitor.helper.SharedPreferenceHelper;
import com.samsung.android.shealthmonitor.util.CommonConstants;
import com.samsung.android.shealthmonitor.util.LOG;
import com.samsung.android.shealthmonitor.util.Utils;
import com.samsung.android.shealthmonitor.wearable.device.Node;
import com.samsung.android.shealthmonitor.wearable.device.NodeMonitor;
import com.samsung.android.shealthmonitor.wearable.sync.WearableSyncManager;
import com.samsung.android.shealthmonitor.wearable.wearablemessage.WearableMessageData;
import com.samsung.android.shealthmonitor.wearable.wearablemessage.WearableMessageManager;
import org.json.JSONException;
import org.json.JSONObject;

public class EcgBroadcastReceiver extends BroadcastReceiver {
    private static final String TAG = "S HealthMonitor - EcgBroadcastReceiver";
    private static boolean mLaunchSetup;
    private WearableMessageManager.MessageDataListener mWMessageDataListener = new WearableMessageManager.MessageDataListener() {
        public void onDataReceived(Intent intent, String str) {
            boolean z;
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("action");
                LOG.d(EcgBroadcastReceiver.TAG, "onDataReceived() value: " + string);
                if (string.equals(WearableMessageData.Information.ACTION_VALUE)) {
                    LOG.d(EcgBroadcastReceiver.TAG, "onDataReceived() start information: ");
                    String string2 = jSONObject.getString("data");
                    try {
                        JSONObject jSONObject2 = new JSONObject(string2);
                        z = EcgBroadcastReceiver.this.tempProcessTnc(jSONObject2);
                            long calibrationTime = JsonUtil.getCalibrationTime(jSONObject2);
                            boolean access$100 = EcgBroadcastReceiver.this.getNeedToReset(jSONObject2);
                            boolean access$200 = EcgBroadcastReceiver.this.getNeedToCal(jSONObject2, calibrationTime);
                            if (access$100) {
                                LOG.d(EcgBroadcastReceiver.TAG, "Need device reset!!");
                                BpReCalibrationController.resetForReCalibration();
                                z = true;
                            } else if (access$200) {
                                LOG.d(EcgBroadcastReceiver.TAG, "Need calibration!!");
                                BpReCalibrationController.resetForReCalibration();
                            } else if (EcgSharedPreferenceHelper.getLastEcgCalibrationTime() != calibrationTime && !z) {
                                LOG.d(EcgBroadcastReceiver.TAG, "Device changed, update calibration time");
                                EcgSharedPreferenceHelper.setEcgCalibrationState(CalibrationState.FIRST_READY.name());
                                EcgSharedPreferenceHelper.setEcgCurrentCalibrationStepTime(-1);
                                BpReCalibrationController.removeBpCalibrationNoti();
                                StateManager.settingForCompletedCalibration(calibrationTime);
                                Utils.sendMainRefreshMessage();
                            }
                    } catch (JSONException unused2) {
                        z = false;
                        LOG.e(EcgBroadcastReceiver.TAG, "No value for need_to_recal");
                        EcgSharedPreferenceHelper.setWearableInformation(string2);
                        LOG.d(EcgBroadcastReceiver.TAG, "onDataReceived() setWearableInformation: done");
                        EcgBroadcastReceiver.this.sendInformationResponse(intent, string, z);
                        LOG.d(EcgBroadcastReceiver.TAG, "onDataReceived() " + str);
                    }
                    EcgSharedPreferenceHelper.setWearableInformation(string2);
                    LOG.d(EcgBroadcastReceiver.TAG, "onDataReceived() setWearableInformation: done");
                    EcgBroadcastReceiver.this.sendInformationResponse(intent, string, z);
                } else if (string.equals("check_update")) {
                    jSONObject.put("result", "success");
                    WearableMessageManager.getInstance().responseMessage(intent, jSONObject.toString());
                    EcgJobService.setEcgUpdataCheckTask();
                } else {
                    LOG.d(EcgBroadcastReceiver.TAG, "Not defined action");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            LOG.d(EcgBroadcastReceiver.TAG, "onDataReceived() " + str);
        }
    };

    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getAction() == null) {
            LOG.d(TAG, "onReceive() intent or action is null");
        } else if (intent.getAction().equals(CommonConstants.ACTION_TNC_SYNC)) {
            synchronizeTnc();
        } else if (intent.getAction().equals(CommonConstants.ACTION_CHECK_WEARABLE_SETUP)) {
            checkWearableSetup();
        } else if (intent.getAction().equals(WearableSyncManager.WearableDataSync.ACTION_DATA_UPDATED)) {
            ControlInterface controllerInterface = ControlManager.getInstance().getControllerInterface(ControlManager.SUPPORT_CONTROLLER_BP);
            if (controllerInterface != null) {
                controllerInterface.onSyncComplete(intent.getIntExtra(WearableSyncManager.WearableDataSync.EXTRA_RESULT, 2));
            }
        } else {
            LOG.d(TAG, "onReceive() " + intent.getAction());
            WearableMessageManager.getInstance().registerMessageDataListener(intent, this.mWMessageDataListener);
        }
    }

    /* access modifiers changed from: private */
    public boolean getNeedToReset(JSONObject jSONObject) {
        return JsonUtil.getNeedToCalibration(jSONObject);
    }

    /* access modifiers changed from: private */
    public boolean getNeedToCal(JSONObject jSONObject, long j) {
        InformationJsonObject wearableInformation = EcgSharedPreferenceHelper.getWearableInformation();
        String btAddress = wearableInformation != null ? wearableInformation.getBtAddress() : null;
        String btAddress2 = JsonUtil.getBtAddress(jSONObject);
        LOG.d(TAG, "oldBtAddress: " + btAddress + " newBtAddress: " + btAddress2);
        return j == -1 && btAddress != null && !btAddress.equals(btAddress2);
    }

    /* access modifiers changed from: private */
    public void sendInformationResponse(Intent intent, String str, boolean z) {
        JSONObject jSONObject = new JSONObject();
        LOG.i(TAG, " [sendInformationResponse] start : " + z);
        try {
            jSONObject.put("type", "response");
            jSONObject.put("action", str);
            if (z) {
                LOG.i(TAG, " [sendInformationResponse] Set wearable reset!!!");
                jSONObject.put("data", new JSONObject().put("reset", true));
            }
            WearableMessageManager.getInstance().responseMessage(intent, jSONObject.toString());
            LOG.d(TAG, "onDataReceived() responseMessage: done");
            LOG.d(TAG, "information response: " + jSONObject.toString());
        } catch (JSONException e) {
            LOG.e(TAG, " [sendInformationResponse] Exception : " + LOG.getStackTraceString(e));
        }
    }

    /* access modifiers changed from: private */
    public boolean tempProcessTnc(JSONObject jSONObject) {
        LOG.i(TAG, " [tempProcessTnc] start ");
        try {
            boolean z = jSONObject.getBoolean(Node.InformationKey.TNC);
            LOG.i(TAG, " [tempProcessTnc] Wearable TnC : " + z + ", mobile TnC :" + EcgSharedPreferenceHelper.getTncComplete());
            if (!z && EcgSharedPreferenceHelper.getTncComplete()) {
                LOG.i(TAG, " [tempProcessTnc] send TnC to wearable.");
                BpReCalibrationController.resetForReCalibration();
                launchSetupActivity();
                return false;
            } else if (z && !EcgSharedPreferenceHelper.getTncComplete()) {
                return true;
            } else {
                if (Utils.isConnectedDevice(jSONObject.getString(Node.InformationKey.DEVICE_ID)) || !EcgSharedPreferenceHelper.getTncComplete()) {
                    if (!EcgSharedPreferenceHelper.getTncComplete() && !z && SharedPreferenceHelper.getAppInit()) {
                        synchronizeTnc();
                    }
                    return false;
                }
                launchSetupActivity();
                return true;
            }
        } catch (JSONException e) {
            LOG.e(TAG, " [tempProcessTnc] Exception : " + LOG.getStackTraceString(e));
        }
		return false;
    }

    private void launchSetupActivity() {
        if (Utils.isAppOnForeground()) {
            try {
                Intent intent = new Intent(ContextHolder.getContext(), Class.forName("com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorSetupActivity"));
                intent.setFlags(335544320);
                intent.putExtra(IntentAction.EXTRA_KEY_NEW_DEVICE, true);
                ContextHolder.getContext().startActivity(intent);
            } catch (ClassNotFoundException e) {
                LOG.e(TAG, " Exception : class not found = " + e.toString());
            }
            LOG.e(TAG, " launchSetupActivity : mLaunchSetup = false");
            mLaunchSetup = false;
            return;
        }
        mLaunchSetup = true;
        LOG.e(TAG, " launchSetupActivity : mLaunchSetup = true");
    }

    private void synchronizeTnc() {
      new Thread(new Runnable() {
        @Override
        public void run() {
          // test
        }
      }).start();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x000a, code lost:
        r0 = com.samsung.android.shealthmonitor.wearable.device.NodeMonitor.getInstance().getConnectedEcgNode();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static final /* synthetic */ void receiverStuff() {
        /*
            com.samsung.android.shealthmonitor.wearable.device.NodeMonitor r0 = com.samsung.android.shealthmonitor.wearable.device.NodeMonitor.getInstance()
            boolean r0 = r0.isConnectedEcgNode()
            if (r0 == 0) goto L_0x001d
            com.samsung.android.shealthmonitor.wearable.device.NodeMonitor r0 = com.samsung.android.shealthmonitor.wearable.device.NodeMonitor.getInstance()
            com.samsung.android.shealthmonitor.wearable.device.Node r0 = r0.getConnectedEcgNode()
            if (r0 == 0) goto L_0x001d
            java.lang.String r1 = "device_id"
            java.lang.Object r0 = r0.getInformation(r1)
            java.lang.String r0 = (java.lang.String) r0
            goto L_0x001e
        L_0x001d:
            r0 = 0
        L_0x001e:
            com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager r1 = com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.getInstance()
            boolean r1 = r1.sendTermsAndConditionRequestSync()
            if (r1 == 0) goto L_0x0031
            if (r0 == 0) goto L_0x002d
            com.samsung.android.shealthmonitor.helper.SharedPreferenceHelper.setConnectedDevice(r0)
        L_0x002d:
            r0 = 1
            com.samsung.android.shealthmonitor.bp.helper.EcgSharedPreferenceHelper.setTncComplete(r0)
        L_0x0031:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.shealthmonitor.bp.receiver.EcgBroadcastReceiver.lambda$synchronizeTnc$0$EcgBroadcastReceiver():void");
    }

    private void checkWearableSetup() {
        if (NodeMonitor.getInstance().isConnectedBpNode() && mLaunchSetup) {
            LOG.e(TAG, " checkWearableSetup : mLaunchSetup = true");
            launchSetupActivity();
        }
    }
}

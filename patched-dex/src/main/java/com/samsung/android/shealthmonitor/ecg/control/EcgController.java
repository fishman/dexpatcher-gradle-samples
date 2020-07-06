package com.samsung.android.shealthmonitor.ecg.control;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.widget.FrameLayout;
import com.samsung.android.shealthmonitor.ecg.helper.EcgSharedPreferenceHelper;
import com.samsung.android.shealthmonitor.ecg.manager.WearableEcgManager;
import com.samsung.android.shealthmonitor.ecg.receiver.EcgDateTimeChangeReceiver;
import com.samsung.android.shealthmonitor.ecg.roomdata.manager.DataRoomEcgManager;
import com.samsung.android.shealthmonitor.bp.ui.card.SHealthMonitorBpCard;
import com.samsung.android.shealthmonitor.bp.ui.card.SHealthMonitorBpTopCard;
import com.samsung.android.shealthmonitor.bp.util.DemoUtil;
import com.samsung.android.shealthmonitor.controller.ControlInterface;
import com.samsung.android.shealthmonitor.data.HealthSdkHelperInterface;
import com.samsung.android.shealthmonitor.data.InformationJsonObject;
import com.samsung.android.shealthmonitor.helper.SharedPreferenceHelper;
import com.samsung.android.shealthmonitor.ui.view.ProtoTypeTopView;
import com.samsung.android.shealthmonitor.ui.view.ProtoTypeView;
import com.samsung.android.shealthmonitor.util.LOG;
import com.samsung.android.shealthmonitor.util.Utils;
import com.samsung.android.shealthmonitor.wearable.device.Node;
import com.samsung.android.shealthmonitor.wearable.device.NodeMonitor;
import com.samsung.android.shealthmonitor.wearable.sync.WearableSyncManager;

public class EcgController implements ControlInterface {
    private static final String TAG = "S HealthMonitor - EcgController";
    private static EcgController sInstance;
    private SHealthMonitorBpCard mBpCard = null;
    private SHealthMonitorBpTopCard mBpTopCard = null;
    private ControlInterface.ISyncResultListener mSyncResultListener;

    public static EcgController getInstance() {
        return sInstance;
    }

    public EcgController() {
        LOG.i(TAG, " [EcgController] constructor ");
        sInstance = this;
        this.mBpCard = null;
        this.mBpTopCard = null;
    }

    public void initInterface() {
        DataRoomEcgManager.getInstance();
    }

    public void onUpdate() {
        // EcgUpdateController.getInstance().showUpdateDialog();
    }

    public int isValid(Object obj) {
        if (!(obj instanceof Node)) {
            return 1;
        }
        Node node = (Node) obj;
        return (!((Boolean) node.getInformation(Node.InformationKey.TNC)).booleanValue() || !EcgSharedPreferenceHelper.getTncComplete() || !Utils.isConnectedDevice((String) node.getInformation(Node.InformationKey.DEVICE_ID))) ? 1 : 0;
    }

    public ProtoTypeView getCardView(Context context) {
        if (!(this.mBpCard == null || this.mBpCard.getContext() == context)) {
            LOG.e(TAG, " context is changed!!!");
            this.mBpCard.removeAllViews();
            this.mBpCard.clearView();
            this.mBpCard = null;
        }
        if (this.mBpCard == null) {
            this.mBpCard = new SHealthMonitorBpCard(context);
            this.mBpCard.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        }
        if (!EcgSharedPreferenceHelper.getTncComplete()) {
            new Thread(EcgController$$Lambda$0.$instance).start();
        }
        return this.mBpCard;
    }

    static final /* synthetic */ void lambda$getCardView$0$EcgController() {
        String str;
        if (WearableEcgManager.getInstance().sendTermsAndConditionRequestSync()) {
            Node connectedBpNode = NodeMonitor.getInstance().getConnectedBpNode();
            if (!(connectedBpNode == null || (str = (String) connectedBpNode.getInformation(Node.InformationKey.DEVICE_ID)) == null || str.isEmpty())) {
                SharedPreferenceHelper.setConnectedDevice((String) connectedBpNode.getInformation(Node.InformationKey.DEVICE_ID));
            }
            EcgSharedPreferenceHelper.setTncComplete(true);
        }
    }

    public ProtoTypeTopView getTopCardView(Context context) {
        if (!(this.mBpTopCard == null || this.mBpTopCard.getContext() == context)) {
            this.mBpTopCard.removeAllViews();
            this.mBpTopCard = null;
        }
        if (this.mBpTopCard == null) {
            this.mBpTopCard = new SHealthMonitorBpTopCard(context);
            this.mBpTopCard.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        }
        this.mBpTopCard.setVisibility(this.mBpTopCard.needToRemoveCard() ? 8 : 0);
        return this.mBpTopCard;
    }

    public InformationJsonObject getInformation() {
        return EcgSharedPreferenceHelper.getWearableInformation();
    }

    public boolean isErrorDemo() {
        return DemoUtil.isErrorDemo();
    }

    public void setErrorDemo(boolean z) {
        DemoUtil.setErrorDemo(z);
    }

    public void requestSync(ControlInterface.ISyncResultListener iSyncResultListener) {
        this.mSyncResultListener = iSyncResultListener;
        WearableSyncManager.getInstance().syncRequest(WearableSyncManager.RequestModule.UI);
    }

    public void onSyncComplete(int i) {
        if (this.mSyncResultListener != null) {
            this.mSyncResultListener.onComplete(i);
        }
    }

    public BroadcastReceiver getDateChangeBroadcastReceiver() {
        return new EcgDateTimeChangeReceiver();
    }

    public HealthSdkHelperInterface getHealthSdkHelper() {
        return new EcgHealthSdkHelper();
    }

    public void setEnableNotification(boolean z) {
        // if (z) {
        //     BpReCalibrationController.enableAllSchedule();
        // } else {
        //     BpReCalibrationController.disableAllSchedule();
        // }
    }

    public void forceRefreshTopCard() {
        if (this.mBpTopCard != null) {
            this.mBpTopCard.onResume();
        }
    }

    public void clearView(Context context) {
        if (this.mBpCard != null) {
            if (this.mBpCard.getContext() != context) {
                LOG.i(TAG, " already free.");
                return;
            } else {
                this.mBpCard.clearView();
                this.mBpCard = null;
            }
        }
        if (this.mBpTopCard != null) {
            this.mBpTopCard.clearView();
            this.mBpTopCard.removeAllViews();
            this.mBpTopCard = null;
        }
    }
}

package com.samsung.android.shealthmonitor.wearable.device;

import android.content.Context;
import android.content.Intent;
import com.samsung.android.shealthmonitor.helper.ContextHolder;
import com.samsung.android.shealthmonitor.wearable.sapconnectivity.WearableSaAgentManager;
import com.samsung.android.shealthmonitor.wearable.utils.WLOG;
import com.samsung.android.shealthmonitor.wearable.utils.WearableSharedPreference;
import com.samsung.android.shealthmonitor.wearable.wearablemessage.WearableMessageManager;
import io.reactivex.subjects.BehaviorSubject;
import lanchon.dexpatcher.annotation.*;

import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@DexEdit(staticConstructorAction = DexAction.IGNORE)
public class NodeMonitor {
  @DexIgnore
  private static final String TAG = "S HealthMonitor - NodeMonitor";
  @DexIgnore
  private static final NodeMonitor mInstance = new NodeMonitor();
  @DexIgnore
  private Node mConnectBpNode = null;
  @DexAdd
  private Node mConnectEcgNode = null;
  @DexIgnore
  private NodeListener mNodeListener = null;
  //private NodeListener mNodeListener = new NodeMonitor$$Lambda$0(this);
  @DexIgnore
  private BehaviorSubject<Node> mSubject = BehaviorSubject.create();

  @DexIgnore
  public static class ConnectionStatusChange {
    public static final String ACTION = "com.samsung.android.samd.bp.wearable.CONNECTION_STATUS_CHANGE";
    public static final String EXTRA_IS_CONNECTED = "EXTRA_IS_CONNECTED";
    public static final String EXTRA_NODE = "EXTRA_NODE";
  }

  @DexIgnore
  public interface NodeListener {
    void onChanged(Node node);
  }

  @DexIgnore
  private NodeMonitor() {
    WLOG.d0(TAG, "NodeMonitorInternal() +");
    init();
    WLOG.d0(TAG, "NodeMonitorInternal() -");
  }

  @DexIgnore
  public static NodeMonitor getInstance() {
    return mInstance;
  }

  @DexIgnore
  private void init() {
    WLOG.d0(TAG, "init() start");
    initNodeMonitor();
    WLOG.d0(TAG, "init() end");
  }

  @DexIgnore
  public Node getConnectedBpNode(String str) {
    if (this.mConnectBpNode == null) {
      return null;
    }
    if (this.mConnectBpNode.getId().equals(str)) {
      return this.mConnectBpNode;
    }
    WLOG.d(TAG, "getConnectedBpNode() id mismatch.", "mConnectedBpNode ID : " + this.mConnectBpNode.getId() + ", Request ID : " + str);
    return null;
  }

  @DexIgnore
  public Node getConnectedBpNode() {
    if (this.mConnectBpNode != null) {
      return this.mConnectBpNode;
    }
    WLOG.e(TAG, "getConnectedBpNode() bpNode is null.");
    return null;
  }

  @DexIgnore
  public boolean isConnectedBpNode() {
    return this.mConnectBpNode != null;
  }

  @DexIgnore
  private synchronized void createOrUpdateBpNode(String str, String str2, String str3) {
    boolean z;
    if (this.mConnectBpNode == null || !this.mConnectBpNode.getId().equals(str)) {
      z = true;
    } else {
      z = false;
      this.mConnectBpNode = null;
      this.mConnectBpNode = makeNode(str, str2, str3);
      WLOG.d(TAG, "createOrUpdateBpNode() replace", " : " + str);
    }
    if (z) {
      this.mConnectBpNode = null;
      this.mConnectBpNode = makeNode(str, str2, str3);
      sendBroadcastToApp(makeNode(str, str2, str3), true);
      WLOG.d(TAG, "createOrUpdateBpNode() create", " : " + str);
    }
    WLOG.d(TAG, "createOrUpdateBpNode() finish.");
  }

  @DexIgnore
  private void removeBpNode(String str) {
    if (this.mConnectBpNode == null) {
      WLOG.d(TAG, "removeBpNode() mConnectBpNode is null", "id : " + str);
    } else if (!this.mConnectBpNode.getId().equals(str)) {
      WLOG.d(TAG, "removeBpNode() mConnectBpNode is mismatch.", "mConnectBpNode ID : " + this.mConnectBpNode.getId() + ", Request ID : " + str);
    } else {
      Node makeNode = makeNode(this.mConnectBpNode.getId(), this.mConnectBpNode.getBtAddress(), this.mConnectBpNode.getInformation().toString());
      if (makeNode == null) {
        WLOG.e0(TAG, "removeBpNode() tmpNode is null.");
        return;
      }
      this.mConnectBpNode = null;
      makeNode.setConnectionStatus(1);
      sendBroadcastToApp(makeNode, false);
      WearableMessageManager.getInstance().clearResultListener();
      WLOG.d(TAG, "removeBpNode() remove success.", "id : " + str);
    }
  }

  @DexIgnore
  private void sendBroadcastToApp(Node node, boolean z) {
    Context context = ContextHolder.getContext();
    Intent intent = new Intent(ConnectionStatusChange.ACTION);
    intent.putExtra("EXTRA_NODE", node);
    intent.putExtra(ConnectionStatusChange.EXTRA_IS_CONNECTED, z);
    intent.setPackage(context.getPackageName());
    WLOG.d(TAG, "sendBroadcastToApp() Node name : " + node.getName() + ", isConnected : " + z);
    context.sendBroadcast(intent);
    this.mNodeListener.onChanged(node);
  }

  @DexIgnore
  private Node makeNode(String str, String str2, String str3) {
    try {
      return new Node(str, str2, 2, new JSONObject(str3));
    } catch (NullPointerException | JSONException e) {
      WLOG.logThrowable(TAG, e);
      return null;
    }
  }

  @DexReplace
  private void initNodeMonitor() {
    WLOG.d0(TAG, "initNodeMonitor() start");
    List<String> sapConnectedDeviceList = WearableSaAgentManager.getInstance().getSapConnectedDeviceList();
    if (sapConnectedDeviceList == null) {
      WLOG.d0(TAG, "initNodeMonitor() sapConnectedDeviceList is null");
      return;
    }
    for (String next : sapConnectedDeviceList) {
      String information = WearableSharedPreference.getInformation(next);
      WLOG.v(TAG, "nodemonitor information: " + information);
      String deviceId = WearableSharedPreference.getDeviceId(next);
      if (WearableSharedPreference.DEFAULT_STRING.equals(information)) {
        WLOG.e0(TAG, "initNodeMonitor() Information is not received.");
      } else if (WearableSharedPreference.DEFAULT_STRING.equals(deviceId)) {
        WLOG.e0(TAG, "initNodeMonitor() deviceId is not exist.");
        return;
      } else {
        createOrUpdateBpNode(deviceId, next, information);
      }
    }
  }

  @DexReplace
  public void onReceiveConnectionStatusChange(String str, boolean z) {
    WLOG.d(TAG, "onReceiveConnectionStatusChange_connectionStatus()", "id : " + str + ", isConnected : " + z);
    if (z) {
      String information = WearableSharedPreference.getInformation(str);
      String deviceId = WearableSharedPreference.getDeviceId(str);
      WLOG.v(TAG, "nodemonitor information: " + information);
      if (WearableSharedPreference.DEFAULT_STRING.equals(information)) {
        WLOG.e0(TAG, "onReceiveConnectionStatusChange() deviceInformation is not exist.");
      } else if (WearableSharedPreference.DEFAULT_STRING.equals(deviceId)) {
        WLOG.e0(TAG, "onReceiveConnectionStatusChange() deviceId is not exist.");
      } else {
        createOrUpdateBpNode(deviceId, str, information);
      }
    } else {
      String deviceId2 = WearableSharedPreference.getDeviceId(str);
      if (WearableSharedPreference.DEFAULT_STRING.equals(deviceId2)) {
        WLOG.e0(TAG, "onReceiveConnectionStatusChange() deviceId is not exist.");
      } else {
        removeBpNode(deviceId2);
      }
    }
  }
}

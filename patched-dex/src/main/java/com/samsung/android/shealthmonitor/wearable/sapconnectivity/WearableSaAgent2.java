package com.samsung.android.shealthmonitor.wearable.sapconnectivity;

import android.content.Context;
import com.samsung.android.sdk.SsdkUnsupportedException;
import com.samsung.android.sdk.accessory.SA;
import com.samsung.android.sdk.accessory.SAAgentV2;
import com.samsung.android.sdk.accessory.SAPeerAgent;
import com.samsung.android.sdk.accessory.SASocket;
import com.samsung.android.shealthmonitor.wearable.device.NodeMonitor;
import com.samsung.android.shealthmonitor.wearable.utils.WLOG;
import com.samsung.android.shealthmonitor.wearable.utils.WearableConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

public class WearableSaAgent2 extends SAAgentV2 {
  private static final long MAX_SUPPRESSION_TIME = 600000;
  private static final String TAG = "S HealthMonitor - WearableSaAgent2";
  public static long mLastFindPeerRequestTime;
  private final List<String> mConnectedDeviceList = new ArrayList();
  private final Queue<String> mDataQueue = new LinkedBlockingQueue();
  private WearableSaSocket mWearableSaSocket = null;

  public WearableSaAgent2(Context context) {
    super(TAG, context, WearableSaSocket.class);
    WLOG.d(TAG, "WearableSaAgent2() start");
    try {
      new SA().initialize(getApplicationContext());
    } catch (SsdkUnsupportedException e) {
      if (processUnsupportedException(e)) {
        return;
      }
    } catch (Exception e2) {
      WLOG.logThrowable(TAG, e2);
    }
    WLOG.d(TAG, "WearableSaAgent2() end");
  }

  /* access modifiers changed from: protected */
  public void onFindPeerAgentsResponse(SAPeerAgent[] sAPeerAgentArr, int i) {
    if (i == 0 && sAPeerAgentArr != null) {
      for (SAPeerAgent sAPeerAgent : sAPeerAgentArr) {
        WLOG.d(TAG, "onFindPeerAgentsResponse() Success.", "peerAgent : " + sAPeerAgent);
        refreshDeviceList(1, sAPeerAgent);
        requestServiceConnection(sAPeerAgent);
      }
    } else if (i == 1793) {
      WLOG.w(TAG, "onFindPeerAgentsResponse() : FINDPEER_DEVICE_NOT_CONNECTED");
    } else if (i == 1794) {
      WLOG.w(TAG, "onFindPeerAgentsResponse() : FINDPEER_SERVICE_NOT_FOUND");
    } else {
      WLOG.e(TAG, "onFindPeerAgentsResponse() invalid result : " + i);
    }
  }

  /* access modifiers changed from: protected */
  public void onServiceConnectionRequested(SAPeerAgent sAPeerAgent) {
    if (sAPeerAgent != null) {
      acceptServiceConnectionRequest(sAPeerAgent);
      WLOG.d(TAG, "onServiceConnectionRequested()", "peerAgent : " + sAPeerAgent);
      return;
    }
    WLOG.e(TAG, "onServiceConnectionRequested() peerAgent is null");
  }

  /* access modifiers changed from: protected */
  public void onServiceConnectionResponse(SAPeerAgent sAPeerAgent, SASocket sASocket, int i) {
    if (i == 0) {
      WLOG.d(TAG, "onServiceConnectionResponse() : CONNECTION_SUCCESS", "peerAgent : " + sAPeerAgent);
      this.mWearableSaSocket = (WearableSaSocket) sASocket;
      sendDataToGear();
    } else if (i == 1029) {
      WLOG.d(TAG, "onServiceConnectionResponse() : CONNECTION_ALREADY_EXIST", "peerAgent : " + sAPeerAgent);
    } else if (i == 1040) {
      WLOG.d(TAG, "onServiceConnectionResponse() : CONNECTION_DUPLICATE_REQUEST", "peerAgent : " + sAPeerAgent);
    } else {
      WLOG.e(TAG, "onServiceConnectionResponse()  invalid result. result : " + i);
    }
  }

  /* access modifiers changed from: protected */
  public void onError(SAPeerAgent sAPeerAgent, String str, int i) {
    super.onError(sAPeerAgent, str, i);
    WLOG.d(TAG, "onError() errorMessage : " + str, "peerAgent : " + sAPeerAgent);
  }

  /* access modifiers changed from: protected */
  public void onPeerAgentsUpdated(SAPeerAgent[] sAPeerAgentArr, int i) {
    WLOG.d(TAG, "onPeerAgentsUpdated() result : " + i);
    for (SAPeerAgent sAPeerAgent : sAPeerAgentArr) {
      WLOG.d(TAG, "onPeerAgentsUpdated()", "saPeerAgent : " + sAPeerAgent);
      refreshDeviceList(i, sAPeerAgent);
    }
  }

  public void findPeers() {
    if (this.mWearableSaSocket == null) {
      WLOG.w(TAG, "findPeers() : mConnection is Null");
    } else if (this.mWearableSaSocket.isConnected()) {
      WLOG.d(TAG, "findPeers() : mConnection is Connected. send data");
      refreshDeviceList(1, this.mWearableSaSocket.getConnectedPeerAgent());
      sendDataToGear();
      return;
    } else {
      WLOG.w(TAG, "findPeers() : mConnection is not Connected");
    }
    long currentTimeMillis = System.currentTimeMillis();
    if (currentTimeMillis - mLastFindPeerRequestTime < MAX_SUPPRESSION_TIME) {
      WLOG.d(TAG, "findPeers() Suppression find peer : " + (currentTimeMillis - mLastFindPeerRequestTime));
      return;
    }
    WLOG.d(TAG, "findPeers() request");
    mLastFindPeerRequestTime = currentTimeMillis;
    findPeerAgents();
  }

  private synchronized void sendDataToGear() {
    while (!this.mDataQueue.isEmpty()) {
      WLOG.d(TAG, "result : " + sendData(this.mDataQueue.poll()));
    }
  }

  private boolean sendData(String str) {
    if (this.mWearableSaSocket != null) {
      try {
        WLOG.d(TAG, "SASocket sended Data", " - " + str);
        this.mWearableSaSocket.secureSend(getServiceChannelId(0), str.getBytes(WearableConstants.Charset.name()));
        return true;
      } catch (IOException e) {
        WLOG.logThrowable(TAG, e);
        return false;
      }
    } else {
      startCommand(str);
      return false;
    }
  }

  public boolean closeConnection() {
    if (this.mWearableSaSocket == null) {
      return false;
    }
    this.mWearableSaSocket.close();
    this.mWearableSaSocket = null;
    return true;
  }

  private boolean processUnsupportedException(SsdkUnsupportedException ssdkUnsupportedException) {
    ssdkUnsupportedException.printStackTrace();
    int type = ssdkUnsupportedException.getType();
    if (type == 0 || type == 1) {
      WLOG.e(TAG, "errType : " + type);
    } else if (type == 2) {
      WLOG.e(TAG, "You need to install Samsung Accessory SDK to use this application.");
    } else if (type == 3) {
      WLOG.e(TAG, "You need to update Samsung Accessory SDK to use this application.");
    } else if (type == 4) {
      WLOG.e(TAG, "We recommend that you update your Samsung Accessory SDK before using this application.");
      return false;
    }
    return true;
  }

  public void startCommand(String str) {
    if (str == null) {
      WLOG.d(TAG, "onStartCommand() : data is null");
    } else {
      boolean offer = this.mDataQueue.offer(str);
      WLOG.d(TAG, "onStartCommand() : data insert in queue. result : " + offer);
    }
    findPeers();
  }

  private void refreshDeviceList(int i, SAPeerAgent sAPeerAgent) {
    String address = sAPeerAgent.getAccessory().getAddress();
    boolean z = false;
    if (i == 1) {
      Iterator<String> it = this.mConnectedDeviceList.iterator();
      while (true) {
        if (it.hasNext()) {
          if (address.equals(it.next())) {
            z = true;
            break;
          }
        } else {
          break;
        }
      }
      if (z) {
        WLOG.d(TAG, "refreshDeviceList() Already exist");
        return;
      }
      WLOG.d(TAG, "refreshDeviceList() Not exist.", "add : " + address);
      this.mConnectedDeviceList.add(address);
      NodeMonitor.getInstance().onReceiveConnectionStatusChange(address, true);
      return;
    }
    this.mConnectedDeviceList.remove(address);
    NodeMonitor.getInstance().onReceiveConnectionStatusChange(address, false);
  }

  /* access modifiers changed from: package-private */
  public List<String> getCurrentConnectedDeviceIdList() {
    return new ArrayList(this.mConnectedDeviceList);
  }
}

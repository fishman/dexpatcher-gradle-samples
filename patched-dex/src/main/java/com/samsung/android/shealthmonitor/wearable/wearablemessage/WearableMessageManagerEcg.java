package com.samsung.android.shealthmonitor.wearable.wearablemessage;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Base64;

import com.samsung.android.shealthmonitor.wearable.device.Node;
import com.samsung.android.shealthmonitor.wearable.device.NodeMonitor;
import com.samsung.android.shealthmonitor.wearable.utils.WLOG;
import com.samsung.android.shealthmonitor.wearable.utils.WearableUtil;

import org.json.JSONObject;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

@DexEdit(staticConstructorAction = DexAction.IGNORE)
public class WearableMessageManagerEcg {
  @DexIgnore
  private static final double LAST_SUPPORT_VERSION = 0.1d;
  @DexIgnore
  private static final String TAG = "S HealthMonitor - WearableMessageManager";
  @DexIgnore
  private static final WearableMessageManagerEcg mInstance = new WearableMessageManagerEcg();
  @DexIgnore
  private static final AtomicInteger mSequenceNumberAtomicInteger = new AtomicInteger(0);
  @DexIgnore
  private final Map<String, MessageDataListener> mMessageDataListenerMap = new ConcurrentHashMap();
  @DexIgnore
  private final Queue<MessageData> mMessageDataQueue = new LinkedBlockingDeque();
  @DexIgnore
  private final WearableMessageRunnable mReceiverRunnable = null;
  @DexIgnore
  private final Map<Integer, ResultListener> mResultListenerMap = new ConcurrentHashMap();
  @DexIgnore
  private final WearableMessageRunnable mSenderRunnable = null;

  @DexIgnore
  public static WearableMessageManagerEcg getInstance() {
    return mInstance;
  }

  @DexIgnore
  private WearableMessageManagerEcg() {
  }


  @DexIgnore
  public void registerMessageDataListener(Intent intent, MessageDataListener messageDataListener) {
  }

  @DexIgnore
  public interface MessageDataListener {
    void onDataReceived(Intent intent, String str);
  }

  @DexIgnore
  public interface ResultListener {
    void onResult(String str, int i, String str2);
  }

  @DexReplace
  public int requestMessage(String str, String str2, String str3, String str4, ResultListener resultListener) {
    String str5 = str4;
    ResultListener resultListener2 = resultListener;
    if (str5 == null || resultListener2 == null) {
      WLOG.e0(TAG, "Error : input parameter is invalid in request message");
      throw new IllegalArgumentException("Invalid input parameter");
    } else if (!NodeMonitor.getInstance().isConnectedBpNode()) {
      WLOG.e(TAG, "Node is not connected.");
      return -1;
    } else {
      int incrementAndGet = mSequenceNumberAtomicInteger.incrementAndGet();
      JSONObject jsonObject = new WearableMessageData("REQUEST", str2, str3, LAST_SUPPORT_VERSION, incrementAndGet, str, getCompressedBody(str5)).getJsonObject();
      if (jsonObject == null) {
        WLOG.e(TAG, "jsonObject == null in requestMessage");
        return -1;
      }
      WLOG.d(TAG, "requestMessage()", jsonObject.toString());
      this.mResultListenerMap.put(Integer.valueOf(incrementAndGet), resultListener2);
      sendMessageToSenderHandler(jsonObject.toString());
      return incrementAndGet;
    }
  }

  @DexReplace
  public void responseMessage(Intent intent, String str) {
    if (intent == null || str == null) {
      WLOG.e0(TAG, "Error : input parameter is invalid in response message");
      throw new IllegalArgumentException("Invalid input parameter");
    } else if (!NodeMonitor.getInstance().isConnectedBpNode()) {
      WLOG.e(TAG, "Node is not connected.");
    } else {
      try {
        JSONObject jsonObject = new WearableMessageData("RESPONSE", intent.getStringExtra(WearableMessageData.Key.RECEIVER), intent.getStringExtra(WearableMessageData.Key.SENDER), LAST_SUPPORT_VERSION, intent.getIntExtra(WearableMessageData.Key.SEQUENCE_NUM, -1), intent.getStringExtra("type"), getCompressedBody(str)).getJsonObject();
        if (jsonObject == null) {
          WLOG.e(TAG, "jsonObject == null in responseMessage");
        } else {
          sendMessageToSenderHandler(jsonObject.toString());
        }
      } catch (Exception e) {
        WLOG.logThrowable(TAG, e);
      }
    }
  }

  @DexReplace
  public int requestData(String str, String str2, String str3, String str4, ResultListener resultListener) {
    if (str == null || str4 == null) {
      WLOG.e0(TAG, "Error : input parameter is invalid in request message");
      throw new IllegalArgumentException("Invalid input parameter");
    }
    int incrementAndGet = mSequenceNumberAtomicInteger.incrementAndGet();
    if (NodeMonitor.getInstance().getConnectedBpNode(str) == null) {
      WLOG.e(TAG, "Node is null");
      return -1;
    }
    WearableMessageData wearableMessageData = new WearableMessageData("REQUEST", str2, str3, LAST_SUPPORT_VERSION, incrementAndGet, WearableMessageData.TypeValue.DATA, getCompressedBody(str4));
    this.mResultListenerMap.put(Integer.valueOf(incrementAndGet), resultListener);
    sendMessageToSenderHandler(wearableMessageData.getJsonObject().toString());
    return incrementAndGet;
  }

  @DexReplace
  public void responseData(Node node, Intent intent, String str) {
    if (intent == null || str == null) {
      WLOG.e0(TAG, "Error : input parameter is invalid in response message");
      throw new IllegalArgumentException("Invalid input parameter");
    } else if (NodeMonitor.getInstance().getConnectedBpNode(node.getId()) == null) {
      WLOG.e(TAG, "Node is null");
    } else {
      JSONObject jsonObject = new WearableMessageData("RESPONSE", intent.getStringExtra(WearableMessageData.Key.RECEIVER), intent.getStringExtra(WearableMessageData.Key.SENDER), LAST_SUPPORT_VERSION, intent.getIntExtra(WearableMessageData.Key.SEQUENCE_NUM, -1), WearableMessageData.TypeValue.DATA, getCompressedBody(str)).getJsonObject();
      if (jsonObject == null) {
        WLOG.e0(TAG, "jsonObject == null in responseMessage");
      } else {
        sendMessageToSenderHandler(jsonObject.toString());
      }
    }
  }

  @DexIgnore
  private String getCompressedBody(String str) {
    WLOG.d0(TAG, "getCompressedBody()");
    try {
      return Base64.encodeToString(WearableUtil.compressStringToByte(str), 2);
    } catch (Exception e) {
      WLOG.logThrowable(TAG, e);
      return null;
    }
  }

  @DexIgnore
  private String getDecompressedBody(String str) {
    WLOG.d0(TAG, "getDecompressedBody()");
    try {
      return WearableUtil.decompressByteToString(Base64.decode(str, 2));
    } catch (Exception e) {
      WLOG.logThrowable(TAG, e);
      return null;
    }
  }

  @DexIgnore
  private static class WearableMessageRunnable implements Runnable {
    @DexIgnore
    private Handler mHandler;
    @DexIgnore
    private final boolean mIsSender;
    @DexIgnore
    private final Queue<Message> mMessageQueue;
    @DexIgnore
    private String mSubTag;

    @DexIgnore
    private WearableMessageRunnable(boolean z) {
      this.mMessageQueue = new LinkedBlockingQueue();
      this.mHandler = null;
      this.mSubTag = "";
      this.mIsSender = z;
    }


    @DexIgnore
    public void run() {
    }
  }

  @DexIgnore
  private void onReceiveMessageFromOtherNode(byte[] r9) {
  }


  @DexIgnore
  private static class ReceiverHandler extends Handler {
    @DexIgnore
    private ReceiverHandler(Looper looper) {
      super(looper);
    }
  }

  @DexIgnore
  private static class SenderHandler extends Handler {
    @DexIgnore
    private SenderHandler(Looper looper) {
      super(looper);
    }

  }

  @DexIgnore
  private static class MessageData {
    @DexIgnore
    private final String mData;
    @DexIgnore
    private final Intent mIntent;

    @DexIgnore
    MessageData(Intent intent, String str) {
      this.mIntent = intent;
      this.mData = str;
    }
  }

  @DexIgnore
  private void sendMessageToSenderHandler(String str) {
  }

  @DexIgnore
  public void clearResultListener() {
  }

}

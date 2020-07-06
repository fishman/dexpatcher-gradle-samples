.class public Lcom/samsung/android/shealthmonitor/wearable/device/BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - BluetoothReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p0, "S HealthMonitor - BluetoothReceiver"

    const-string p1, "Intent is null"

    .line 31
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "S HealthMonitor - BluetoothReceiver"

    const-string p1, "action is null"

    .line 37
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, -0x1

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x11f77b4b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x6c9330ef

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move p1, v3

    goto :goto_0

    :cond_3
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move p1, v2

    :cond_4
    :goto_0
    packed-switch p1, :pswitch_data_0

    const-string p1, "S HealthMonitor - BluetoothReceiver"

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WearableSaAgent_BluetoothReceiver Invalid action : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, "S HealthMonitor - BluetoothReceiver"

    const-string p1, "WearableSaAgent_BluetoothReceiver ACTION_ACL_DISCONNECTED"

    .line 50
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "android.bluetooth.device.extra.DEVICE"

    .line 51
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 52
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object p1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->onReceiveConnectionStatusChange(Ljava/lang/String;Z)V

    return-void

    :pswitch_1
    const-string p0, "S HealthMonitor - BluetoothReceiver"

    const-string p1, "WearableSaAgent_BluetoothReceiver ACTION_ACL_CONNECTED"

    .line 44
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "android.bluetooth.device.extra.DEVICE"

    .line 45
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 46
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object p1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->onReceiveConnectionStatusChange(Ljava/lang/String;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

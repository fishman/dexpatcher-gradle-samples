.class final Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$1;
.super Ljava/lang/Object;
.source "DemoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->onOffBTForDemo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$1;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$1;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void
.end method

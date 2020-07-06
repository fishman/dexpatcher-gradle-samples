.class final Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$1;
.super Ljava/lang/Object;
.source "DemoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->onOffBTForDemo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$1;->val$defaultAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$1;->val$defaultAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 169
    return-void
.end method

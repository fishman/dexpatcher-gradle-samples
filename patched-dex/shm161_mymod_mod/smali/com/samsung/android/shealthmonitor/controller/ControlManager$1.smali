.class Lcom/samsung/android/shealthmonitor/controller/ControlManager$1;
.super Ljava/lang/Object;
.source "ControlManager.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/controller/ControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/controller/ControlManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/controller/ControlManager;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager$1;->this$0:Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1

    .line 144
    sget v0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mSyncListenerCounter:I

    add-int/lit8 v0, v0, -0x1

    .line 145
    sput v0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mSyncListenerCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager$1;->this$0:Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->access$000(Lcom/samsung/android/shealthmonitor/controller/ControlManager;)Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager$1;->this$0:Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->access$000(Lcom/samsung/android/shealthmonitor/controller/ControlManager;)Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;->onComplete(I)V

    :cond_0
    return-void
.end method

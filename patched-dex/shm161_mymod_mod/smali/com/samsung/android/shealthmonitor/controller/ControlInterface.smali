.class public interface abstract Lcom/samsung/android/shealthmonitor/controller/ControlInterface;
.super Ljava/lang/Object;
.source "ControlInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;,
        Lcom/samsung/android/shealthmonitor/controller/ControlInterface$VALIDATION_ERROR;
    }
.end annotation


# virtual methods
.method public abstract clearView(Landroid/content/Context;)V
.end method

.method public abstract getCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;
.end method

.method public abstract getDateChangeBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end method

.method public abstract getHealthSdkHelper()Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;
.end method

.method public abstract getInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;
.end method

.method public abstract getTopCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;
.end method

.method public abstract initInterface()V
.end method

.method public abstract isErrorDemo()Z
.end method

.method public abstract isValid(Ljava/lang/Object;)I
.end method

.method public abstract onSyncComplete(I)V
.end method

.method public abstract onUpdate()V
.end method

.method public abstract requestSync(Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;)V
.end method

.method public abstract setEnableNotification(Z)V
.end method

.method public abstract setErrorDemo(Z)V
.end method

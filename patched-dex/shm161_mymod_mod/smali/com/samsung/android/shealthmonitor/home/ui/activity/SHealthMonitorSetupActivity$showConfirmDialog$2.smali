.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$2;
.super Ljava/lang/Object;
.source "SHealthMonitorSetupActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSHealthMonitorSetupActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SHealthMonitorSetupActivity.kt\ncom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$2\n*L\n1#1,219:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->finishAffinity()V

    const/4 p0, 0x0

    .line 202
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

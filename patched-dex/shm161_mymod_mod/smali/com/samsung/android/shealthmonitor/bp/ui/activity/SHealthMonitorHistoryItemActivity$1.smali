.class Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$1;
.super Ljava/lang/Object;
.source "SHealthMonitorHistoryItemActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->showSoftInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->access$000(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)Landroid/widget/EditText;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/SoftInputUtils;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

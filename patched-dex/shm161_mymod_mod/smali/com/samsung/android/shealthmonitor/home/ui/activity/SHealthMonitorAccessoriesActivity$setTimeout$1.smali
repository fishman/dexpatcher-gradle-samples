.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;
.super Ljava/lang/Object;
.source "SHealthMonitorAccessoriesActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->setTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

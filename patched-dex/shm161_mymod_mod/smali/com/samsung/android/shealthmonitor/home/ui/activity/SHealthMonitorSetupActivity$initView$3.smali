.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$initView$3;
.super Ljava/lang/Object;
.source "SHealthMonitorSetupActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$initView$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 79
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$initView$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;

    const-string p1, "bp"

    const-string v0, "SHealthMonitorBpHowToUseActivity"

    const/high16 v1, 0x4000000

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->access$startActivityByClassName(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

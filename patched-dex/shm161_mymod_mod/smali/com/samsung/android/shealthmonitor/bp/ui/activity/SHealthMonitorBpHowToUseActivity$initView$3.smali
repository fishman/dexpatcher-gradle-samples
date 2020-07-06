.class final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$initView$3;
.super Ljava/lang/Object;
.source "SHealthMonitorBpHowToUseActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$initView$3;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 35
    sget-object p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->Companion:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$Companion;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$initView$3;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;

    check-cast p0, Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->Companion:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity$Companion;->getHOW_TO_USE_TYPE_MEASURING_BP()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$Companion;->startActivity(Landroid/content/Context;I)V

    return-void
.end method

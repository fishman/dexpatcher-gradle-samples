.class Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$4;
.super Ljava/lang/Object;
.source "SHealthMonitorMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->setBloodPressureContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 311
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    iget-object p1, p1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mMainView:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIntroView:Landroid/widget/LinearLayout;

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->access$300(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;Landroid/view/View;)V

    return-void
.end method

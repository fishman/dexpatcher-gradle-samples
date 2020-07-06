.class Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SHealthMonitorMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$GestureListener;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    .line 445
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$GestureListener;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$GestureListener;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIntroView:Landroid/widget/LinearLayout;

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->access$300(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

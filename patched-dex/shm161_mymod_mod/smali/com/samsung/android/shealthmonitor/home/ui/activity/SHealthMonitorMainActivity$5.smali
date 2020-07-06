.class Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$5;
.super Ljava/lang/Object;
.source "SHealthMonitorMainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 315
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$5;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$5;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->access$400(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

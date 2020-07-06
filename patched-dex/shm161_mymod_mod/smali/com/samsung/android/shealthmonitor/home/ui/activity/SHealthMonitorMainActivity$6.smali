.class Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$6;
.super Ljava/lang/Object;
.source "SHealthMonitorMainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->fadeInAnimation(Landroid/view/View;)V
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

    .line 457
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$6;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$6;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->access$500(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->addChangeListener()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

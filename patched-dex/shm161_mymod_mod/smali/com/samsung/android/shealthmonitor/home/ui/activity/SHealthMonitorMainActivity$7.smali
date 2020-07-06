.class Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SHealthMonitorMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->slidingUpAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;Landroid/view/View;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 486
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 487
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 489
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->access$600(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    .line 490
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->access$000(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->setGestureListener()V

    .line 491
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->access$500(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->access$700(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;Landroid/view/View;)V

    return-void
.end method

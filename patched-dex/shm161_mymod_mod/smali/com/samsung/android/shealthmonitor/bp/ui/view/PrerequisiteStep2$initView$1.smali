.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep2$initView$1;
.super Ljava/lang/Object;
.source "PrerequisiteStep2.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep2;->initView(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep2;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep2$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep2$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep2;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep2;->getMActivity()Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;->moveNext()V

    return-void
.end method

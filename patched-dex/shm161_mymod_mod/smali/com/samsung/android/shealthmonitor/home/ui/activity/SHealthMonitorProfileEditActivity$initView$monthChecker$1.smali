.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$monthChecker$1;
.super Ljava/lang/Object;
.source "SHealthMonitorProfileEditActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$monthChecker$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isValid(Lcom/samsung/android/shealthmonitor/widget/HEditText;)Z
    .locals 1

    .line 150
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$monthChecker$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->access$checkBirthDay(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Lcom/samsung/android/shealthmonitor/widget/HEditText;)Z

    move-result p0

    return p0
.end method

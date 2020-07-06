.class final Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$2;
.super Ljava/lang/Object;
.source "PdfGenHelper.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;->showSelectPeriodDialog(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;

.field final synthetic $periodGroup:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$2;->$activity:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$2;->$periodGroup:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 37
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$2;->$activity:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->showProgressBar(Z)V

    .line 39
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$2;->$periodGroup:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/widget/RadioGroup;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const-wide/16 v0, 0x0

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 43
    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide v2

    .line 46
    sget v4, Lcom/samsung/android/shealthmonitor/bp/R$id;->mLastWeek:I

    if-ne p1, v4, :cond_1

    const-wide/32 v0, 0x240c8400

    sub-long v0, v2, v0

    goto :goto_0

    .line 49
    :cond_1
    sget v4, Lcom/samsung/android/shealthmonitor/bp/R$id;->mLastTwoWeeks:I

    if-ne p1, v4, :cond_2

    const-wide/32 v0, 0x48190800

    sub-long v0, v2, v0

    goto :goto_0

    .line 52
    :cond_2
    sget v4, Lcom/samsung/android/shealthmonitor/bp/R$id;->mLastMonth:I

    if-ne p1, v4, :cond_3

    const-wide v0, 0x9fa52400L

    sub-long v0, v2, v0

    goto :goto_0

    .line 55
    :cond_3
    sget v4, Lcom/samsung/android/shealthmonitor/bp/R$id;->mLastThreeMonths:I

    if-ne p1, v4, :cond_4

    const-wide v0, 0x1deef6c00L

    sub-long v0, v2, v0

    goto :goto_0

    .line 58
    :cond_4
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mYearToDate:I

    if-ne p1, v2, :cond_5

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfYear(J)J

    move-result-wide v0

    .line 63
    :cond_5
    :goto_0
    sget-object p1, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$2;->$activity:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;->access$sharePdfReport(Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;J)V

    .line 65
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$2;->$activity:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const-string p1, "activity.componentName"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BP05"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public final Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;
.super Ljava/lang/Object;
.source "BpNotificationHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRecordNotificationCalibration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "title"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "text"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "buttonText"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "from_outside"

    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 86
    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 89
    invoke-static {p1, p2, p3, p4, p0}, Lcom/samsung/android/shealthmonitor/util/NotificationHelper;->getRecordNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p0

    const-string p1, "NotificationHelper.getRe\u2026uttonText, pendingIntent)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationHelper"

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " Exception : class not found = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final getRecordNotificationContinueCalibration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "title"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "text"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "buttonText"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "BP_CALIBRATE_FIRST_PREREQUISITE_STEP_SCENARIO"

    .line 103
    invoke-virtual {p0, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p5, "from_outside"

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, p5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p5, 0x0

    const/high16 v0, 0x8000000

    .line 108
    invoke-static {p1, p5, p0, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 111
    invoke-static {p1, p2, p3, p4, p0}, Lcom/samsung/android/shealthmonitor/util/NotificationHelper;->getRecordNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p0

    const-string p1, "NotificationHelper.getRe\u2026uttonText, pendingIntent)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationHelper"

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " Exception : class not found = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final showNotification(Landroid/content/Context;I)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "NotificationHelper"

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [showNotification] jonId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_PRE_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3ec

    const/4 v3, 0x1

    if-eq p2, v0, :cond_8

    .line 27
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_FINAL_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto/16 :goto_3

    .line 43
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_EXPIRED_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2

    const-string p2, "notification"

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast p2, Landroid/app/NotificationManager;

    .line 46
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shelath_monitor_bp_expired_noti_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "context.getString(R.stri\u2026or_bp_expired_noti_title)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_expired_calibration_desc:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "context.getString(R.stri\u2026expired_calibration_desc)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_learn_more:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "context.getString(R.stri\u2026th_monitor_bp_learn_more)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0xd

    move-object v3, p0

    move-object v4, p1

    .line 45
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;->getRecordNotificationContinueCalibration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p0

    .line 44
    invoke-virtual {p2, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 51
    :cond_2
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_2ND_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v0

    if-eq p2, v0, :cond_4

    .line 52
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "NotificationHelper"

    const-string p1, " [showNotification] Not supported jobId"

    .line 74
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_4
    :goto_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_2ND_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    .line 55
    sget-object v4, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v4

    if-ne p2, v4, :cond_5

    .line 56
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_3RD_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    .line 58
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->getInDays()I

    move-result p2

    .line 60
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    const-string v4, "StateManager.getInstance()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    if-ne p2, v3, :cond_6

    .line 64
    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_continue_calibration_desc_1_day:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026ibration_desc_1_day, cal)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move-object v6, p2

    goto :goto_2

    .line 66
    :cond_6
    sget v4, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_continue_calibration_desc_n_days:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026al, dayOfCalibrationStep)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    const-string p2, "notification"

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    check-cast p2, Landroid/app/NotificationManager;

    .line 71
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_continue_calibration:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "context.getString(R.stri\u2026_bp_continue_calibration)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_card_calibrate_continue:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "context.getString(R.stri\u2026_card_calibrate_continue)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x3

    move-object v3, p0

    move-object v4, p1

    .line 70
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;->getRecordNotificationContinueCalibration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p0

    .line 69
    invoke-virtual {p2, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 29
    :cond_8
    :goto_3
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRemainDay()I

    move-result p2

    const-string v0, "NotificationHelper"

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[showNotification] remain days : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    .line 35
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_recalibration_reminder_desc_n_days:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026minder_desc_n_days, days)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 34
    :pswitch_0
    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_recalibration_reminder_desc_1_day:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026tion_reminder_desc_1_day)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 33
    :pswitch_1
    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_recalibration_reminder_desc_today:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026tion_reminder_desc_today)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    const-string v0, "notification"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    check-cast v0, Landroid/app/NotificationManager;

    .line 39
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_calibration_reminder:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.stri\u2026tor_calibration_reminder)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_learn_more:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.stri\u2026th_monitor_bp_learn_more)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;->getRecordNotificationCalibration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    .line 37
    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

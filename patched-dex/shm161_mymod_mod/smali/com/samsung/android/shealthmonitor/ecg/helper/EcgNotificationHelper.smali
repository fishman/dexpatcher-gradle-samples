.class public final Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;
.super Ljava/lang/Object;
.source "EcgNotificationHelper.java"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;->INSTANCE:Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public final getRecordNotificationCalibration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "str2"    # Ljava/lang/String;
    .param p4, "str3"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const-string v3, "title"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    const-string v3, "text"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const-string v3, "buttonText"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    :try_start_14
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    const-string v3, "from_outside"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {p1, p2, p3, p4, v3}, Lcom/samsung/android/shealthmonitor/util/NotificationHelper;->getRecordNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v2

    .line 111
    .local v2, "recordNotification":Landroid/app/Notification;
    const-string v3, "NotificationHelper.getRe\u2026uttonText, pendingIntent)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_36} :catch_37

    .line 112
    return-object v2

    .line 113
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "recordNotification":Landroid/app/Notification;
    :catch_37
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NotificationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception : class not found = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v3, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public final getRecordNotificationContinueCalibration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "str2"    # Ljava/lang/String;
    .param p4, "str3"    # Ljava/lang/String;
    .param p5, "i"    # I

    .prologue
    .line 120
    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const-string v3, "title"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const-string v3, "text"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    const-string v3, "buttonText"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    :try_start_14
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    const-string v3, "BP_CALIBRATE_FIRST_PREREQUISITE_STEP_SCENARIO"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v3, "from_outside"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {p1, p2, p3, p4, v3}, Lcom/samsung/android/shealthmonitor/util/NotificationHelper;->getRecordNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v2

    .line 130
    .local v2, "recordNotification":Landroid/app/Notification;
    const-string v3, "NotificationHelper.getRe\u2026uttonText, pendingIntent)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3b} :catch_3c

    .line 131
    return-object v2

    .line 132
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "recordNotification":Landroid/app/Notification;
    :catch_3c
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NotificationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception : class not found = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v3, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public final showNotification(Landroid/content/Context;I)V
    .registers 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # I

    .prologue
    .line 30
    const-string v5, "context"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-string v5, "NotificationHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " [showNotification] jonId : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v5, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_PRE_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v5

    move/from16 v0, p2

    if-eq v0, v5, :cond_35

    sget-object v5, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_FINAL_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_dc

    .line 33
    :cond_35
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRemainDay()I

    move-result v20

    .line 34
    .local v20, "remainDay":I
    const-string v5, "NotificationHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[showNotification] remain days : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    packed-switch v20, :pswitch_data_200

    .line 45
    const v5, 0x7f11016d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 46
    .local v21, "str":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026minder_desc_n_days, days)"

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    :goto_70
    const-string v5, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    .line 50
    .local v25, "systemService":Ljava/lang/Object;
    if-nez v25, :cond_a4

    .line 51
    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 37
    .end local v21    # "str":Ljava/lang/String;
    .end local v25    # "systemService":Ljava/lang/Object;
    :pswitch_82
    const v5, 0x7f11016e

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 38
    .restart local v21    # "str":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026tion_reminder_desc_today)"

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_70

    .line 41
    .end local v21    # "str":Ljava/lang/String;
    :pswitch_93
    const v5, 0x7f11016c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 42
    .restart local v21    # "str":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026tion_reminder_desc_1_day)"

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_70

    .line 53
    .restart local v25    # "systemService":Ljava/lang/Object;
    :cond_a4
    const v5, 0x7f110193

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 54
    .local v23, "string2":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026tor_calibration_reminder)"

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const v5, 0x7f110145

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 56
    .local v24, "string3":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026th_monitor_bp_learn_more)"

    move-object/from16 v0, v24

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    check-cast v25, Landroid/app/NotificationManager;

    .end local v25    # "systemService":Ljava/lang/Object;
    const/16 v5, 0x3ec

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;->getRecordNotificationCalibration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 99
    .end local v20    # "remainDay":I
    .end local v21    # "str":Ljava/lang/String;
    .end local v23    # "string2":Ljava/lang/String;
    .end local v24    # "string3":Ljava/lang/String;
    :goto_db
    return-void

    .line 58
    :cond_dc
    sget-object v5, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_EXPIRED_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_136

    .line 59
    const-string v5, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    .line 60
    .local v26, "systemService2":Ljava/lang/Object;
    if-nez v26, :cond_f8

    .line 61
    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 63
    :cond_f8
    const v5, 0x7f110212

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "string4":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026or_bp_expired_noti_title)"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    const v5, 0x7f110111

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "string5":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026expired_calibration_desc)"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const v5, 0x7f110145

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "string6":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026th_monitor_bp_learn_more)"

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    check-cast v26, Landroid/app/NotificationManager;

    .end local v26    # "systemService2":Ljava/lang/Object;
    const/16 v11, 0x3ec

    const/16 v10, 0xd

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;->getRecordNotificationContinueCalibration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_db

    .line 70
    .end local v7    # "string4":Ljava/lang/String;
    .end local v8    # "string5":Ljava/lang/String;
    .end local v9    # "string6":Ljava/lang/String;
    :cond_136
    sget-object v5, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_2ND_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v5

    move/from16 v0, p2

    if-eq v0, v5, :cond_14a

    sget-object v5, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_1f6

    .line 71
    :cond_14a
    sget-object v17, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_2ND_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    .line 72
    .local v17, "calibrationDayReminder":Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;
    sget-object v5, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_158

    .line 73
    sget-object v17, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_3RD_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    .line 75
    :cond_158
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->getInDays()I

    move-result v18

    .line 76
    .local v18, "inDays":I
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;

    move-result-object v19

    .line 77
    .local v19, "instance":Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;
    const-string v5, "StateManager.getInstance()"

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->getCalibrationCount()I

    move-result v5

    rsub-int/lit8 v16, v5, 0x4

    .line 79
    .local v16, "calibrationCount":I
    const/4 v5, 0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_1a4

    .line 80
    const v5, 0x7f110100

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 81
    .local v22, "string":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026ibration_desc_1_day, cal)"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :goto_190
    move-object/from16 v13, v22

    .line 87
    .local v13, "str2":Ljava/lang/String;
    const-string v5, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    .line 88
    .local v27, "systemService3":Ljava/lang/Object;
    if-nez v27, :cond_1c6

    .line 89
    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    .end local v13    # "str2":Ljava/lang/String;
    .end local v22    # "string":Ljava/lang/String;
    .end local v27    # "systemService3":Ljava/lang/Object;
    :cond_1a4
    const v5, 0x7f110101

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 84
    .restart local v22    # "string":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026al, dayOfCalibrationStep)"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_190

    .line 91
    .restart local v13    # "str2":Ljava/lang/String;
    .restart local v27    # "systemService3":Ljava/lang/Object;
    :cond_1c6
    const v5, 0x7f1100ff

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 92
    .local v12, "string7":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026_bp_continue_calibration)"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const v5, 0x7f1100fa

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, "string8":Ljava/lang/String;
    const-string v5, "context.getString(R.stri\u2026_card_calibrate_continue)"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    check-cast v27, Landroid/app/NotificationManager;

    .end local v27    # "systemService3":Ljava/lang/Object;
    const/16 v5, 0x3ec

    const/4 v15, 0x3

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;->getRecordNotificationContinueCalibration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_db

    .line 97
    .end local v12    # "string7":Ljava/lang/String;
    .end local v13    # "str2":Ljava/lang/String;
    .end local v14    # "string8":Ljava/lang/String;
    .end local v16    # "calibrationCount":I
    .end local v17    # "calibrationDayReminder":Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;
    .end local v18    # "inDays":I
    .end local v19    # "instance":Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;
    .end local v22    # "string":Ljava/lang/String;
    :cond_1f6
    const-string v5, "NotificationHelper"

    const-string v6, " [showNotification] Not supported jobId"

    invoke-static {v5, v6}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_db

    .line 35
    nop

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_82
        :pswitch_93
    .end packed-switch
.end method

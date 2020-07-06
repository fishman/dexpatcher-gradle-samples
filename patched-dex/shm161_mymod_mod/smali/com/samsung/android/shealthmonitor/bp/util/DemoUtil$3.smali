.class final Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$3;
.super Ljava/lang/Object;
.source "DemoUtil.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->showSelectErrortypeDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$periodGroup:[Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>([Landroid/widget/RadioGroup;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$3;->val$periodGroup:[Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 249
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isErrorDemo()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 250
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$3;->val$periodGroup:[Landroid/widget/RadioGroup;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_9

    .line 252
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$3;->val$periodGroup:[Landroid/widget/RadioGroup;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    .line 253
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mError_Default:I

    if-ne p0, p1, :cond_0

    .line 254
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->enableCustomErrorType(Z)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 256
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->enableCustomErrorType(Z)V

    .line 257
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$002(I)I

    .line 259
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$100()Ljava/util/LinkedList;

    move-result-object p1

    if-nez p1, :cond_1

    .line 260
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$102(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 261
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$100()Ljava/util/LinkedList;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getSQI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$100()Ljava/util/LinkedList;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getLOW_SQI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$100()Ljava/util/LinkedList;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNO_BEAT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$100()Ljava/util/LinkedList;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getDETECT_MOVE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$100()Ljava/util/LinkedList;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getWEAR_OFF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$100()Ljava/util/LinkedList;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getLOW_BATTERY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$100()Ljava/util/LinkedList;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNOT_ENOUGH_SPACE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    .line 271
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mERROR_SQI:I

    if-ne p0, v0, :cond_2

    .line 272
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getSQI()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 273
    :cond_2
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mError_LOW_SQI:I

    if-ne p0, v0, :cond_3

    .line 274
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getLOW_SQI()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 275
    :cond_3
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mError_NO_BEAT:I

    if-ne p0, v0, :cond_4

    .line 276
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNO_BEAT()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 277
    :cond_4
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mError_Move:I

    if-ne p0, v0, :cond_5

    .line 278
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getDETECT_MOVE()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 279
    :cond_5
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mError_WEAR_OFF:I

    if-ne p0, v0, :cond_6

    .line 280
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getWEAR_OFF()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 281
    :cond_6
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mError_LOW_BATTERY:I

    if-ne p0, v0, :cond_7

    .line 282
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getLOW_BATTERY()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 283
    :cond_7
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mError_NOT_ENOUGH_SPACE:I

    if-ne p0, v0, :cond_8

    .line 284
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNOT_ENOUGH_SPACE()Ljava/lang/String;

    move-result-object p1

    :cond_8
    :goto_0
    if-eqz p1, :cond_9

    .line 288
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$100()Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 289
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$100()Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

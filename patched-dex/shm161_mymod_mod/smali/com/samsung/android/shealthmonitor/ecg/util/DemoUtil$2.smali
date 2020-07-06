.class final Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$2;
.super Ljava/lang/Object;
.source "DemoUtil.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->showSelectErrortypeDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$radioGroupArr:[Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>([Landroid/widget/RadioGroup;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$2;->val$radioGroupArr:[Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 190
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->isErrorDemo()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$2;->val$radioGroupArr:[Landroid/widget/RadioGroup;

    aget-object v4, v4, v5

    if-eqz v4, :cond_1d

    .line 191
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$2;->val$radioGroupArr:[Landroid/widget/RadioGroup;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 192
    .local v0, "checkedRadioButtonId":I
    const v4, 0x7f0a00c8

    if-ne v0, v4, :cond_1e

    .line 193
    invoke-static {v5}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->enableCustomErrorType(Z)V

    .line 229
    .end local v0    # "checkedRadioButtonId":I
    :cond_1d
    :goto_1d
    return-void

    .line 196
    .restart local v0    # "checkedRadioButtonId":I
    :cond_1e
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->enableCustomErrorType(Z)V

    .line 197
    const/4 v2, 0x0

    sput v2, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorIndex:I

    .line 198
    .local v2, "unused":I
    sget-object v4, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    if-nez v4, :cond_7d

    .line 199
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    .line 200
    .local v3, "unused2":Ljava/util/LinkedList;
    sget-object v4, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    sget-object v5, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getSQI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v4, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    sget-object v5, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getLOW_SQI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v4, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    sget-object v5, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNO_BEAT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v4, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    sget-object v5, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getDETECT_MOVE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v4, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    sget-object v5, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getWEAR_OFF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v4, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    sget-object v5, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getLOW_BATTERY()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v4, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    sget-object v5, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNOT_ENOUGH_SPACE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v3    # "unused2":Ljava/util/LinkedList;
    :cond_7d
    const/4 v1, 0x0

    .line 209
    .local v1, "str":Ljava/lang/String;
    const v4, 0x7f0a00ba

    if-ne v0, v4, :cond_96

    .line 210
    sget-object v4, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getSQI()Ljava/lang/String;

    move-result-object v1

    .line 224
    :cond_89
    :goto_89
    if-eqz v1, :cond_1d

    .line 225
    sget-object v4, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 226
    sget-object v4, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1d

    .line 211
    :cond_96
    const v4, 0x7f0a00ca

    if-ne v0, v4, :cond_a2

    .line 212
    sget-object v4, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getLOW_SQI()Ljava/lang/String;

    move-result-object v1

    goto :goto_89

    .line 213
    :cond_a2
    const v4, 0x7f0a00cd

    if-ne v0, v4, :cond_ae

    .line 214
    sget-object v4, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNO_BEAT()Ljava/lang/String;

    move-result-object v1

    goto :goto_89

    .line 215
    :cond_ae
    const v4, 0x7f0a00cb

    if-ne v0, v4, :cond_ba

    .line 216
    sget-object v4, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getDETECT_MOVE()Ljava/lang/String;

    move-result-object v1

    goto :goto_89

    .line 217
    :cond_ba
    const v4, 0x7f0a00ce

    if-ne v0, v4, :cond_c6

    .line 218
    sget-object v4, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getWEAR_OFF()Ljava/lang/String;

    move-result-object v1

    goto :goto_89

    .line 219
    :cond_c6
    const v4, 0x7f0a00c9

    if-ne v0, v4, :cond_d2

    .line 220
    sget-object v4, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getLOW_BATTERY()Ljava/lang/String;

    move-result-object v1

    goto :goto_89

    .line 221
    :cond_d2
    const v4, 0x7f0a00cc

    if-ne v0, v4, :cond_89

    .line 222
    sget-object v4, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNOT_ENOUGH_SPACE()Ljava/lang/String;

    move-result-object v1

    goto :goto_89
.end method

.class public Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;
.super Ljava/lang/Object;
.source "DemoUtil.java"


# static fields
.field private static final ERROR_DEMO:Ljava/lang/String; = "ERROR_DEMO"

.field public static final ERROR_MeasuringActivity:Ljava/lang/String; = "MeasuringActivity"

.field public static final ERROR_SECOND_1_STEP:Ljava/lang/String;

.field public static final ERROR_SECOND_READY:Ljava/lang/String;

.field public static final ERROR_SHealthMonitorBpInputActivity:Ljava/lang/String; = "SHealthMonitorBpInputActivity"

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - DemoUtil"

.field public static sErrorIndex:I

.field public static sErrorTypeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsErrorDemo:Ljava/lang/Boolean;

.field private static sIsErrorType:Ljava/lang/Boolean;

.field private static sRandomError:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_1_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->ERROR_SECOND_1_STEP:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->ERROR_SECOND_READY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableCustomErrorType(Z)V
    .registers 2
    .param p0, "z"    # Z

    .prologue
    .line 47
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sIsErrorType:Ljava/lang/Boolean;

    .line 48
    return-void
.end method

.method public static getCustomErrorType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sIsErrorType:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    if-nez v0, :cond_e

    .line 56
    :cond_c
    const/4 v0, 0x0

    .line 58
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    sget v1, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_d
.end method

.method private static getErrorDemoState()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    .local v1, "permanentSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2d

    .line 86
    :try_start_7
    const-string v3, "ERROR_DEMO"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_f

    move-result v2

    .line 94
    :goto_e
    return v2

    .line 87
    :catch_f
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "S HealthMonitor - DemoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [getErrorDemoState] exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    const-string v3, "S HealthMonitor - DemoUtil"

    const-string v4, "[getErrorDemoState]: preferences is null."

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static initRandomError()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->isErrorDemo()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 110
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->ERROR_SECOND_READY:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->ERROR_SECOND_1_STEP:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "MeasuringActivity"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "SHealthMonitorBpInputActivity"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "asList":Ljava/util/List;
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-static {v0, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 112
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sRandomError:Ljava/lang/String;

    .line 113
    const-string v1, "MeasuringActivity"

    sput-object v1, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sRandomError:Ljava/lang/String;

    .line 114
    const-string v1, "S HealthMonitor - DemoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Picked random error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sRandomError:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v0    # "asList":Ljava/util/List;
    :goto_53
    return-void

    .line 117
    :cond_54
    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "Disabled random error "

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53
.end method

.method public static isCustomErrorType()Z
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sIsErrorType:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isErrorDemo()Z
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sIsErrorDemo:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 77
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->getErrorDemoState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sIsErrorDemo:Ljava/lang/Boolean;

    .line 79
    :cond_e
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sIsErrorDemo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isRandomErrorCaseStep(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->isErrorDemo()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sRandomError:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sRandomError:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static final lambda$showSelectErrortypeDialog$0$DemoUtil([Landroid/widget/RadioGroup;Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V
    .registers 11
    .param p0, "radioGroupArr"    # [Landroid/widget/RadioGroup;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "dialog"    # Landroid/app/Dialog;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "oKButtonHandler"    # Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;

    .prologue
    .line 240
    const v4, 0x7f0a00fe

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 241
    .local v3, "radioGroup":Landroid/widget/RadioGroup;
    const/4 v4, 0x0

    aput-object v3, p0, v4

    .line 242
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->isErrorDemo()Z

    move-result v2

    .line 243
    .local v2, "isErrorDemo":Z
    const v4, 0x7f0a00c2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 244
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2d

    .line 246
    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 248
    :cond_2d
    new-instance v4, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$3;

    invoke-direct {v4, v3, p0}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$3;-><init>(Landroid/widget/RadioGroup;[Landroid/widget/RadioGroup;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 266
    return-void
.end method

.method public static moveNextCustomErrorType()V
    .registers 2

    .prologue
    .line 62
    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sIsErrorType:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1d

    .line 63
    sget v1, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorIndex:I

    add-int/lit8 v0, v1, 0x1

    .line 64
    .local v0, "i":I
    sput v0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorIndex:I

    .line 65
    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1d

    .line 66
    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sErrorIndex:I

    .line 69
    :cond_1d
    return-void
.end method

.method public static offBT()V
    .registers 3

    .prologue
    .line 128
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 129
    .local v0, "defaultAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_e

    .line 130
    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "bt not is supported"

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_d
    return-void

    .line 133
    :cond_e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 134
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 135
    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "bt is disabled"

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_1e
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sRandomError:Ljava/lang/String;

    goto :goto_d

    .line 137
    :cond_22
    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "bt was disabled"

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static onBT()V
    .registers 3

    .prologue
    .line 143
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 144
    .local v0, "defaultAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_e

    .line 145
    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "bt not is supported"

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_d
    return-void

    .line 148
    :cond_e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 149
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 150
    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "bt is enable"

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_1e
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sRandomError:Ljava/lang/String;

    goto :goto_d

    .line 152
    :cond_22
    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "bt was enable"

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static onOffBTForDemo()V
    .registers 6

    .prologue
    .line 158
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 159
    .local v0, "defaultAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_e

    .line 160
    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "bt not is supported"

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_d
    return-void

    .line 163
    :cond_e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 164
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 165
    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "bt is disabled"

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :goto_31
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sRandomError:Ljava/lang/String;

    goto :goto_d

    .line 172
    :cond_35
    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "bt was disabled"

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public static setErrorDemo(Z)V
    .registers 2
    .param p0, "z"    # Z

    .prologue
    .line 72
    const-string v0, "ERROR_TYPE_POPUP"

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->showSelectErrortypeDialog(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static setErrorDemoState(Z)V
    .registers 5
    .param p0, "z"    # Z

    .prologue
    .line 99
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    .local v0, "permanentSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2c

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ERROR_DEMO"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    :goto_13
    const-string v1, "S HealthMonitor - DemoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorDemoState]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 103
    :cond_2c
    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "[getErrorDemoState]: preferences is null."

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method static showSelectErrortypeDialog(Ljava/lang/String;)V
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 178
    new-array v2, v6, [Landroid/widget/RadioGroup;

    aput-object v4, v2, v5

    .line 179
    .local v2, "radioGroupArr":[Landroid/widget/RadioGroup;
    invoke-static {v5}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->enableCustomErrorType(Z)V

    .line 180
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    .line 181
    .local v0, "baseAppCompatActivity":Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
    if-nez v0, :cond_1a

    .line 182
    const-string v4, "S HealthMonitor - DemoUtil"

    const-string v5, "current activity is null"

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_19
    return-void

    .line 185
    :cond_1a
    new-instance v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v5, ""

    invoke-direct {v1, v5, v6}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(Ljava/lang/String;I)V

    .line 186
    .local v1, "builder":Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    invoke-virtual {v1, v6}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 187
    const v5, 0x7f0d005f

    new-instance v6, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$$Lambda$0;

    invoke-direct {v6, v2}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$$Lambda$0;-><init>([Landroid/widget/RadioGroup;)V

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContent(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 188
    const v5, 0x7f11002a

    new-instance v6, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$2;

    invoke-direct {v6, v2}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$2;-><init>([Landroid/widget/RadioGroup;)V

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 231
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060069

    check-cast v4, Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 233
    :try_start_4a
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_19

    .line 234
    :catch_56
    move-exception v3

    .line 235
    .local v3, "unused":Ljava/lang/Exception;
    const-string v4, "S HealthMonitor - DemoUtil"

    const-string v5, "showConfirmDialog(), error in confirm dialog build"

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

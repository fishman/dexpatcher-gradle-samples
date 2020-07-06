.class public Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;
.super Ljava/lang/Object;
.source "DemoUtil.java"


# static fields
.field private static final ERROR_DEMO:Ljava/lang/String; = "ERROR_DEMO"

.field public static final ERROR_MeasuringActivity:Ljava/lang/String; = "MeasuringActivity"

.field public static final ERROR_SECOND_1_STEP:Ljava/lang/String;

.field public static final ERROR_SECOND_READY:Ljava/lang/String;

.field public static final ERROR_SHealthMonitorBpInputActivity:Ljava/lang/String; = "SHealthMonitorBpInputActivity"

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - DemoUtil"

.field private static sErrorIndex:I

.field private static sErrorTypeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsErrorDemo:Ljava/lang/Boolean;

.field private static sIsErrorType:Ljava/lang/Boolean;

.field private static sRandomError:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->ERROR_SECOND_READY:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_1_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->ERROR_SECOND_1_STEP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0

    .line 29
    sput p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sErrorIndex:I

    return p0
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    .line 29
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    .line 29
    sput-object p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$200(Z)V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->setErrorDemoState(Z)V

    return-void
.end method

.method static synthetic access$302(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    sput-object p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sIsErrorDemo:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static enableCustomErrorType(Z)V
    .locals 0

    .line 50
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sIsErrorType:Ljava/lang/Boolean;

    return-void
.end method

.method public static getCustomErrorType()Ljava/lang/String;
    .locals 2

    .line 57
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sIsErrorType:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sErrorIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getErrorDemoState()Z
    .locals 5

    .line 85
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "ERROR_DEMO"

    .line 88
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "S HealthMonitor - DemoUtil"

    const-string v2, "[getErrorDemoState]: preferences is null."

    .line 90
    invoke-static {v0, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v2, "S HealthMonitor - DemoUtil"

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [getErrorDemoState] exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public static initRandomError()V
    .locals 5

    .line 111
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isErrorDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 112
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->ERROR_SECOND_READY:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v3, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->ERROR_SECOND_1_STEP:Ljava/lang/String;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "MeasuringActivity"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "SHealthMonitorBpInputActivity"

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 115
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-static {v0, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sRandomError:Ljava/lang/String;

    const-string v0, "MeasuringActivity"

    .line 119
    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sRandomError:Ljava/lang/String;

    const-string v0, "S HealthMonitor - DemoUtil"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Picked random error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sRandomError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "S HealthMonitor - DemoUtil"

    const-string v1, "Disabled random error "

    .line 123
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isCustomErrorType()Z
    .locals 1

    .line 53
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sIsErrorType:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isErrorDemo()Z
    .locals 1

    .line 78
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sIsErrorDemo:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->getErrorDemoState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sIsErrorDemo:Ljava/lang/Boolean;

    .line 81
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sIsErrorDemo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isRandomErrorCaseStep(Ljava/lang/String;)Z
    .locals 2

    .line 128
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isErrorDemo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sRandomError:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    .line 136
    :cond_1
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sRandomError:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method static final synthetic lambda$showSelectErrortypeDialog$0$DemoUtil([Landroid/widget/RadioGroup;Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V
    .locals 0

    .line 212
    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mRadioGroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    const/4 p3, 0x0

    .line 213
    aput-object p2, p0, p3

    .line 215
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isErrorDemo()Z

    move-result p4

    .line 216
    sget p5, Lcom/samsung/android/shealthmonitor/bp/R$id;->mEnableError:I

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 217
    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 219
    :goto_0
    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p5

    if-ge p3, p5, :cond_0

    .line 220
    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 223
    :cond_0
    new-instance p3, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$2;

    invoke-direct {p3, p2, p0}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$2;-><init>(Landroid/widget/RadioGroup;[Landroid/widget/RadioGroup;)V

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static moveNextCustomErrorType()V
    .locals 2

    .line 65
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sIsErrorType:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 66
    sget v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sErrorIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 67
    sput v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sErrorIndex:I

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sErrorTypeList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 68
    sput v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sErrorIndex:I

    :cond_0
    return-void
.end method

.method public static offBT()V
    .locals 2

    .line 144
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "S HealthMonitor - DemoUtil"

    const-string v1, "bt not is supported"

    .line 146
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    const-string v0, "S HealthMonitor - DemoUtil"

    const-string v1, "bt is disabled"

    .line 150
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "S HealthMonitor - DemoUtil"

    const-string v1, "bt was disabled"

    .line 152
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 154
    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sRandomError:Ljava/lang/String;

    return-void
.end method

.method public static onBT()V
    .locals 2

    .line 159
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "S HealthMonitor - DemoUtil"

    const-string v1, "bt not is supported"

    .line 161
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const-string v0, "S HealthMonitor - DemoUtil"

    const-string v1, "bt is enable"

    .line 165
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "S HealthMonitor - DemoUtil"

    const-string v1, "bt was enable"

    .line 167
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 169
    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sRandomError:Ljava/lang/String;

    return-void
.end method

.method public static onOffBTForDemo()V
    .locals 5

    .line 174
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "S HealthMonitor - DemoUtil"

    const-string v1, "bt not is supported"

    .line 176
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    const-string v1, "S HealthMonitor - DemoUtil"

    const-string v2, "bt is disabled"

    .line 180
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "S HealthMonitor - DemoUtil"

    const-string v1, "bt was disabled"

    .line 188
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 191
    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->sRandomError:Ljava/lang/String;

    return-void
.end method

.method public static setErrorDemo(Z)V
    .locals 0

    const-string p0, "ERROR_TYPE_POPUP"

    .line 74
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->showSelectErrortypeDialog(Ljava/lang/String;)V

    return-void
.end method

.method private static setErrorDemoState(Z)V
    .locals 3

    .line 99
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ERROR_DEMO"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const-string v0, "S HealthMonitor - DemoUtil"

    const-string v1, "[getErrorDemoState]: preferences is null."

    .line 103
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "S HealthMonitor - DemoUtil"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getErrorDemoState]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static showSelectErrortypeDialog(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    .line 197
    new-array v1, v0, [Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 199
    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->enableCustomErrorType(Z)V

    .line 201
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    if-nez v3, :cond_0

    const-string p0, "S HealthMonitor - DemoUtil"

    const-string v0, "current activity is null"

    .line 203
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_0
    new-instance v4, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v5, ""

    invoke-direct {v4, v5, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(Ljava/lang/String;I)V

    .line 208
    invoke-virtual {v4, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 210
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_error_type_test_dialog:I

    new-instance v5, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$$Lambda$0;

    invoke-direct {v5, v1}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$$Lambda$0;-><init>([Landroid/widget/RadioGroup;)V

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContent(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 246
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->baseui_button_ok:I

    new-instance v5, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$3;

    invoke-direct {v5, v1}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$3;-><init>([Landroid/widget/RadioGroup;)V

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 297
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 300
    :try_start_0
    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "S HealthMonitor - DemoUtil"

    const-string v0, "showConfirmDialog(), error in confirm dialog build"

    .line 302
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

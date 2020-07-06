.class final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;
.super Ljava/lang/Object;
.source "SHealthMonitorMeasurementActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Dialog"
.end annotation


# static fields
.field private static final DONE:Ljava/lang/String; = "DONE_POPUP_TAG"

.field private static final ERROR_FROM_WATCH:Ljava/lang/String; = "PAUSE_POPUP_TAG"

.field public static final INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

.field private static final NO_CONNECTION:Ljava/lang/String; = "NO_CONNECTION_POPUP_TAG"

.field private static final STOP:Ljava/lang/String; = "STOP_POPUP_TAG"

.field private static final TIME_OUT:Ljava/lang/String; = "TIME_OUT_POPUP_TAG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDONE()Ljava/lang/String;
    .locals 0

    .line 71
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->DONE:Ljava/lang/String;

    return-object p0
.end method

.method public final getERROR_FROM_WATCH()Ljava/lang/String;
    .locals 0

    .line 75
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->ERROR_FROM_WATCH:Ljava/lang/String;

    return-object p0
.end method

.method public final getNO_CONNECTION()Ljava/lang/String;
    .locals 0

    .line 74
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->NO_CONNECTION:Ljava/lang/String;

    return-object p0
.end method

.method public final getSTOP()Ljava/lang/String;
    .locals 0

    .line 72
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->STOP:Ljava/lang/String;

    return-object p0
.end method

.method public final getTIME_OUT()Ljava/lang/String;
    .locals 0

    .line 73
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->TIME_OUT:Ljava/lang/String;

    return-object p0
.end method

.class synthetic Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$1;
.super Ljava/lang/Object;
.source "BaseDateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$shealthmonitor$util$calendar$BaseDateUtils$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1319
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->values()[Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$1;->$SwitchMap$com$samsung$android$shealthmonitor$util$calendar$BaseDateUtils$Type:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$1;->$SwitchMap$com$samsung$android$shealthmonitor$util$calendar$BaseDateUtils$Type:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->TILE_TIME:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$1;->$SwitchMap$com$samsung$android$shealthmonitor$util$calendar$BaseDateUtils$Type:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->TILE_DATE:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

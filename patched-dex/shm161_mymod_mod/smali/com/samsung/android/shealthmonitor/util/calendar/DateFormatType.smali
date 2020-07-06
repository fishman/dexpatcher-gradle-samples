.class public final enum Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;
.super Ljava/lang/Enum;
.source "DateFormatType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

.field public static final enum DDMMYYYY:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

.field public static final enum MMDDYYYY:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

.field public static final enum YYYYDDMM:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

.field public static final enum YYYYMMDD:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    const-string v1, "YYYYMMDD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->YYYYMMDD:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    const-string v1, "MMDDYYYY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->MMDDYYYY:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    const-string v1, "DDMMYYYY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->DDMMYYYY:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    const-string v1, "YYYYDDMM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->YYYYDDMM:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->YYYYMMDD:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->MMDDYYYY:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->DDMMYYYY:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->YYYYDDMM:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->$VALUES:[Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;
    .locals 1

    .line 6
    const-class v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->$VALUES:[Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    return-object v0
.end method

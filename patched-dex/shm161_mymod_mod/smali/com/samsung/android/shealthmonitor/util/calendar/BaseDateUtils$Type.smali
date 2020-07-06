.class public final enum Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;
.super Ljava/lang/Enum;
.source "BaseDateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

.field public static final enum DATE_DAY_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

.field public static final enum DATE_MONTH_DAY:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

.field public static final enum DATE_ONLY_DAY:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

.field public static final enum DATE_TIME:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

.field public static final enum DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

.field public static final enum TILE_DATE:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

.field public static final enum TILE_TIME:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

.field public static final enum TIME:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;


# instance fields
.field private mCustomFormat:Ljava/lang/String;

.field private mFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1250
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    const-string v1, "TILE_TIME"

    const-string v2, "hmm"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->TILE_TIME:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    .line 1251
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    const-string v1, "TILE_DATE"

    const-string v2, "MMMdEEE"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->TILE_DATE:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    .line 1252
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    const-string v1, "TIME"

    const-string v2, "hmm"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->TIME:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    .line 1253
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    const-string v1, "DATE_DAY_YEAR"

    const-string v2, "MMMdyyyy"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_DAY_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    .line 1254
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    const-string v1, "DATE_MONTH_DAY"

    const-string v2, "MMMd"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_MONTH_DAY:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    .line 1255
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    const-string v1, "DATE_ONLY_DAY"

    const-string v2, "d"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_ONLY_DAY:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    .line 1256
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    const-string v1, "DATE_TIME"

    const-string v2, "h:mm a"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    .line 1257
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    const-string v1, "DATE_TIME_YEAR"

    const-string v2, "d/MMM/yyyy"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    const/16 v0, 0x8

    .line 1249
    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->TILE_TIME:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->TILE_DATE:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->TIME:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_DAY_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_MONTH_DAY:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_ONLY_DAY:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    aput-object v1, v0, v10

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->$VALUES:[Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1271
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->mFormat:Ljava/lang/String;

    .line 1272
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->mCustomFormat:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;
    .locals 1

    .line 1249
    const-class v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;
    .locals 1

    .line 1249
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->$VALUES:[Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    return-object v0
.end method


# virtual methods
.method public final getCustomFormat()Ljava/lang/String;
    .locals 0

    .line 1263
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->mCustomFormat:Ljava/lang/String;

    return-object p0
.end method

.method public final setCustomFormat(Ljava/lang/String;)V
    .locals 2

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->mCustomFormat:Ljava/lang/String;

    return-void
.end method

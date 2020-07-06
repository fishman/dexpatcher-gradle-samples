.class abstract enum Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;
.super Ljava/lang/Enum;
.source "LOG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/util/LOG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "EcgBpLogger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

.field public static final enum NORMAL_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

.field public static final enum NOR_NAME_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

.field public static final enum PRIVACY_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger$1;

    const-string v1, "PRIVACY_LOGGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->PRIVACY_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    .line 79
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger$2;

    const-string v1, "NORMAL_LOGGER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->NORMAL_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    .line 125
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger$3;

    const-string v1, "NOR_NAME_LOGGER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->NOR_NAME_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    const/4 v0, 0x3

    .line 40
    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->PRIVACY_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->NORMAL_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->NOR_NAME_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->$VALUES:[Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/shealthmonitor/util/LOG$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;
    .locals 1

    .line 40
    const-class v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;
    .locals 1

    .line 40
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->$VALUES:[Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    return-object v0
.end method


# virtual methods
.method abstract d(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract d0(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract e(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract e0(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
.end method

.method abstract i(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract i0(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract w(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract w0(Ljava/lang/String;Ljava/lang/String;)V
.end method

.class public final enum Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;
.super Ljava/lang/Enum;
.source "StubApiWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

.field public static final enum MOBILE:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

.field public static final enum WEARABLE:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    new-instance v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;->MOBILE:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    .line 76
    new-instance v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    const-string v1, "WEARABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;->WEARABLE:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    const/4 v0, 0x2

    .line 74
    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    sget-object v1, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;->MOBILE:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;->WEARABLE:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;->$VALUES:[Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;
    .locals 1

    .line 74
    const-class v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;
    .locals 1

    .line 74
    sget-object v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;->$VALUES:[Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;

    return-object v0
.end method

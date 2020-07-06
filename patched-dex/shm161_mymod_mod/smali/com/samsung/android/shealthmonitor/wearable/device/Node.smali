.class public Lcom/samsung/android/shealthmonitor/wearable/device/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/wearable/device/Node$InformationKey;,
        Lcom/samsung/android/shealthmonitor/wearable/device/Node$ConnectionStatusValue;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/shealthmonitor/wearable/device/Node;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_STRING:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - Node"


# instance fields
.field private mBtAddress:Ljava/lang/String;

.field private mConnectionStatus:I

.field private mId:Ljava/lang/String;

.field private mInformation:Lorg/json/JSONObject;

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/device/Node$1;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node$1;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mId:Ljava/lang/String;

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mName:Ljava/lang/String;

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mBtAddress:Ljava/lang/String;

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mConnectionStatus:I

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mInformation:Lorg/json/JSONObject;

    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mId:Ljava/lang/String;

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mName:Ljava/lang/String;

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mBtAddress:Ljava/lang/String;

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mConnectionStatus:I

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mInformation:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    .line 69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "objectId is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p2, :cond_1

    .line 72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "objectBtAddress is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p4, :cond_2

    .line 75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "objectInformation is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mId:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mBtAddress:Ljava/lang/String;

    .line 80
    iput p3, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mConnectionStatus:I

    .line 81
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mInformation:Lorg/json/JSONObject;

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getNameFromInformation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mName:Ljava/lang/String;

    return-void
.end method

.method private getNameFromInformation()Ljava/lang/String;
    .locals 3

    const-string v0, "unknown"

    .line 168
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mInformation:Lorg/json/JSONObject;

    const-string v2, "device_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mInformation:Lorg/json/JSONObject;

    const-string v1, "device_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "S HealthMonitor - Node"

    .line 172
    invoke-static {v1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mId:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mName:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mBtAddress:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mConnectionStatus:I

    .line 120
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mInformation:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - Node"

    .line 122
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBtAddress()Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mBtAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getConnectionStatus()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mConnectionStatus:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getInformation(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mInformation:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mInformation:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - Node"

    .line 184
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "S HealthMonitor - Node"

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is empty."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getInformation()Lorg/json/JSONObject;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mInformation:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setConnectionStatus(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mConnectionStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Name : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBtAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mBtAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConnectionStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mConnectionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInformation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mInformation:Lorg/json/JSONObject;

    .line 163
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 142
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mBtAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget p2, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mConnectionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->mInformation:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

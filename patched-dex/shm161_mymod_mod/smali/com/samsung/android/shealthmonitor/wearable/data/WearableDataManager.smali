.class public Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;
.super Ljava/lang/Object;
.source "WearableDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;,
        Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableDataManager"

.field private static final mInstance:Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;


# instance fields
.field private final mWearableProvider:Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;->mInstance:Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;->mWearableProvider:Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;
    .locals 1

    .line 74
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;->mInstance:Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;

    return-object v0
.end method


# virtual methods
.method public getDataJsonObject(Ljava/util/LinkedHashMap;Lcom/samsung/android/shealthmonitor/wearable/device/Node;Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;",
            ">;",
            "Lcom/samsung/android/shealthmonitor/wearable/device/Node;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;",
            ")Z"
        }
    .end annotation

    .line 84
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;->mWearableProvider:Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;->getDataJsonObject(Ljava/util/Map;Lcom/samsung/android/shealthmonitor/wearable/device/Node;Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;)Z

    move-result p0

    return p0
.end method

.method public insertData(Lorg/json/JSONObject;)Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

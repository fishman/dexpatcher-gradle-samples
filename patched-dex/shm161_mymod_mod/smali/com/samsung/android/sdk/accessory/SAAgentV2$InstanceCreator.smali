.class Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;
.super Ljava/lang/Object;
.source "SAAgentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceCreator"
.end annotation


# instance fields
.field private agentImplClass:Ljava/lang/String;

.field private callback:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V
    .locals 0

    .line 1457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1458
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->context:Landroid/content/Context;

    .line 1459
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->agentImplClass:Ljava/lang/String;

    .line 1460
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->callback:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;)Landroid/content/Context;
    .locals 0

    .line 1452
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;)Ljava/lang/String;
    .locals 0

    .line 1452
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->agentImplClass:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;)Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;
    .locals 0

    .line 1452
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->callback:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    return-object p0
.end method


# virtual methods
.method public createInstance()V
    .locals 2

    .line 1464
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2100()Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1465
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1466
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

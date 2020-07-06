.class Lcom/samsung/android/sdk/accessory/SAMessage$1;
.super Ljava/lang/Object;
.source "SAMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/SAMessage;->registerAgentAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAMessage;

.field final synthetic val$agentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SAMessage;Ljava/lang/String;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAMessage$1;->this$0:Lcom/samsung/android/sdk/accessory/SAMessage;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAMessage$1;->val$agentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage$1;->this$0:Lcom/samsung/android/sdk/accessory/SAMessage;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage$1;->val$agentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->registerAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 447
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAMessage$1;->this$0:Lcom/samsung/android/sdk/accessory/SAMessage;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->access$002(Lcom/samsung/android/sdk/accessory/SAMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->printStackTrace()V

    return-void
.end method

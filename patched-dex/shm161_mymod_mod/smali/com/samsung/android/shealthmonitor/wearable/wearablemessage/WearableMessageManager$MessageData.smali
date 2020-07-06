.class Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;
.super Ljava/lang/Object;
.source "WearableMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageData"
.end annotation


# instance fields
.field private final mData:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;->mIntent:Landroid/content/Intent;

    .line 679
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;->mData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getData()Ljava/lang/String;
    .locals 0

    .line 687
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;->mData:Ljava/lang/String;

    return-object p0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

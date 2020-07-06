.class Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;
.super Landroid/os/Binder;
.source "SAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SASDKBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAService;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SAService;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;->this$0:Lcom/samsung/android/sdk/accessory/SAService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/android/sdk/accessory/SAService;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;->this$0:Lcom/samsung/android/sdk/accessory/SAService;

    return-object p0
.end method

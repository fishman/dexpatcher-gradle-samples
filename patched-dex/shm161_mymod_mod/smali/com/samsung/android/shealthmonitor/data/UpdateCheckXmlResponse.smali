.class public Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;
.super Ljava/lang/Object;
.source "UpdateCheckXmlResponse.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "result"
    strict = false
.end annotation


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "appId"
        required = false
    .end annotation
.end field

.field private cacheInfo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "cacheInfo"
        required = false
    .end annotation
.end field

.field private contentSize:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "contentSize"
        required = false
    .end annotation
.end field

.field private productId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "productId"
        required = false
    .end annotation
.end field

.field private productName:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "productName"
        required = false
    .end annotation
.end field

.field private resultCode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "resultCode"
        required = false
    .end annotation
.end field

.field private resultMsg:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "resultMsg"
        required = false
    .end annotation
.end field

.field private serverType:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "serverType"
        required = false
    .end annotation
.end field

.field private timeInfo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "timeInfo"
        required = false
    .end annotation
.end field

.field private updateCheckInterval:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "updateCheckInterval"
        required = false
    .end annotation
.end field

.field private versionCode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "versionCode"
        required = false
    .end annotation
.end field

.field private versionName:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "versionName"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->productName:Ljava/lang/String;

    return-object p0
.end method

.method public getResulCode()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->resultCode:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->versionCode:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->versionName:Ljava/lang/String;

    return-object p0
.end method

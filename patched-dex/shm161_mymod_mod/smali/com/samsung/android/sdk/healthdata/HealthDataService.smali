.class public final Lcom/samsung/android/sdk/healthdata/HealthDataService;
.super Ljava/lang/Object;
.source "HealthDataService.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final VERSION_CODE:I = 0x19640

.field private static final VERSION_NAME:Ljava/lang/String; = "1.4.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVersionCode()I
    .locals 0

    const p0, 0x19640

    return p0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 0

    const-string p0, "1.4.0"

    return-object p0
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final isFeatureEnabled(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

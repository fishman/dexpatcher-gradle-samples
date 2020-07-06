.class public Lcom/samsung/android/shealthmonitor/wearable/utils/WearableConstants$Charset;
.super Ljava/lang/Object;
.source "WearableConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/utils/WearableConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Charset"
.end annotation


# static fields
.field private static final ASSERTION_MESSAGE:Ljava/lang/String; = "UTF-8 not supported"

.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "utf-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static message()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8 not supported"

    return-object v0
.end method

.method public static name()Ljava/lang/String;
    .locals 1

    const-string v0, "utf-8"

    return-object v0
.end method

.class public Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData$Key;
.super Ljava/lang/Object;
.source "WearableMessageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final DEVICE:Ljava/lang/String; = "device"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final RECEIVER:Ljava/lang/String; = "receiver"

.field public static final SENDER:Ljava/lang/String; = "sender"

.field public static final SEQUENCE_NUM:Ljava/lang/String; = "sequence_num"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

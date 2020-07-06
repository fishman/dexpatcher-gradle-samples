.class final enum Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger$1;
.super Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;
.source "LOG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;-><init>(Ljava/lang/String;ILcom/samsung/android/shealthmonitor/util/LOG$1;)V

    return-void
.end method


# virtual methods
.method final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method final d0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method final e0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method final getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 76
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method final i0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method final w0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

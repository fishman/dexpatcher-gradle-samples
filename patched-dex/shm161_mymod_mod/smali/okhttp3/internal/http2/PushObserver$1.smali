.class final Lokhttp3/internal/http2/PushObserver$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lokhttp3/internal/http2/PushObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/PushObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onData$749b27ff(Lokio/BufferedSource;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p2

    .line 88
    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->skip(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onHeaders$4ec42067()Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final onRequest$163bb723()Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final onReset$613c779f()V
    .locals 0

    return-void
.end method

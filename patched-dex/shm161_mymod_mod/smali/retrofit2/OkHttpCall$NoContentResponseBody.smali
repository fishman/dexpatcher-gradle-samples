.class final Lretrofit2/OkHttpCall$NoContentResponseBody;
.super Lokhttp3/ResponseBody;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoContentResponseBody"
.end annotation


# instance fields
.field private final contentLength:J

.field private final contentType:Lokhttp3/MediaType;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;J)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 254
    iput-object p1, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentType:Lokhttp3/MediaType;

    .line 255
    iput-wide p2, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentLength:J

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentLength:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 0

    .line 259
    iget-object p0, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 1

    .line 267
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot read raw response body of a converted body."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public abstract Lokhttp3/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lokhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lokhttp3/EventListener$1;

    invoke-direct {v0}, Lokhttp3/EventListener$1;-><init>()V

    sput-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callEnd$36f033da()V
    .locals 0

    return-void
.end method

.method public static callFailed$1b4f1832()V
    .locals 0

    return-void
.end method

.method public static callStart$36f033da()V
    .locals 0

    return-void
.end method

.method public static connectEnd$786dda5e()V
    .locals 0

    return-void
.end method

.method public static connectFailed$2677936a()V
    .locals 0

    return-void
.end method

.method public static connectStart$7c70d959()V
    .locals 0

    return-void
.end method

.method public static connectionAcquired$295518d7()V
    .locals 0

    return-void
.end method

.method public static connectionReleased$295518d7()V
    .locals 0

    return-void
.end method

.method public static dnsEnd$5f6bda9f()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public static dnsStart$13447870()V
    .locals 0

    return-void
.end method

.method static factory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;
    .locals 1

    .line 63
    new-instance v0, Lokhttp3/EventListener$2;

    invoke-direct {v0, p0}, Lokhttp3/EventListener$2;-><init>(Lokhttp3/EventListener;)V

    return-object v0
.end method

.method public static requestBodyEnd$58ea2f5e()V
    .locals 0

    return-void
.end method

.method public static requestBodyStart$36f033da()V
    .locals 0

    return-void
.end method

.method public static requestHeadersEnd$701c4f4c()V
    .locals 0

    return-void
.end method

.method public static requestHeadersStart$36f033da()V
    .locals 0

    return-void
.end method

.method public static responseBodyEnd$58ea2f5e()V
    .locals 0

    return-void
.end method

.method public static responseBodyStart$36f033da()V
    .locals 0

    return-void
.end method

.method public static responseHeadersEnd$42f4142c()V
    .locals 0

    return-void
.end method

.method public static responseHeadersStart$36f033da()V
    .locals 0

    return-void
.end method

.method public static secureConnectEnd$30e623dc()V
    .locals 0

    return-void
.end method

.method public static secureConnectStart$36f033da()V
    .locals 0

    return-void
.end method

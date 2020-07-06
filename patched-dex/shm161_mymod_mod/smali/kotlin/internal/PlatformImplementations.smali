.class public Lkotlin/internal/PlatformImplementations;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultPlatformRandom()Lkotlin/random/Random;
    .locals 1

    .line 22
    new-instance v0, Lkotlin/random/FallbackThreadLocalRandom;

    invoke-direct {v0}, Lkotlin/random/FallbackThreadLocalRandom;-><init>()V

    check-cast v0, Lkotlin/random/Random;

    return-object v0
.end method

.class public final Lkotlin/random/Random$Companion;
.super Lkotlin/random/Random;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/random/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/random/Random$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    new-instance v0, Lkotlin/random/Random$Companion;

    invoke-direct {v0}, Lkotlin/random/Random$Companion;-><init>()V

    sput-object v0, Lkotlin/random/Random$Companion;->INSTANCE:Lkotlin/random/Random$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Lkotlin/random/Random;-><init>()V

    return-void
.end method


# virtual methods
.method public final nextBits(I)I
    .locals 0

    .line 273
    sget-object p0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 1244
    invoke-static {}, Lkotlin/random/Random;->access$getDefaultRandom$cp()Lkotlin/random/Random;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlin/random/Random;->nextBits(I)I

    move-result p0

    return p0
.end method

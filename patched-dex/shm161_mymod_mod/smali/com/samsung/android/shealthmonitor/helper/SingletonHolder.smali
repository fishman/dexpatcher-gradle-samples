.class public Lcom/samsung/android/shealthmonitor/helper/SingletonHolder;
.super Ljava/lang/Object;
.source "SingletonHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingletonHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingletonHolder.kt\ncom/samsung/android/shealthmonitor/helper/SingletonHolder\n*L\n1#1,31:1\n*E\n"
.end annotation


# instance fields
.field private creator:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "creator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/SingletonHolder;->creator:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/SingletonHolder;->mInstance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 17
    :cond_0
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/SingletonHolder;->mInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 22
    monitor-exit p0

    return-object v0

    .line 24
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/SingletonHolder;->creator:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/SingletonHolder;->mInstance:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    throw v0
.end method

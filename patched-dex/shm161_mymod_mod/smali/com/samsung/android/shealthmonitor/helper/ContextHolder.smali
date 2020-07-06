.class public Lcom/samsung/android/shealthmonitor/helper/ContextHolder;
.super Ljava/lang/Object;
.source "ContextHolder.java"


# static fields
.field private static mWeakActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sIsMainProcess:Z

.field private static sProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 39
    sget-object v0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .line 107
    sget-object v0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public static isMainProcess()Z
    .locals 1

    .line 74
    sget-boolean v0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->sIsMainProcess:Z

    return v0
.end method

.method public static removeCurrentActivity(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    .line 98
    :goto_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 99
    sget-object v1, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 100
    sget-object p0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setContext(Landroid/app/Application;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static setCurrentActivity(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 79
    :goto_0
    sget-object v2, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 80
    sget-object v2, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 86
    sget-object p0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 88
    :cond_2
    sget-object p0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-eq v0, p0, :cond_3

    .line 90
    sget-object p0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 91
    sget-object v1, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->mWeakActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static setProcessName(Ljava/lang/String;)V
    .locals 1

    .line 62
    sput-object p0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->sProcessName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "remote"

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 64
    sput-boolean p0, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->sIsMainProcess:Z

    :cond_0
    return-void
.end method

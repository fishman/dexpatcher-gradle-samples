.class final Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "SamsungHealthDataSyncManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion$1;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion$1;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion$1;->INSTANCE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "<init>"

    return-object p0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 0

    const-class p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 0

    const-string p0, "<init>()V"

    return-object p0
.end method

.method public final invoke()Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;
    .locals 1

    new-instance p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion$1;->invoke()Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    move-result-object p0

    return-object p0
.end method

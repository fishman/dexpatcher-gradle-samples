.class Lcom/samsung/android/sdk/accessory/SAReassembler;
.super Ljava/lang/Object;
.source "SAReassembler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;
    }
.end annotation


# static fields
.field static final REASSEMBLY_FAILURE:I = 0x3

.field static final REASSEMBLY_IN_PROGRESS:I = 0x2

.field static final REASSEMBLY_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sReassemblers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/SAReassembler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAReassembler;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAReassembler;->sReassemblers:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAReassembler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static assembleData(Ljava/lang/Object;II[BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v7, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 38
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/accessory/SAReassembler;->assembleInternal(ILjava/lang/Object;II[BIII)I

    move-result p0

    return p0
.end method

.method private static assembleInternal(ILjava/lang/Object;II[BIII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    sget-object p7, Lcom/samsung/android/sdk/accessory/SAReassembler;->sReassemblers:Ljava/util/Map;

    invoke-interface {p7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;

    if-nez p7, :cond_0

    .line 78
    new-instance p7, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;

    const/4 v0, 0x0

    invoke-direct {p7, p0, p2, p1, v0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;-><init>(IILjava/lang/Object;Lcom/samsung/android/sdk/accessory/SAReassembler$1;)V

    .line 79
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAReassembler;->sReassemblers:Ljava/util/Map;

    invoke-interface {p0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    invoke-virtual {p7, p3, p4, p5, p6}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->assemble(I[BII)I

    move-result p0

    return p0
.end method

.method static assembleMessage(Ljava/lang/Object;III[BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p2

    .line 56
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/accessory/SAReassembler;->assembleInternal(ILjava/lang/Object;II[BIII)I

    move-result p0

    return p0
.end method

.method static getAppData(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAReassembler;->sReassemblers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->extractPayload()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static shutDown(Ljava/lang/Object;)V
    .locals 1

    .line 68
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAReassembler;->sReassemblers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->shutDown()V

    :cond_0
    return-void
.end method

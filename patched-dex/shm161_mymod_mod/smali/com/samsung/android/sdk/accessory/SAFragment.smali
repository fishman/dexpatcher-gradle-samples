.class Lcom/samsung/android/sdk/accessory/SAFragment;
.super Ljava/lang/Object;
.source "SAFragment.java"


# static fields
.field private static final DATA_INDEX_INTERMEDIATE_FRAGMENT:I = 0x1

.field private static final DATA_INDEX_NOT_FRAGMENT:I = 0x0

.field private static final DATA_LAST_FRAGMENT:I = 0x2

.field static final DATA_MODE:I = 0x1

.field private static final MSG_INDEX_FIRST_FRAGMENT:I = 0x1

.field private static final MSG_INDEX_INTERMEDIATE_FRAGMENT:I = 0x2

.field private static final MSG_INDEX_NOT_FRAGMENT:I = 0x0

.field private static final MSG_LAST_FRAGMENT:I = 0x3

.field static final MSG_MODE:I = 0x2


# instance fields
.field private mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

.field private mIndex:I

.field private mIndexFirstFragment:I

.field private mIndexIntermediateFragment:I

.field private mIndexLastFragment:I

.field private mIndexNotFragmemt:I


# direct methods
.method constructor <init>(I)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    const-string p0, "[SA_SDK]"

    const-string p1, "invalid fragment mode!"

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 47
    :pswitch_0
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexNotFragmemt:I

    .line 48
    iput v2, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexFirstFragment:I

    .line 49
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexIntermediateFragment:I

    const/4 p1, 0x3

    .line 50
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexLastFragment:I

    return-void

    .line 41
    :pswitch_1
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexNotFragmemt:I

    .line 42
    iput v2, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexFirstFragment:I

    .line 43
    iput v2, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexIntermediateFragment:I

    .line 44
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexLastFragment:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getBuffer()[B
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object p0

    return-object p0
.end method

.method getIndex()I
    .locals 0

    .line 87
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndex:I

    return p0
.end method

.method getIndexFirstFragment()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexFirstFragment:I

    return p0
.end method

.method getIndexIntermediateFragment()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexIntermediateFragment:I

    return p0
.end method

.method getIndexLastFragment()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexLastFragment:I

    return p0
.end method

.method getIndexNotFragment()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexNotFragmemt:I

    return p0
.end method

.method getOffset()I
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getOffset()I

    move-result p0

    return p0
.end method

.method getPayloadLength()I
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getPayloadLength()I

    move-result p0

    return p0
.end method

.method recycleBuffer()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    :cond_0
    return-void
.end method

.method setBuffer(Lcom/samsung/accessory/utils/buffer/SABuffer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    return-void
.end method

.method setIndex(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndex:I

    return-void
.end method

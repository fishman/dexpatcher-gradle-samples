.class public Lcom/samsung/android/shealthmonitor/widget/HTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "HTextView.java"


# static fields
.field private static final INIT_VALUE:F = -1.0f


# instance fields
.field private mIsApplyUpToLarge:Z

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 17
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mTextSize:F

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mIsApplyUpToLarge:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 17
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mTextSize:F

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mIsApplyUpToLarge:Z

    .line 26
    invoke-direct {p0, p2}, Lcom/samsung/android/shealthmonitor/widget/HTextView;->setTextSizeFromAttribute(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 17
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mTextSize:F

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mIsApplyUpToLarge:Z

    .line 31
    invoke-direct {p0, p2}, Lcom/samsung/android/shealthmonitor/widget/HTextView;->setTextSizeFromAttribute(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyUpToLargeLevel()V
    .locals 2

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mIsApplyUpToLarge:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mTextSize:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mTextSize:F

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getApplyUpToLargeTextSizeByDp(Landroid/content/Context;F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextView;->setTextSizeInternal(F)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private setTextSizeFromAttribute(Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/base/R$styleable;->common_text_view:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    sget v1, Lcom/samsung/android/shealthmonitor/base/R$styleable;->common_text_view_applyUpToLarge:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mIsApplyUpToLarge:Z

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mIsApplyUpToLarge:Z

    if-nez v0, :cond_1

    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getTextSize(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v4/util/Pair;

    move-result-object p1

    .line 52
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mIsApplyUpToLarge:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mIsApplyUpToLarge:Z

    .line 53
    iget-object p1, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mTextSize:F

    return-void
.end method

.method private setTextSizeInternal(F)V
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-super {p0, v0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextView;->applyUpToLargeLevel()V

    .line 84
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mIsApplyUpToLarge:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextView;->setTextSizeInternal(F)V

    return-void

    .line 72
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setTextSize(F)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mIsApplyUpToLarge:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 59
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mTextSize:F

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextView;->setTextSizeInternal(F)V

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 61
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mTextSize:F

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextView;->mIsApplyUpToLarge:Z

    .line 63
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->setTextSize(IF)V

    return-void
.end method

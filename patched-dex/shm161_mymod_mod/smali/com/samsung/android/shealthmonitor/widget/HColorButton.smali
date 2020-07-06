.class public Lcom/samsung/android/shealthmonitor/widget/HColorButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "HColorButton.java"


# static fields
.field private static final DEFAULT_CORNER_DP:I = 0x12

.field private static final DRFAULT_BACKGROUND_COLOR:I = 0x0

.field private static final DRFAULT_STROKE_COLOR:I = 0x0

.field private static final DRFAULT_STROKE_WIDTH_PX:I = 0x0

.field private static STATUS_DIM:F = 0.1f

.field private static STATUS_NORMAL:F = 1.0f

.field private static final TAG:Ljava/lang/String;

.field private static final sFontSizeMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundCorner:I

.field private mFontSizeLimit:I

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTextSize:F

.field private mTextUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 62
    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->sFontSizeMap:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->sFontSizeMap:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->sFontSizeMap:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->sFontSizeMap:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f8ccccd    # 1.1f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->sFontSizeMap:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3fa66666    # 1.3f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->sFontSizeMap:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->sFontSizeMap:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3fd9999a    # 1.7f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->sFontSizeMap:Landroid/support/v4/util/ArrayMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mFontSizeLimit:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextSize:F

    .line 58
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextUnit:I

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->initializeView(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private applyFontSizeLimit()V
    .locals 3

    .line 161
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextUnit:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 167
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mFontSizeLimit:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextUnit:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->sFontSizeMap:Landroid/support/v4/util/ArrayMap;

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mFontSizeLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->sFontSizeMap:Landroid/support/v4/util/ArrayMap;

    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mFontSizeLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 173
    iget v2, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextSize:F

    mul-float/2addr v2, v1

    invoke-super {p0, v0, v2}, Landroid/support/v7/widget/AppCompatButton;->setTextSize(IF)V

    return-void

    .line 175
    :cond_2
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextSize:F

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatButton;->setTextSize(F)V

    :cond_3
    return-void

    .line 168
    :cond_4
    :goto_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextUnit:I

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextSize:F

    invoke-super {p0, v0, v1}, Landroid/support/v7/widget/AppCompatButton;->setTextSize(IF)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private dp2Pixel(I)F
    .locals 1

    int-to-float p1, p1

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 182
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private initializeView(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 86
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->TAG:Ljava/lang/String;

    const-string v1, "initializeView start"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/base/R$styleable;->text_ripple_button:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 90
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$styleable;->text_ripple_button_buttonBackgroundColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mBackgroundColor:I

    .line 92
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$styleable;->text_ripple_button_buttonBackgroundCorner:I

    const/16 v1, 0x12

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mBackgroundCorner:I

    .line 94
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$styleable;->text_ripple_button_buttonStrokeColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mStrokeColor:I

    .line 96
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$styleable;->text_ripple_button_buttonStrokeWidth:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mStrokeWidth:I

    .line 98
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$styleable;->text_ripple_button_textSizeLimitation:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mFontSizeLimit:I

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getTextSize(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v4/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextSize:F

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getTextSize(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v4/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextUnit:I

    .line 102
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setProperties()V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->STATUS_NORMAL:F

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->STATUS_DIM:F

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setAlpha(F)V

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->applyFontSizeLimit()V

    .line 108
    sget-object p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->TAG:Ljava/lang/String;

    const-string p1, "initializeView end"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setProperties()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$drawable;->common_color_button_ripple:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const v1, 0x102002e

    .line 121
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 122
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mBackgroundCorner:I

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->dp2Pixel(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$drawable;->common_color_button_background:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 126
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 127
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mBackgroundCorner:I

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->dp2Pixel(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 128
    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mStrokeWidth:I

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->dp2Pixel(I)F

    move-result v1

    float-to-int v1, v1

    iget p0, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mStrokeColor:I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->STATUS_NORMAL:F

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->STATUS_DIM:F

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mBackgroundColor:I

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setProperties()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 133
    sget v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->STATUS_NORMAL:F

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->STATUS_DIM:F

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setAlpha(F)V

    .line 134
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setEnabled(Z)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextSize:F

    const/4 p1, 0x2

    .line 147
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextUnit:I

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->applyFontSizeLimit()V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 139
    iput p2, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextSize:F

    .line 140
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->mTextUnit:I

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->applyFontSizeLimit()V

    return-void
.end method

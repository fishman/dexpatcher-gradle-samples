.class public Lcom/samsung/android/shealthmonitor/widget/HTextButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "HTextButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;,
        Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;,
        Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;
    }
.end annotation


# static fields
.field private static final INIT_VALUE:F = -1.0f

.field private static STATUS_DIM:F = 0.4f

.field private static STATUS_NORMAL:F = 1.0f

.field private static STROKE_PIXEL:F = 2.0f

.field private static STROKE_ROUND_DP:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final sButtonPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;",
            "Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowDefaultShape:Z

.field private mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

.field private mIsApplyUpToLarge:Z

.field private mOriginalBackground:Landroid/graphics/drawable/Drawable;

.field private mTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->TAG:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->BUTTON_FLAT_TEXT_ONLY_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    new-instance v9, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    sget v8, Lcom/samsung/android/shealthmonitor/base/R$drawable;->baseui_textbutton_button_flat_text_only_bg_p_os:I

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x24

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->PREVIOUS_NEXT_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    new-instance v9, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    sget v8, Lcom/samsung/android/shealthmonitor/base/R$drawable;->baseui_textbutton_previous_next_bg_p_os:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/16 v6, 0x14

    const/16 v7, 0x38

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->DIALOG_ACTION_BUTTON_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    new-instance v9, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    sget v8, Lcom/samsung/android/shealthmonitor/base/R$drawable;->baseui_textbutton_dialog_action_button_bg_p_os:I

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/16 v7, 0x24

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->BOTTOM_BAR_TEXT_ONLY_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    new-instance v9, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    sget v8, Lcom/samsung/android/shealthmonitor/base/R$drawable;->baseui_textbutton_botton_bar_text_only_bg_p_os:I

    const/16 v5, 0x18

    const/16 v6, 0x18

    const/16 v7, 0x30

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->sButtonPropertyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 182
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mAllowDefaultShape:Z

    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mIsApplyUpToLarge:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 58
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mTextSize:F

    .line 187
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->initializeView(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private allowDefaultShape(I)V
    .locals 3

    .line 216
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mAllowDefaultShape:Z

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->BUTTON_FLAT_TEXT_ONLY:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 221
    sget-object p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->sButtonPropertyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->BUTTON_FLAT_TEXT_ONLY_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    goto :goto_0

    .line 222
    :cond_1
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->PREVIOUS_NEXT:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 223
    sget-object p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->sButtonPropertyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->PREVIOUS_NEXT_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    goto :goto_0

    .line 224
    :cond_2
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->DIALOG_ACTION_BUTTON:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 225
    sget-object p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->sButtonPropertyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->DIALOG_ACTION_BUTTON_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    goto :goto_0

    .line 226
    :cond_3
    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->BOTTOM_BAR_TEXT_ONLY:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeAttrKey;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 227
    sget-object p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->sButtonPropertyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->BOTTOM_BAR_TEXT_ONLY_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    goto :goto_0

    .line 229
    :cond_4
    sget-object p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->TAG:Ljava/lang/String;

    const-string v0, "initializeView: not button type."

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    if-eqz p1, :cond_5

    .line 234
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    iget p1, p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mMinHeight:I

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->dp2Pixel(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setMinHeight(I)V

    .line 235
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    iget p1, p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mRipplePaddingStart:I

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->dp2Pixel(I)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    iget v0, v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mRipplePaddingTop:I

    .line 236
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->dp2Pixel(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    iget v1, v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mRipplePaddingEnd:I

    .line 237
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->dp2Pixel(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    iget v2, v2, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mRipplePaddingBottom:I

    .line 238
    invoke-direct {p0, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->dp2Pixel(I)F

    move-result v2

    float-to-int v2, v2

    .line 235
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setPaddingRelative(IIII)V

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    iget v0, v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mResourceId:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 240
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->STATUS_NORMAL:F

    goto :goto_1

    :cond_6
    sget p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->STATUS_DIM:F

    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setAlpha(F)V

    return-void
.end method

.method private applyUpToLargeLevel()V
    .locals 2

    .line 305
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mIsApplyUpToLarge:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mTextSize:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mTextSize:F

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getApplyUpToLargeTextSizeByDp(Landroid/content/Context;F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextSizeInternal(F)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private dp2Pixel(I)F
    .locals 1

    int-to-float p1, p1

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 269
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private initializeView(Landroid/util/AttributeSet;I)V
    .locals 3

    const/16 v0, 0x11

    .line 191
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setGravity(I)V

    if-eqz p1, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/base/R$styleable;->common_text_button:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 199
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$styleable;->common_text_button_allowDefaultButtonShape:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mAllowDefaultShape:Z

    .line 200
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$styleable;->common_text_button_button_type:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 201
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->allowDefaultShape(I)V

    .line 202
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$styleable;->common_text_view_applyUpToLarge:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mIsApplyUpToLarge:Z

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getTextSize(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v4/util/Pair;

    move-result-object p1

    .line 205
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mIsApplyUpToLarge:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mIsApplyUpToLarge:Z

    .line 206
    iget-object p1, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mTextSize:F

    .line 208
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mIsApplyUpToLarge:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mButtonProperty:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;

    sget-object v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->sButtonPropertyMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;->DIALOG_ACTION_BUTTON_P_OS:Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonTypeMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 209
    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setIncludeFontPadding(Z)V

    .line 211
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method private isShowButtonShapesEnabled()Z
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_button_background"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private setTextSizeInternal(F)V
    .locals 1

    const/4 v0, 0x1

    .line 294
    invoke-super {p0, v0, p1}, Landroid/support/v7/widget/AppCompatButton;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->applyUpToLargeLevel()V

    .line 301
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatButton;->onMeasure(II)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 247
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/shealthmonitor/base/R$drawable;->common_oval_ripple:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 249
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 263
    sget v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->STATUS_NORMAL:F

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->STATUS_DIM:F

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setAlpha(F)V

    .line 265
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setEnabled(Z)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mIsApplyUpToLarge:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextSizeInternal(F)V

    return-void

    .line 289
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setTextSize(F)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mIsApplyUpToLarge:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 276
    iget p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mTextSize:F

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextSizeInternal(F)V

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 278
    iput v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mTextSize:F

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->mIsApplyUpToLarge:Z

    .line 280
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatButton;->setTextSize(IF)V

    return-void
.end method

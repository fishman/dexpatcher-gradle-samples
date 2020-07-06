.class public Lcom/samsung/android/shealthmonitor/widget/HEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "HEditText.java"


# instance fields
.field private mErrorStatus:Ljava/lang/Boolean;

.field private mErrorView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorStatus:Ljava/lang/Boolean;

    .line 28
    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->initializeView(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initializeView(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->isFocused()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/shealthmonitor/base/R$color;->edittext_text_focused:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/shealthmonitor/base/R$color;->edittext_text_normal:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public isErrorStatus()Z
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorStatus:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 79
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/shealthmonitor/base/R$color;->edittext_text_focused:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/shealthmonitor/base/R$color;->edittext_text_error:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/shealthmonitor/base/R$color;->edittext_text_focused:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/shealthmonitor/base/R$color;->edittext_text_error:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/shealthmonitor/base/R$color;->edittext_text_normal:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public removeErrorText()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorStatus:Ljava/lang/Boolean;

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/shealthmonitor/base/R$color;->edittext_text_focused:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/shealthmonitor/base/R$color;->edittext_text_normal:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorStatus:Ljava/lang/Boolean;

    .line 50
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->edittext_text_error:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->edittext_text_focused:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setErrorView(Landroid/widget/TextView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;->mErrorView:Landroid/widget/TextView;

    return-void
.end method

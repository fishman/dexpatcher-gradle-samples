.class public Landroid/support/design/circularreveal/CircularRevealLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CircularRevealLinearLayout.java"

# interfaces
.implements Landroid/support/design/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Landroid/support/design/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-direct {p1, p0}, Landroid/support/design/circularreveal/CircularRevealHelper;-><init>(Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object p1, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    return-void
.end method


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public actualIsOpaque()Z
    .locals 0

    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public buildCircularRevealCache()V
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 0

    .line 47
    iget-object p0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 85
    iget-object p0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 74
    iget-object p0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getCircularRevealScrimColor()I
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result p0

    return p0
.end method

.method public getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object p0

    return-object p0
.end method

.method public isOpaque()Z
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {p0}, Landroid/support/design/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result p0

    return p0

    .line 101
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 79
    iget-object p0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 0

    .line 68
    iget-object p0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    return-void
.end method

.method public setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 0

    .line 58
    iget-object p0, p0, Landroid/support/design/circularreveal/CircularRevealLinearLayout;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    return-void
.end method

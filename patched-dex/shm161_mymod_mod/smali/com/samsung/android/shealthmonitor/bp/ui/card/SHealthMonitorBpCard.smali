.class public Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;
.super Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;
.source "SHealthMonitorBpCard.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorBpCard"


# instance fields
.field private mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

.field private mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mForceViewChangeListenerNotForUI:Landroid/view/View$OnClickListener;

.field private mGd:Landroid/support/v4/view/GestureDetectorCompat;

.field private mIsGetFromDevice:Z

.field private mIsIncompatibleWatch:Z

.field private mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsIncompatibleWatch:Z

    .line 82
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsGetFromDevice:Z

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    .line 230
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    .line 252
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mForceViewChangeListenerNotForUI:Landroid/view/View$OnClickListener;

    .line 260
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsIncompatibleWatch:Z

    .line 82
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsGetFromDevice:Z

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    .line 230
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    .line 252
    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mForceViewChangeListenerNotForUI:Landroid/view/View$OnClickListener;

    .line 260
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsIncompatibleWatch:Z

    .line 82
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsGetFromDevice:Z

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    .line 230
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    .line 252
    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mForceViewChangeListenerNotForUI:Landroid/view/View$OnClickListener;

    .line 260
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsIncompatibleWatch:Z

    .line 82
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsGetFromDevice:Z

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    .line 230
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    .line 252
    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mForceViewChangeListenerNotForUI:Landroid/view/View$OnClickListener;

    .line 260
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mGd:Landroid/support/v4/view/GestureDetectorCompat;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeCalibrationView(I)V

    return-void
.end method

.method private changeCalibrationView(I)V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    const v1, -0x50506

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 188
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$$Lambda$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)V

    .line 212
    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    .line 213
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;->setCardTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeCardBackground(I)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "S HealthMonitor - SHealthMonitorBpCard"

    const-string v2, " [changeCalibrationView] mCalibrationView is not added"

    .line 218
    invoke-static {v0, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeCardBackground(I)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;->getCurrentStep()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;->setContent(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 227
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->setRestrictTopVew(Z)V

    return-void
.end method

.method private changeCardBackground(I)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 292
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->card_bg:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private changeDataView()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    const v1, -0x50506

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "S HealthMonitor - SHealthMonitorBpCard"

    const-string v3, " [changeCalibrationView] mDataView is not added"

    .line 234
    invoke-static {v0, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->setFullButton(I)V

    .line 238
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeCardBackground(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->updateView()V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 243
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    .line 244
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mForceViewChangeListenerNotForUI:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->setForceCardChangeListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->setFullButton(I)V

    .line 247
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeCardBackground(I)V

    :goto_0
    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->setRestrictTopVew(Z)V

    return-void
.end method

.method private changeRestrictionView(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;)V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;->setContent(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;)V

    .line 264
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "S HealthMonitor - SHealthMonitorBpCard"

    const-string v0, " [changeRestrictionView] mRestrictionView is not added"

    .line 265
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 267
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeCardBackground(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    .line 272
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    .line 273
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 274
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;-><init>(Landroid/content/Context;Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    .line 275
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeCardBackground(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 278
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->setRestrictTopVew(Z)V

    return-void
.end method

.method private checkIncompatibleWatch()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsGetFromDevice:Z

    if-eqz v0, :cond_0

    .line 85
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsIncompatibleWatch:Z

    return p0

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsIncompatibleWatch:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private checkValidationAndUpdateMainView()V
    .locals 1

    .line 71
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getCheckingCountry()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->isUSModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->NOT_SUPPORTED_COUNTRY:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeRestrictionView(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;)V

    return-void

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->isInvalidAge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->NOT_INTENDED_AGE:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeRestrictionView(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;)V

    return-void

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->checkIncompatibleWatch()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getBpMeasuredDataExist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;->INCOMPATIBLE_WEARABLE:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeRestrictionView(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView$Restriction;)V

    return-void

    .line 78
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->updateCardView()V

    return-void
.end method

.method private getDeviceInfo()V
    .locals 2

    .line 91
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->nodeObservable()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    .line 92
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)V

    .line 93
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initView()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 109
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_card:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->proto_type_root:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    .line 112
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->proto_type_view_name:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mNameText:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 115
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string p0, "S HealthMonitor - SHealthMonitorBpCard"

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[RecalibrationState] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRecalibrationState()Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isConnected()Z
    .locals 0

    .line 287
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->isConnectedBpNode()Z

    move-result p0

    return p0
.end method

.method private isInvalidAge()Z
    .locals 2

    .line 101
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getUserProfile()Lcom/samsung/android/shealthmonitor/data/UserProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->getYear()I

    move-result p0

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p0

    const/16 p0, 0x16

    if-le p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setRestrictTopVew(Z)V
    .locals 1

    .line 296
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getTopCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->setIsRestrictStatus(Z)V

    .line 297
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->forceRefreshTopCard()V

    return-void
.end method

.method private updateCardView()V
    .locals 4

    .line 156
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInitialCalibrationComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeDataView()V

    return-void

    .line 161
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->reLoad()V

    .line 162
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result v0

    const-string v1, "S HealthMonitor - SHealthMonitorBpCard"

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [updateCardView] step = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeDataView()V

    return-void

    :cond_1
    if-lez v0, :cond_2

    if-le v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 168
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->changeCalibrationView(I)V

    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 303
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDisposable:Lio/reactivex/disposables/Disposable;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->removeAllViews()V

    .line 307
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->removeAllViews()V

    .line 313
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRoot:Landroid/widget/LinearLayout;

    .line 314
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mCalibrationView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCalibrationView;

    .line 315
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mRestrictionView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpRestrictionView;

    .line 316
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    return-void
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getDeviceInfo()V

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->initView()V

    return-void
.end method

.method final synthetic lambda$changeCalibrationView$1$SHealthMonitorBpCard(Landroid/view/View;)V
    .locals 3

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    sget-object p1, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->showNoConnectionDialog(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V

    return-void

    .line 194
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    const/16 v0, 0x7b

    :cond_1
    const-string p1, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpCalibrateFirstPrerequisiteActivity"

    .line 201
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 202
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x4000000

    .line 203
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "BP_CALIBRATE_FIRST_PREREQUISITE_STEP_SCENARIO"

    .line 204
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorBpCard"

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Exception : class not found = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$getDeviceInfo$0$SHealthMonitorBpCard(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsGetFromDevice:Z

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getConnectionStatus()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mIsIncompatibleWatch:Z

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->checkValidationAndUpdateMainView()V

    return-void
.end method

.method public onExpanded()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    if-eqz v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->onExpand(Z)V

    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->checkValidationAndUpdateMainView()V

    return-void
.end method

.method public onOutsideClick()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->hideSwipe()V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorHistoryActivity"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onReset(F)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    if-eqz p1, :cond_0

    .line 151
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mDataView:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->onExpand(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->checkValidationAndUpdateMainView()V

    return-void
.end method

.method public setGestureDetector(Landroid/support/v4/view/GestureDetectorCompat;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->mGd:Landroid/support/v4/view/GestureDetectorCompat;

    return-void
.end method

.method public updateView(I)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->checkValidationAndUpdateMainView()V

    return-void
.end method

.class public abstract Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;
.super Landroid/widget/LinearLayout;
.source "ProtoTypeTopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - ProtoTypeTopView"


# instance fields
.field protected mBlueColor:I

.field protected mContext:Landroid/content/Context;

.field protected mGreenColor:I

.field private mIsSkipClick:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field protected mMyColor:I

.field protected mNameText:Landroid/widget/TextView;

.field protected mRedColor:I

.field protected mRoot:Landroid/widget/LinearLayout;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mListener:Landroid/view/View$OnClickListener;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mIsSkipClick:Z

    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mListener:Landroid/view/View$OnClickListener;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mTouchListener:Landroid/view/View$OnTouchListener;

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mIsSkipClick:Z

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mListener:Landroid/view/View$OnClickListener;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mTouchListener:Landroid/view/View$OnTouchListener;

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mIsSkipClick:Z

    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mListener:Landroid/view/View$OnClickListener;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mTouchListener:Landroid/view/View$OnTouchListener;

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mIsSkipClick:Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBcColor()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mMyColor:I

    return p0
.end method

.method public getBodyWidth()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getEndMargin()F
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result p0

    sub-float/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getStartMargin()F
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTopMargin()F
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mContext:Landroid/content/Context;

    .line 57
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 58
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$layout;->proto_type_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 60
    sget p1, Lcom/samsung/android/shealthmonitor/base/R$id;->proto_type_root:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRoot:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setBgColor(F)V
    .locals 3

    .line 73
    iget v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRedColor:I

    rsub-int v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRedColor:I

    add-int/2addr v0, v1

    .line 74
    iget v1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mGreenColor:I

    rsub-int v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mGreenColor:I

    add-int/2addr v1, v2

    .line 75
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mBlueColor:I

    rsub-int v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mBlueColor:I

    add-int/2addr p1, v2

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 78
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mRoot:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public abstract updateView(I)V
.end method

.class public abstract Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;
.super Landroid/widget/LinearLayout;
.source "ProtoTypeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - ProtoTypeView"


# instance fields
.field protected mActivity:Landroid/support/v7/app/AppCompatActivity;

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

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mIsSkipClick:Z

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mTouchListener:Landroid/view/View$OnTouchListener;

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mIsSkipClick:Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mTouchListener:Landroid/view/View$OnTouchListener;

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mIsSkipClick:Z

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mTouchListener:Landroid/view/View$OnTouchListener;

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mIsSkipClick:Z

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBcColor()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mMyColor:I

    return p0
.end method

.method public getBodyWidth()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 148
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getEndMargin()F
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRoot:Landroid/widget/LinearLayout;

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

    .line 160
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 161
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTopMargin()F
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 155
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRoot:Landroid/widget/LinearLayout;

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

    .line 58
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mContext:Landroid/content/Context;

    .line 59
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 60
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$layout;->proto_type_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    sget p1, Lcom/samsung/android/shealthmonitor/base/R$id;->proto_type_root:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRoot:Landroid/widget/LinearLayout;

    .line 63
    sget p1, Lcom/samsung/android/shealthmonitor/base/R$id;->proto_type_view_name:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mNameText:Landroid/widget/TextView;

    .line 64
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mNameText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mNameText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isSkipClick()Z
    .locals 4

    .line 188
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mIsSkipClick:Z

    const/4 v1, 0x0

    .line 189
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mIsSkipClick:Z

    const-string v1, "S HealthMonitor - ProtoTypeView"

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [isSkipClick] ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " current will :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mIsSkipClick:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public abstract onExpanded()V
.end method

.method protected abstract onInit()V
.end method

.method public abstract onOutsideClick()V
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public abstract onReset(F)V
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setActivity(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->onInit()V

    return-void
.end method

.method public setBgColor(F)V
    .locals 3

    .line 100
    iget v0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRedColor:I

    rsub-int v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRedColor:I

    add-int/2addr v0, v1

    .line 101
    iget v1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mGreenColor:I

    rsub-int v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mGreenColor:I

    add-int/2addr v1, v2

    .line 102
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mBlueColor:I

    rsub-int v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mBlueColor:I

    add-int/2addr p1, v2

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mRoot:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setGestureDetector(Landroid/support/v4/view/GestureDetectorCompat;)V
    .locals 0

    return-void
.end method

.method public setNamClickable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mNameText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mNameText:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSkipClick(Z)V
    .locals 3

    const-string v0, "S HealthMonitor - ProtoTypeView"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [setSkipClick] set : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mIsSkipClick:Z

    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public abstract updateView(I)V
.end method

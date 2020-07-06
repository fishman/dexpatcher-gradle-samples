.class public Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;
.super Landroid/widget/RelativeLayout;
.source "TopCardContainerLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - TopCardContainerLayout"


# instance fields
.field private mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mViewChangeListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mCards:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mViewChangeListener:Landroid/view/View$OnClickListener;

    .line 91
    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mCards:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 85
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mViewChangeListener:Landroid/view/View$OnClickListener;

    .line 91
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mCards:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 85
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mViewChangeListener:Landroid/view/View$OnClickListener;

    .line 91
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mCards:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 85
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mViewChangeListener:Landroid/view/View$OnClickListener;

    .line 91
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mCards:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mViewChangeListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public addChangeListener()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mContext:Landroid/content/Context;

    .line 51
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 52
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$layout;->shealth_monitor_card_container:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getAllTopCardView(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;

    .line 72
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setViewChangeListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->mViewChangeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

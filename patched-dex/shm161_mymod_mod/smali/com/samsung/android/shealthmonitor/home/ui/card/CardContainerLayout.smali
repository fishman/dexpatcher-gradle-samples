.class public Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;
.super Landroid/widget/RelativeLayout;
.source "CardContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$MyGesturListener;,
        Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$SingleCardMyGesturListener;
    }
.end annotation


# static fields
.field private static CARD_BASE_RATIO:F = 0.0f

.field private static final CARD_EXPAND_HEIGHT_RATIO:F = 0.75f

.field private static final CARD_GAP_RATIO:F = 0.3f

.field public static final CARD_STATIC_BASE_RATIO:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - CardContainerLayout"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentFrontCard:I

.field private mCurrentY:F

.field private mDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mEndMargin:F

.field private mGapHeight:F

.field private mGapRatio:F

.field private mIsFling:Z

.field private mIsOneCard:Z

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mLps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RelativeLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHeight:F

.field private mMaxScale:F

.field private mSingleTouchListener:Landroid/view/View$OnTouchListener;

.field private mStartMargin:F

.field private mTopMargin:F

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTopMargin:F

    .line 40
    iput v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mStartMargin:F

    .line 41
    iput v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mEndMargin:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    iput v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mMaxScale:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 45
    iput v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchY:F

    .line 46
    iput v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentY:F

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentFrontCard:I

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsFling:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsOneCard:Z

    .line 121
    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mSingleTouchListener:Landroid/view/View$OnTouchListener;

    .line 174
    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 235
    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->clickListener:Landroid/view/View$OnClickListener;

    .line 435
    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLps:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTopMargin:F

    .line 40
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mStartMargin:F

    .line 41
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mEndMargin:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 42
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mMaxScale:F

    const/high16 p2, -0x40800000    # -1.0f

    .line 45
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchY:F

    .line 46
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentY:F

    const/4 p2, 0x0

    .line 47
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentFrontCard:I

    .line 48
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsFling:Z

    .line 55
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsOneCard:Z

    .line 121
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mSingleTouchListener:Landroid/view/View$OnTouchListener;

    .line 174
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 235
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->clickListener:Landroid/view/View$OnClickListener;

    .line 435
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLps:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTopMargin:F

    .line 40
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mStartMargin:F

    .line 41
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mEndMargin:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 42
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mMaxScale:F

    const/high16 p2, -0x40800000    # -1.0f

    .line 45
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchY:F

    .line 46
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentY:F

    const/4 p2, 0x0

    .line 47
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentFrontCard:I

    .line 48
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsFling:Z

    .line 55
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsOneCard:Z

    .line 121
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mSingleTouchListener:Landroid/view/View$OnTouchListener;

    .line 174
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 235
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->clickListener:Landroid/view/View$OnClickListener;

    .line 435
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLps:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTopMargin:F

    .line 40
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mStartMargin:F

    .line 41
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mEndMargin:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 42
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mMaxScale:F

    const/high16 p2, -0x40800000    # -1.0f

    .line 45
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchY:F

    .line 46
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentY:F

    const/4 p2, 0x0

    .line 47
    iput p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentFrontCard:I

    .line 48
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsFling:Z

    .line 55
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsOneCard:Z

    .line 121
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mSingleTouchListener:Landroid/view/View$OnTouchListener;

    .line 174
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 235
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->clickListener:Landroid/view/View$OnClickListener;

    .line 435
    new-instance p2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentFrontCard:I

    return p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mEndMargin:F

    return p0
.end method

.method static synthetic access$1002(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mEndMargin:F

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentFrontCard:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->clickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsOneCard:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mSingleTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;I)F
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->getCardBaseY(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLps:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->changeCardPosition()V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchY:F

    return p0
.end method

.method static synthetic access$1902(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchY:F

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentY:F

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;I)F
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->getCurrentY(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->moveCards(F)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->checkExpandHeight()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->expandCard(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->checkChangeCard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->resetCardPosition()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mMainHeight:F

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mMainHeight:F

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mGapHeight:F

    return p0
.end method

.method static synthetic access$402(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mGapHeight:F

    return p1
.end method

.method static synthetic access$500()F
    .locals 1

    .line 26
    sget v0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->CARD_BASE_RATIO:F

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mGapRatio:F

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mMaxScale:F

    return p0
.end method

.method static synthetic access$702(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mMaxScale:F

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTopMargin:F

    return p0
.end method

.method static synthetic access$802(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTopMargin:F

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mStartMargin:F

    return p0
.end method

.method static synthetic access$902(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mStartMargin:F

    return p1
.end method

.method private changeCardPosition()V
    .locals 3

    const-string v0, "S HealthMonitor - CardContainerLayout"

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [changeCardPosition] mCurrentFrontCard = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentFrontCard:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkChangeCard()Z
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentFrontCard:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 403
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    const-string v1, "S HealthMonitor - CardContainerLayout"

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [checkChangeCard] yPos = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " tV = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mMainHeight:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsFling:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 407
    iput-boolean v3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsFling:Z

    return v2

    .line 410
    :cond_0
    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mMainHeight:F

    mul-float/2addr p0, v4

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method private checkExpandHeight()Z
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentFrontCard:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 375
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    .line 377
    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mMainHeight:F

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr p0, v1

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private expandCard(I)V
    .locals 4

    const-string v0, "S HealthMonitor - CardContainerLayout"

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [expandCard] selCard = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTopMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTopMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsFling:Z

    if-eqz v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->getY()F

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTopMargin:F

    sub-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->setMyAnimation(Landroid/view/View;FF)V

    .line 383
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->onExpanded()V

    return-void
.end method

.method private getCardBaseY(I)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getCurrentY(I)F
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 327
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->getY()F

    move-result p0

    return p0
.end method

.method private moveCards(F)V
    .locals 0

    return-void
.end method

.method private resetCardPosition()V
    .locals 4

    const-string v0, "S HealthMonitor - CardContainerLayout"

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [resetCardPosition] mCurrentFrontCard = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCurrentFrontCard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ratio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->CARD_BASE_RATIO:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsFling:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->getY()F

    move-result v2

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->getCardBaseY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->setMyAnimation(Landroid/view/View;FF)V

    .line 429
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->getCardBaseY(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->onReset(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setLayoutMargin(ILcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;F)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLps:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_0

    move p3, v0

    .line 230
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mStartMargin:F

    neg-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTopMargin:F

    neg-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    iget p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mEndMargin:F

    neg-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, v0, v1, p0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 231
    invoke-virtual {p2, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private setMyAnimation(Landroid/view/View;FF)V
    .locals 6

    const-wide/16 v4, 0xc8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 285
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->setMyAnimation(Landroid/view/View;FFJ)V

    return-void
.end method

.method private setMyAnimation(Landroid/view/View;FFJ)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected initView(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mContext:Landroid/content/Context;

    .line 80
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 81
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$layout;->shealth_monitor_card_container:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getAllCardView(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->setActivity(Landroid/support/v7/app/AppCompatActivity;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsOneCard:Z

    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->setGestureListener()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 515
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    .line 516
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 507
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    .line 508
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeGestureListener()V
    .locals 3

    .line 111
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsOneCard:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->setGestureDetector(Landroid/support/v4/view/GestureDetectorCompat;)V

    const-string v0, "S HealthMonitor - CardContainerLayout"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [initView] mIsOneCard : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsOneCard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public resetCardPosition(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 415
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->onReset(F)V

    return-void

    .line 417
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->onExpanded()V

    return-void
.end method

.method public setGestureListener()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsOneCard:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mSingleTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$SingleCardMyGesturListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$SingleCardMyGesturListener;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mCards:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->setGestureDetector(Landroid/support/v4/view/GestureDetectorCompat;)V

    const-string v0, "S HealthMonitor - CardContainerLayout"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [initView] mIsOneCard : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mIsOneCard:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$MyGesturListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$MyGesturListener;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->mDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-void
.end method

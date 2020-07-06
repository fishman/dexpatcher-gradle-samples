.class public final Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;
.super Landroid/widget/LinearLayout;
.source "BottomNavigationwithColorButtonLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$BottomActionButtonClickListener;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mClickListener:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$BottomActionButtonClickListener;

.field private mContext:Landroid/content/Context;

.field public mLeftButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

.field public mRightButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->initView()V

    return-void
.end method

.method public static final synthetic access$getMClickListener$p(Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;)Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$BottomActionButtonClickListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mClickListener:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$BottomActionButtonClickListener;

    return-object p0
.end method

.method public static final synthetic access$setMClickListener$p(Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$BottomActionButtonClickListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mClickListener:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$BottomActionButtonClickListener;

    return-void
.end method

.method private final initView()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$layout;->bottom_navigation_with_color_button_layout:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$id;->hTextButtonLeft:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v1, "hTextButtonLeft"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mLeftButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 80
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$id;->hTextButtonRight:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v1, "hTextButtonRight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mRightButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mLeftButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    if-nez v0, :cond_0

    const-string v1, "mLeftButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/samsung/android/shealthmonitor/base/R$string;->common_tracker_previous:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mRightButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    if-nez v0, :cond_1

    const-string v1, "mRightButton"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v1, Lcom/samsung/android/shealthmonitor/base/R$string;->shealth_monitor_calibrate_my_watch:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setText(I)V

    .line 86
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$id;->hTextButtonLeft:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance v1, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$initView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$initView$1;-><init>(Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$id;->hTextButtonRight:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    new-instance v1, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$initView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$initView$2;-><init>(Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getMLeftButton()Lcom/samsung/android/shealthmonitor/widget/HTextButton;
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mLeftButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    if-nez p0, :cond_0

    const-string v0, "mLeftButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final getMRightButton()Lcom/samsung/android/shealthmonitor/widget/HColorButton;
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mRightButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    if-nez p0, :cond_0

    const-string v0, "mRightButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final setClickListener(Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$BottomActionButtonClickListener;)V
    .locals 1

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mClickListener:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$BottomActionButtonClickListener;

    return-void
.end method

.method public final setMLeftButton(Lcom/samsung/android/shealthmonitor/widget/HTextButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mLeftButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    return-void
.end method

.method public final setMRightButton(Lcom/samsung/android/shealthmonitor/widget/HColorButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->mRightButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    return-void
.end method

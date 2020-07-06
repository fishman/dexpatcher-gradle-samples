.class public final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorTermsAndConditionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSHealthMonitorTermsAndConditionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SHealthMonitorTermsAndConditionActivity.kt\ncom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity\n*L\n1#1,105:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorTermsAndConditionActivity"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private fontFace:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method private final addDescTextView(I)V
    .locals 5

    .line 89
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mContentView:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/TextView;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x18

    .line 91
    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    const/high16 p1, -0x1000000

    .line 94
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->fontFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p0, 0x41600000    # 14.0f

    .line 96
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 p0, 0x41100000    # 9.0f

    const/high16 p1, 0x3f800000    # 1.0f

    .line 97
    invoke-virtual {v1, p0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 89
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final addTitleTextView(I)V
    .locals 5

    .line 76
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mContentView:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/TextView;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x18

    .line 78
    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 77
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$color;->privacy_title_color:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->fontFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p0, 0x41880000    # 17.0f

    .line 83
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 p0, 0x41100000    # 9.0f

    const/high16 p1, 0x3f800000    # 1.0f

    .line 84
    invoke-virtual {v1, p0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 76
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final initActionBar()V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    return-void
.end method

.method private final initView()V
    .locals 8

    const-string v0, "shealth_monitory_tnc_title_"

    const-string v1, "shealth_monitory_tnc_desc_"

    .line 55
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/samsung/android/shealthmonitor/home/R$font;->samsungone_500:I

    invoke-static {v2, v3}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->fontFace:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x11

    if-gt v3, v4, :cond_2

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/samsung/android/shealthmonitor/home/R$string;

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/Utils;->getResId(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 60
    invoke-direct {p0, v4}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->addTitleTextView(I)V

    move v4, v2

    :goto_1
    const/16 v6, 0xa

    if-gt v4, v6, :cond_0

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/samsung/android/shealthmonitor/home/R$string;

    invoke-static {v6, v7}, Lcom/samsung/android/shealthmonitor/util/Utils;->getResId(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v6

    if-eq v6, v5, :cond_0

    .line 64
    invoke-direct {p0, v6}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->addDescTextView(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getFontFace()Landroid/graphics/Typeface;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->fontFace:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->setSetDefaultMenuColor(Z)V

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$layout;->shealth_monitor_terms_and_condition:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->initView()V

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->initActionBar()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->finish()V

    .line 36
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected final onResume()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 41
    sget-object p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->TAG:Ljava/lang/String;

    const-string v0, "onResume() - Start"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->TAG:Ljava/lang/String;

    const-string v0, "onResume() - End"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setFontFace(Landroid/graphics/Typeface;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorTermsAndConditionActivity;->fontFace:Landroid/graphics/Typeface;

    return-void
.end method

.class public Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SAlertDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;,
        Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;
    }
.end annotation


# static fields
.field private static final CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "content_description"

.field private static final CONTENT_RES_ID_KEY:Ljava/lang/String; = "content_res_id"

.field private static final CONTENT_TEXT_KEY:Ljava/lang/String; = "content_text"

.field private static final CONTENT_VIEW_ID_KEY:Ljava/lang/String; = "content_view_id"

.field private static final DEFAULT_INT_VALUE:I = -0x1

.field private static final IS_AUTO_DISMISS_KEY:Ljava/lang/String; = "is_auto_dismiss"

.field private static final IS_CANCELED_ON_TOUCH_OUTSIDE_KEY:Ljava/lang/String; = "is_canceled_on_touch_outside"

.field private static final IS_HIDE_TITLE_KEY:Ljava/lang/String; = "is_hide_title"

.field private static final IS_SWITCH_CHECKED_KEY:Ljava/lang/String; = "is_switch_checked"

.field private static final NEGATIVE_TEXT_COLOR_KEY:Ljava/lang/String; = "negative_text_color"

.field private static final NEGATIVE_TEXT_ID_KEY:Ljava/lang/String; = "negative_text_id"

.field private static final NEUTRAL_TEXT_COLOR_KEY:Ljava/lang/String; = "neutral_text_color"

.field private static final NEUTRAL_TEXT_ID_KEY:Ljava/lang/String; = "neutral_text_id"

.field private static final POSITIVE_TEXT_COLOR_KEY:Ljava/lang/String; = "positive_text_color"

.field private static final POSITIVE_TEXT_COLOR_LIST_KEY:Ljava/lang/String; = "positive_text_color_list"

.field private static final POSITIVE_TEXT_ID_KEY:Ljava/lang/String; = "positive_text_id"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_RES_ID_KEY:Ljava/lang/String; = "title_res_id"

.field private static final TITLE_TEXT_KEY:Ljava/lang/String; = "title_text"

.field private static final TYPE_KEY:Ljava/lang/String; = "type"

.field public static final TYPE_NO_BUTTON:I = 0x0

.field public static final TYPE_N_BUTTON:I = 0x2

.field public static final TYPE_P_BUTTON:I = 0x1

.field public static final TYPE_P_N_BUTTON:I = 0x3

.field public static final TYPE_THREE_BUTTON:I = 0x4

.field private static mCheckFullSize:Z


# instance fields
.field private mButtonContainer:Landroid/widget/FrameLayout;

.field private mButtonType:I

.field private mContentInitialListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

.field private mContentView:Landroid/view/View;

.field private mIsInstanceStateSaved:Z

.field private mIsShowingVerticalButton:Z

.field private mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

.field private mNegativeText:Ljava/lang/String;

.field private mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

.field private mNeutralText:Ljava/lang/String;

.field private mOnBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

.field private mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

.field private mOnNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

.field private mOnNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

.field private mOnPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

.field private mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

.field private mPositiveText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x3

    .line 60
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonType:I

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mIsShowingVerticalButton:Z

    .line 122
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mIsInstanceStateSaved:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/widget/HTextButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    return-object p0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .line 57
    sput-boolean p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mCheckFullSize:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setPositiveButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setNegativeButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setNeutralButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setDialogCancelListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setContentInitializationListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->showVerticalButtonLayout(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/widget/HTextButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/widget/HTextButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mIsInstanceStateSaved:Z

    return p0
.end method

.method private setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    return-void
.end method

.method private setContentInitializationListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mContentInitialListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

    return-void
.end method

.method private setDialogCancelListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    return-void
.end method

.method private setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    return-void
.end method

.method private setNegativeButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    return-void
.end method

.method private setNeutralButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    return-void
.end method

.method private setPositiveButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    return-void
.end method

.method private setSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method private showVerticalButtonLayout(I)V
    .locals 5

    .line 514
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mIsShowingVerticalButton:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 515
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mIsShowingVerticalButton:Z

    .line 516
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 518
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "layout_inflater"

    .line 521
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 522
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1

    .line 526
    sget p1, Lcom/samsung/android/shealthmonitor/base/R$layout;->baseui_dialog_button_vertical_view:I

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_6

    .line 528
    sget p1, Lcom/samsung/android/shealthmonitor/base/R$layout;->baseui_dialog_three_button_vertical_view:I

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 529
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$id;->neutral_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 530
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance v2, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$10;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$id;->positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 555
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$id;->negative_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 557
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 560
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "positive_text_color"

    .line 562
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 563
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v1, "positive_text_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    goto :goto_1

    :cond_3
    const-string v0, "positive_text_color_list"

    .line 564
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 565
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "positive_text_color_list"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 569
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v1, "negative_text_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    if-eqz v0, :cond_5

    .line 571
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v1, "neutral_text_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    .line 575
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$11;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$12;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 549
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 618
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 619
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    if-eqz p1, :cond_0

    .line 620
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;->onCanceled(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    sget p1, Lcom/samsung/android/shealthmonitor/base/R$style;->SAlertDialogTheme:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setStyle(II)V

    const/4 p1, 0x1

    .line 133
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 144
    new-instance p1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$1;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$1;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 177
    sget v3, Lcom/samsung/android/shealthmonitor/base/R$layout;->baseui_alert_dialog:I

    const/4 v4, 0x0

    move-object/from16 v5, p2

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 179
    sget v5, Lcom/samsung/android/shealthmonitor/base/R$id;->alert_title_container:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 180
    sget v6, Lcom/samsung/android/shealthmonitor/base/R$id;->title:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 181
    sget v7, Lcom/samsung/android/shealthmonitor/base/R$id;->content_container:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 182
    sget v8, Lcom/samsung/android/shealthmonitor/base/R$id;->alert_text:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 183
    sget v9, Lcom/samsung/android/shealthmonitor/base/R$id;->buttons_container:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    .line 184
    sget v9, Lcom/samsung/android/shealthmonitor/base/R$id;->positive_button:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object v9, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 185
    sget v9, Lcom/samsung/android/shealthmonitor/base/R$id;->negative_button:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object v9, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 186
    sget v9, Lcom/samsung/android/shealthmonitor/base/R$id;->button_divider:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v11

    const-string v12, "is_canceled_on_touch_outside"

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const-string v11, "is_auto_dismiss"

    .line 192
    invoke-virtual {v10, v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v12, "title_res_id"

    .line 194
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_0

    const-string v12, "title_res_id"

    .line 195
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v12, "title_text"

    .line 197
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    const-string v12, "title_text"

    .line 198
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const-string v6, "is_hide_title"

    .line 202
    invoke-virtual {v10, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const/16 v12, 0x8

    if-eqz v6, :cond_2

    .line 203
    invoke-virtual {v5, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    const-string v5, "content_res_id"

    .line 208
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v14, :cond_3

    const-string v5, "content_res_id"

    .line 209
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const-string v5, "content_text"

    .line 211
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v5, "content_text"

    .line 212
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    const-string v5, "content_description"

    .line 216
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v5, "content_description"

    .line 217
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    const-string v5, "content_view_id"

    .line 222
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x2

    if-eq v5, v14, :cond_7

    .line 223
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    sget-boolean v5, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mCheckFullSize:Z

    if-eqz v5, :cond_6

    const/high16 v5, 0x43970000    # 302.0f

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 226
    invoke-static {v13, v5, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 228
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v8, v5, v4, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 229
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    :cond_6
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v14, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :try_start_0
    const-string v8, "content_view_id"

    .line 236
    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v15, 0x0

    invoke-virtual {v2, v8, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mContentView:Landroid/view/View;

    .line 237
    iget-object v8, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v7, v8, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 239
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    :goto_3
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mContentInitialListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

    if-eqz v5, :cond_7

    .line 243
    iget-object v15, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mContentInitialListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mContentView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    new-instance v7, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;

    sget v8, Lcom/samsung/android/shealthmonitor/base/R$id;->positive_button:I

    .line 244
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;-><init>(Landroid/view/View;)V

    move-object/from16 v16, v5

    move-object/from16 v20, v7

    .line 243
    invoke-interface/range {v15 .. v20}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;->onContentInitialization(Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V

    .line 248
    :cond_7
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v5, "type"

    .line 252
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonType:I

    .line 253
    iget v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonType:I

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const/4 v5, 0x4

    .line 355
    iput v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonType:I

    .line 356
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 357
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v14, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 359
    sget v6, Lcom/samsung/android/shealthmonitor/base/R$layout;->baseui_dialog_three_button_view:I

    iget-object v7, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 360
    iget-object v6, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    sget v5, Lcom/samsung/android/shealthmonitor/base/R$id;->positive_button:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 363
    sget v5, Lcom/samsung/android/shealthmonitor/base/R$id;->negative_button:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 364
    sget v5, Lcom/samsung/android/shealthmonitor/base/R$id;->neutral_button:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    :try_start_1
    const-string v2, "positive_text_id"

    .line 367
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveText:Ljava/lang/String;

    const-string v2, "negative_text_id"

    .line 368
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeText:Ljava/lang/String;

    const-string v2, "neutral_text_id"

    .line 369
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralText:Ljava/lang/String;

    .line 371
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "positive_text_color"

    .line 376
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v14, :cond_8

    .line 377
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v5, "positive_text_color"

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    goto :goto_4

    :cond_8
    const-string v2, "positive_text_color_list"

    .line 378
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v14, :cond_9

    .line 379
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "positive_text_color_list"

    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 384
    :cond_9
    :goto_4
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v5, "negative_text_color"

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    .line 385
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v5, "neutral_text_color"

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 388
    :catch_1
    sget-object v2, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->TAG:Ljava/lang/String;

    const-string v5, "onCreateView() - Exception for TYPE_THREE_BUTTON"

    invoke-static {v2, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_5
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 393
    new-instance v5, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$4;

    invoke-direct {v5, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$4;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 411
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 412
    new-instance v5, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$5;

    invoke-direct {v5, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$5;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 429
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 430
    new-instance v5, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$6;

    invoke-direct {v5, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$6;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_8

    :pswitch_1
    const/4 v2, 0x3

    .line 292
    iput v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonType:I

    :try_start_2
    const-string v2, "positive_text_id"

    .line 294
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveText:Ljava/lang/String;

    const-string v2, "negative_text_id"

    .line 295
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeText:Ljava/lang/String;

    .line 296
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "positive_text_color"

    .line 299
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v14, :cond_a

    .line 300
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v5, "positive_text_color"

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    goto :goto_6

    :cond_a
    const-string v2, "positive_text_color_list"

    .line 301
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v14, :cond_b

    .line 302
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "positive_text_color_list"

    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 307
    :cond_b
    :goto_6
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v5, "negative_text_color"

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 310
    :catch_2
    sget-object v2, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->TAG:Ljava/lang/String;

    const-string v5, "onCreateView() - Exception for TYPE_P_N_BUTTON"

    invoke-static {v2, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_7
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 315
    new-instance v5, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$2;

    invoke-direct {v5, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$2;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 333
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 334
    new-instance v5, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$3;

    invoke-direct {v5, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$3;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_8

    :pswitch_2
    const/4 v2, 0x2

    .line 279
    iput v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonType:I

    :try_start_3
    const-string v2, "negative_text_id"

    .line 281
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeText:Ljava/lang/String;

    .line 282
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {v2, v12}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setVisibility(I)V

    .line 283
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v5, "negative_text_color"

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    .line 287
    :catch_3
    sget-object v2, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->TAG:Ljava/lang/String;

    const-string v5, "onCreateView() - Exception for TYPE_N_BUTTON"

    invoke-static {v2, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 259
    :pswitch_3
    iput v13, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonType:I

    :try_start_4
    const-string v2, "positive_text_id"

    .line 261
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveText:Ljava/lang/String;

    .line 262
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {v2, v12}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setVisibility(I)V

    .line 263
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "positive_text_color"

    .line 265
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v14, :cond_c

    .line 266
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v5, "positive_text_color"

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    goto :goto_8

    :cond_c
    const-string v2, "positive_text_color_list"

    .line 267
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v14, :cond_d

    .line 268
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "positive_text_color_list"

    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    .line 274
    :catch_4
    sget-object v2, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->TAG:Ljava/lang/String;

    const-string v5, "onCreateView() - Exception for TYPE_P_BUTTON"

    invoke-static {v2, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 255
    :pswitch_4
    iput v4, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonType:I

    .line 256
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 451
    :cond_d
    :goto_8
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance v5, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$7;

    invoke-direct {v5, v1, v11}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$7;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Z)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance v5, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$8;

    invoke-direct {v5, v1, v11}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$8;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Z)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    if-eqz v2, :cond_e

    .line 477
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance v5, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$9;

    invoke-direct {v5, v1, v11}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$9;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Z)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    :cond_e
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v2, :cond_f

    .line 492
    sget v2, Lcom/samsung/android/shealthmonitor/base/R$id;->dialog_switch:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 493
    iget-object v1, v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v1, "is_switch_checked"

    .line 494
    invoke-virtual {v10, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 495
    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_f
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 642
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 643
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 644
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 645
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 646
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    .line 647
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    .line 648
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 634
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 637
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 604
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 605
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mIsShowingVerticalButton:Z

    .line 606
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    if-eqz p1, :cond_0

    .line 607
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;->onDismiss(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 503
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mIsInstanceStateSaved:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->mIsInstanceStateSaved:Z

    .line 510
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

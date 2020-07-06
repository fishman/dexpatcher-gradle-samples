.class public Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;
.super Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;
.source "MonthPickerDlgFragment.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnScrollListener;
.implements Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;
.implements Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListenerInScrolling;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;,
        Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$OKButtonHandler;
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

.field private mContentView:Landroid/view/View;

.field private mDisplayValues:[Ljava/lang/String;

.field private mInitValue:Ljava/lang/String;

.field private mIsInstanceStateSaved:Z

.field private mIsShowingVerticalButton:Z

.field private mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

.field private mNegativeText:Ljava/lang/String;

.field private mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

.field private mNeutralText:Ljava/lang/String;

.field private mNumberPicker:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

.field private mOnBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

.field private mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

.field private mOnNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

.field private mOnNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

.field private mOnPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

.field private mOnSelectItemListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;

.field private mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

.field private mPositiveText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;-><init>()V

    const/4 v0, 0x3

    .line 67
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonType:I

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mIsShowingVerticalButton:Z

    .line 129
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mIsInstanceStateSaved:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/widget/HTextButton;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mIsInstanceStateSaved:Z

    return p0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    .line 61
    sput-boolean p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mCheckFullSize:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setPositiveButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setNegativeButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setNeutralButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setDialogCancelListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->showVerticalButtonLayout(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/widget/HTextButton;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/widget/HTextButton;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNumberPicker:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnSelectItemListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    return-object p0
.end method

.method private getPosition(Ljava/lang/String;)I
    .locals 3

    .line 1119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 1122
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mDisplayValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1123
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mDisplayValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    return-void
.end method

.method private setDialogCancelListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    return-void
.end method

.method private setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    return-void
.end method

.method private setNegativeButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    return-void
.end method

.method private setNeutralButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    return-void
.end method

.method private setPositiveButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    return-void
.end method

.method private setSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method private showVerticalButtonLayout(I)V
    .locals 5

    .line 525
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mIsShowingVerticalButton:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 526
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mIsShowingVerticalButton:Z

    .line 527
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 528
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 529
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "layout_inflater"

    .line 532
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 533
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1

    .line 537
    sget p1, Lcom/samsung/android/shealthmonitor/base/R$layout;->baseui_dialog_button_vertical_view:I

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_6

    .line 539
    sget p1, Lcom/samsung/android/shealthmonitor/base/R$layout;->baseui_dialog_three_button_vertical_view:I

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 540
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$id;->neutral_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 541
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance v2, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$10;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$id;->positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 566
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$id;->negative_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 568
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 571
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "positive_text_color"

    .line 573
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 574
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v1, "positive_text_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    goto :goto_1

    :cond_3
    const-string v0, "positive_text_color_list"

    .line 575
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 576
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "positive_text_color_list"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 580
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v1, "negative_text_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    .line 581
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    if-eqz v0, :cond_5

    .line 582
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string v1, "neutral_text_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    .line 586
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$11;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$12;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 560
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

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

    .line 629
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 630
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    if-eqz p1, :cond_0

    .line 631
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;->onCanceled(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    sget p1, Lcom/samsung/android/shealthmonitor/base/R$style;->SAlertDialogTheme:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setStyle(II)V

    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 152
    new-instance p1, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$1;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$1;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 185
    sget p3, Lcom/samsung/android/shealthmonitor/base/R$layout;->month_picker_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 187
    sget p3, Lcom/samsung/android/shealthmonitor/base/R$id;->alert_title_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    .line 188
    sget v1, Lcom/samsung/android/shealthmonitor/base/R$id;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 189
    sget v2, Lcom/samsung/android/shealthmonitor/base/R$id;->content_container:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 190
    sget v3, Lcom/samsung/android/shealthmonitor/base/R$id;->alert_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 191
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$id;->picker:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    iput-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNumberPicker:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    .line 192
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNumberPicker:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-virtual {v4, p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setOnScrollListener(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnScrollListener;)V

    .line 193
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNumberPicker:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-virtual {v4, p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$OnValueChangeListener;)V

    .line 194
    new-instance v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v4}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 195
    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mDisplayValues:[Ljava/lang/String;

    .line 196
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$id;->buttons_container:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    .line 197
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$id;->positive_button:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 198
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$id;->negative_button:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 199
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$id;->button_divider:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    const-string v7, "is_canceled_on_touch_outside"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const-string v6, "is_auto_dismiss"

    .line 205
    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "title_res_id"

    .line 207
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    const-string v7, "title_res_id"

    .line 208
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v7, "title_text"

    .line 210
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v7, "title_text"

    .line 211
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const-string v1, "is_hide_title"

    .line 215
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v7, 0x8

    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {p3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    const-string p3, "content_res_id"

    .line 221
    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    if-eq p3, v9, :cond_3

    const-string p3, "content_res_id"

    .line 222
    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const-string p3, "content_text"

    .line 224
    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_4

    const-string p3, "content_text"

    .line 225
    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    const-string p3, "content_description"

    .line 229
    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    const-string p3, "content_description"

    .line 230
    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    const-string p3, "content_view_id"

    .line 235
    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    const/4 v1, -0x2

    if-eq p3, v9, :cond_7

    .line 236
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    sget-boolean p3, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mCheckFullSize:Z

    if-eqz p3, :cond_6

    const/high16 p3, 0x43970000    # 302.0f

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 239
    invoke-static {v8, p3, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 241
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v3, p3, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 242
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    :cond_6
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v9, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :try_start_0
    const-string v3, "content_view_id"

    .line 249
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v10, 0x0

    invoke-virtual {p1, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mContentView:Landroid/view/View;

    .line 250
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v3, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    .line 252
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    :cond_7
    :goto_3
    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string p3, "type"

    .line 260
    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonType:I

    .line 261
    iget p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonType:I

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const/4 p3, 0x4

    .line 363
    iput p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonType:I

    .line 364
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 365
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v9, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 367
    sget v1, Lcom/samsung/android/shealthmonitor/base/R$layout;->baseui_dialog_three_button_view:I

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 368
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    sget p3, Lcom/samsung/android/shealthmonitor/base/R$id;->positive_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 371
    sget p3, Lcom/samsung/android/shealthmonitor/base/R$id;->negative_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 372
    sget p3, Lcom/samsung/android/shealthmonitor/base/R$id;->neutral_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    :try_start_1
    const-string p1, "positive_text_id"

    .line 375
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveText:Ljava/lang/String;

    const-string p1, "negative_text_id"

    .line 376
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeText:Ljava/lang/String;

    const-string p1, "neutral_text_id"

    .line 377
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralText:Ljava/lang/String;

    .line 379
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "positive_text_color"

    .line 384
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v9, :cond_8

    .line 385
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string p3, "positive_text_color"

    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    goto :goto_4

    :cond_8
    const-string p1, "positive_text_color_list"

    .line 386
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v9, :cond_9

    .line 387
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v1, "positive_text_color_list"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 392
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string p3, "negative_text_color"

    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    .line 393
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string p3, "neutral_text_color"

    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 396
    :catch_1
    sget-object p1, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->TAG:Ljava/lang/String;

    const-string p3, "onCreateView() - Exception for TYPE_THREE_BUTTON"

    invoke-static {p1, p3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 401
    new-instance p3, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$4;

    invoke-direct {p3, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$4;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 419
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 420
    new-instance p3, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$5;

    invoke-direct {p3, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$5;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 437
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 438
    new-instance p3, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$6;

    invoke-direct {p3, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$6;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_8

    :pswitch_1
    const/4 p1, 0x3

    .line 300
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonType:I

    :try_start_2
    const-string p1, "positive_text_id"

    .line 302
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveText:Ljava/lang/String;

    const-string p1, "negative_text_id"

    .line 303
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeText:Ljava/lang/String;

    .line 304
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "positive_text_color"

    .line 307
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v9, :cond_a

    .line 308
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string p3, "positive_text_color"

    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    goto :goto_6

    :cond_a
    const-string p1, "positive_text_color_list"

    .line 309
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v9, :cond_b

    .line 310
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v1, "positive_text_color_list"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 315
    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string p3, "negative_text_color"

    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 318
    :catch_2
    sget-object p1, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->TAG:Ljava/lang/String;

    const-string p3, "onCreateView() - Exception for TYPE_P_N_BUTTON"

    invoke-static {p1, p3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_7
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 323
    new-instance p3, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$2;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 341
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 342
    new-instance p3, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$3;

    invoke-direct {p3, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$3;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_8

    :pswitch_2
    const/4 p1, 0x2

    .line 287
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonType:I

    :try_start_3
    const-string p1, "negative_text_id"

    .line 289
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeText:Ljava/lang/String;

    .line 290
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p1, v7}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setVisibility(I)V

    .line 291
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string p3, "negative_text_color"

    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    .line 295
    :catch_3
    sget-object p1, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->TAG:Ljava/lang/String;

    const-string p3, "onCreateView() - Exception for TYPE_N_BUTTON"

    invoke-static {p1, p3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 267
    :pswitch_3
    iput v8, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonType:I

    :try_start_4
    const-string p1, "positive_text_id"

    .line 269
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveText:Ljava/lang/String;

    .line 270
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p1, v7}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setVisibility(I)V

    .line 271
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "positive_text_color"

    .line 273
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v9, :cond_c

    .line 274
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    const-string p3, "positive_text_color"

    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    goto :goto_8

    :cond_c
    const-string p1, "positive_text_color_list"

    .line 275
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v9, :cond_d

    .line 276
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v1, "positive_text_color_list"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    .line 282
    :catch_4
    sget-object p1, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->TAG:Ljava/lang/String;

    const-string p3, "onCreateView() - Exception for TYPE_P_BUTTON"

    invoke-static {p1, p3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 263
    :pswitch_4
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonType:I

    .line 264
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 459
    :cond_d
    :goto_8
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance p3, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$7;

    invoke-direct {p3, p0, v6}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$7;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Z)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance p3, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$8;

    invoke-direct {p3, p0, v6}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$8;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Z)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    if-eqz p1, :cond_e

    .line 486
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance p3, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$9;

    invoke-direct {p3, p0, v6}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$9;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Z)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p1, :cond_f

    .line 501
    sget p1, Lcom/samsung/android/shealthmonitor/base/R$id;->dialog_switch:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    .line 502
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string p0, "is_switch_checked"

    .line 503
    invoke-virtual {v5, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 504
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_f
    return-object p2

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

    .line 653
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 654
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mPositiveButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 655
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNegativeButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 656
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNeutralButton:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 657
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    .line 658
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    .line 659
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    .line 660
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnSelectItemListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 645
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 648
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 615
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 616
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mIsShowingVerticalButton:Z

    .line 617
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    if-eqz p1, :cond_0

    .line 618
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;->onDismiss(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 512
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->onResume()V

    const/4 v0, 0x0

    .line 513
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mIsInstanceStateSaved:Z

    .line 514
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mNumberPicker:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mDisplayValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mInitValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getPosition(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 520
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mIsInstanceStateSaved:Z

    .line 521
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScrollStateChange(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;I)V
    .locals 3

    .line 700
    sget-object v0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScrollStateChange : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnSelectItemListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getCurrContentValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;->onSelected(I)V

    return-void
.end method

.method public onValueChange(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;II)V
    .locals 4

    .line 706
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnSelectItemListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getCurrContentValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;->onSelected(I)V

    .line 709
    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onScrollStateChange : oldVal : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " newVal : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/shealthmonitor/base/R$string;->picked_content_is:I

    .line 710
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->getMinValue()I

    move-result p0

    sub-int/2addr p3, p0

    aget-object p0, v0, p3

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 709
    invoke-static {v1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onValueChangeInScrolling(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;II)V
    .locals 1

    const-string p0, "wangjj"

    .line 717
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onValueChangeInScrolling oldVal : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " newVal : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectItemListener(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mInitValue:Ljava/lang/String;

    .line 694
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->mOnSelectItemListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;

    return-void
.end method

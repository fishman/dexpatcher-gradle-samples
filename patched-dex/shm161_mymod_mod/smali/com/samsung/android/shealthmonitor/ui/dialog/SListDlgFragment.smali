.class public Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SListDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    }
.end annotation


# static fields
.field private static final CHECKED_ITEMS_KEY:Ljava/lang/String; = "checked_items"

.field private static final DEFAULT_INT_VALUE:I = -0x1

.field private static final IS_CANCELED_ON_TOUCH_OUTSIDE_KEY:Ljava/lang/String; = "is_canceled_on_touch_outside"

.field private static final ITEM_DESCRIPTION_LIST_KEY:Ljava/lang/String; = "item_description_list"

.field private static final ITEM_TEXT_LIST_KEY:Ljava/lang/String; = "item_text_list"

.field public static final MULTIPLE_CHOOSE_WITH_BUTTON:I = 0x2

.field public static final MULTIPLE_CHOOSE_WITH_ONE_BUTTON:I = 0x3

.field private static final NEGATIVE_TEXT_COLOR_KEY:Ljava/lang/String; = "negative_text_color"

.field private static final NEGATIVE_TEXT_ID_KEY:Ljava/lang/String; = "negative_text_id"

.field private static final POSITIVE_TEXT_COLOR_KEY:Ljava/lang/String; = "positive_text_color"

.field private static final POSITIVE_TEXT_ID_KEY:Ljava/lang/String; = "positive_text_id"

.field public static final SINGLE_CHOOSE_REORDER_WITH_BUTTON:I = 0x4

.field public static final SINGLE_CHOOSE_WITHOUT_BUTTON:I = 0x0

.field public static final SINGLE_CHOOSE_WITH_BUTTON:I = 0x1

.field private static final TITLE_RES_ID_KEY:Ljava/lang/String; = "title_res_id"

.field private static final TITLE_TEXT_KEY:Ljava/lang/String; = "title_text_id"

.field private static final TOP_TEXT_KEY:Ljava/lang/String; = "top_text"

.field private static final TOP_TEXT_RES_ID_KEY:Ljava/lang/String; = "top_text_res_id"

.field private static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private mCheckedItems:[Z

.field private mChoiceType:I

.field private mItemDescriptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mOnBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

.field private mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

.field private mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

.field private mOnMultiChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;

.field private mOnNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

.field private mOnPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

.field private mOnSingleChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnSingleChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->setSingleChoiceListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->setPositiveButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->setNegativeButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->setDialogCancelListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Landroid/widget/ListView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mChoiceType:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnMultiChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)[Z
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mCheckedItems:[Z

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->dismissDlg()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->setMultiChoiceListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;)V

    return-void
.end method

.method private dismissDlg()V
    .locals 4

    .line 328
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$5;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    return-void
.end method

.method private setDialogCancelListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    return-void
.end method

.method private setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    return-void
.end method

.method private setMultiChoiceListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnMultiChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;

    return-void
.end method

.method private setNegativeButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    return-void
.end method

.method private setPositiveButtonClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    return-void
.end method

.method private setSingleChoiceListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnSingleChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;

    return-void
.end method


# virtual methods
.method isChecked()Z
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mCheckedItems:[Z

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 294
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mCheckedItems:[Z

    aget-boolean v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method final synthetic lambda$onCreateView$0$SListDlgFragment(Lcom/samsung/android/shealthmonitor/widget/HTextButton;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setEnabled(Z)V

    .line 233
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->updateRadioButton(I)V

    .line 234
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnSingleChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnSingleChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;->onClick(I)V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 321
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 322
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    if-eqz p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;->onCanceled(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 126
    new-instance p1, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$1;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$1;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 160
    sget p3, Lcom/samsung/android/shealthmonitor/base/R$layout;->baseui_list_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 162
    sget p2, Lcom/samsung/android/shealthmonitor/base/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 163
    sget p3, Lcom/samsung/android/shealthmonitor/base/R$id;->buttons_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    .line 164
    sget v1, Lcom/samsung/android/shealthmonitor/base/R$id;->positive_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 165
    sget v2, Lcom/samsung/android/shealthmonitor/base/R$id;->negative_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    .line 166
    sget v3, Lcom/samsung/android/shealthmonitor/base/R$id;->top_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 167
    sget v4, Lcom/samsung/android/shealthmonitor/base/R$id;->list_in_dialog:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListView:Landroid/widget/ListView;

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    const-string v6, "is_canceled_on_touch_outside"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const-string v5, "type"

    .line 171
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mChoiceType:I

    const-string v5, "item_text_list"

    .line 172
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mItemList:Ljava/util/ArrayList;

    const-string v5, "item_description_list"

    .line 173
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mItemDescriptionList:Ljava/util/ArrayList;

    .line 174
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mItemDescriptionList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mItemList:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mItemDescriptionList:Ljava/util/ArrayList;

    :cond_0
    const-string v5, "checked_items"

    .line 177
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mCheckedItems:[Z

    const-string v5, "title_res_id"

    .line 179
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const-string v5, "title_res_id"

    .line 180
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v5, "title_text_id"

    .line 182
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "title_text_id"

    .line 183
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const-string p2, "top_text_res_id"

    .line 186
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/16 v5, 0x8

    if-eq p2, v6, :cond_3

    .line 187
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p2, "top_text_res_id"

    .line 188
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string p2, "top_text"

    .line 190
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 191
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p2, "top_text"

    .line 192
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 194
    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-string p2, "positive_text_id"

    .line 197
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "positive_text_id"

    .line 198
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const-string p2, "negative_text_id"

    .line 200
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "negative_text_id"

    .line 201
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const-string p2, "positive_text_color"

    .line 203
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "positive_text_color"

    .line 204
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    :cond_7
    const-string p2, "negative_text_color"

    .line 206
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "negative_text_color"

    .line 207
    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    .line 209
    :cond_8
    iget p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mChoiceType:I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 241
    :pswitch_1
    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setVisibility(I)V

    .line 242
    sget p2, Lcom/samsung/android/shealthmonitor/base/R$id;->button_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 230
    :pswitch_2
    new-instance p2, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mItemList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mItemDescriptionList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mCheckedItems:[Z

    iget v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mChoiceType:I

    invoke-direct {p2, p3, v0, v3, v4}, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[ZI)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListAdapter:Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;

    .line 231
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListAdapter:Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;

    new-instance p3, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$$Lambda$0;

    invoke-direct {p3, p0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/widget/HTextButton;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;->setOnListItemClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter$OnListItemClickListener;)V

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->isChecked()Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setEnabled(Z)V

    goto :goto_2

    .line 211
    :pswitch_3
    invoke-virtual {p3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 213
    new-instance p2, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mItemList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mItemDescriptionList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mCheckedItems:[Z

    iget v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mChoiceType:I

    invoke-direct {p2, p3, v0, v3, v4}, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[ZI)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListAdapter:Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;

    .line 214
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListAdapter:Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;

    new-instance p3, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$2;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;->setOnListItemClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter$OnListItemClickListener;)V

    .line 248
    :goto_2
    new-instance p2, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    new-instance p2, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$4;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)V

    invoke-virtual {v2, p2}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListAdapter:Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListView:Landroid/widget/ListView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 308
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 309
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mOnDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;->onDismiss(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method updateRadioButton(I)V
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 285
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mCheckedItems:[Z

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->mListAdapter:Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;->notifyDataSetChanged()V

    return-void
.end method

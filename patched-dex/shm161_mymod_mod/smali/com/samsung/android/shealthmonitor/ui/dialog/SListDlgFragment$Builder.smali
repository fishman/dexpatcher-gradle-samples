.class public Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
.super Ljava/lang/Object;
.source "SListDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private checkedItems:[Z

.field private choiceType:I

.field private descriptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dialogStyle:I

.field private isCanceledOnTouchOutside:Z

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private negativeBtnTextColor:I

.field private negativeBtnTextResId:I

.field private onBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

.field private onCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

.field private onDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

.field private onMultiChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;

.field private onNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

.field private onPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

.field private onSingleChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;

.field private positiveBtnTextColor:I

.field private positiveBtnTextResId:I

.field private titleResId:I

.field private titleText:Ljava/lang/String;

.field private topText:Ljava/lang/String;

.field private topTextResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 372
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->choiceType:I

    .line 373
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    const/4 v0, -0x1

    .line 374
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->titleResId:I

    const/4 v1, 0x0

    .line 375
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->titleText:Ljava/lang/String;

    .line 376
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->topTextResId:I

    .line 377
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->topText:Ljava/lang/String;

    .line 383
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->positiveBtnTextColor:I

    .line 385
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->negativeBtnTextColor:I

    .line 394
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$style;->SAlertDialogTheme:I

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->dialogStyle:I

    .line 405
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->titleResId:I

    .line 406
    iput p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->choiceType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 372
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->choiceType:I

    .line 373
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    const/4 v0, -0x1

    .line 374
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->titleResId:I

    const/4 v1, 0x0

    .line 375
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->titleText:Ljava/lang/String;

    .line 376
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->topTextResId:I

    .line 377
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->topText:Ljava/lang/String;

    .line 383
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->positiveBtnTextColor:I

    .line 385
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->negativeBtnTextColor:I

    .line 394
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$style;->SAlertDialogTheme:I

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->dialogStyle:I

    .line 418
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->titleText:Ljava/lang/String;

    .line 419
    iput p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->choiceType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;
    .locals 5

    .line 602
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;-><init>()V

    .line 603
    iget v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->dialogStyle:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->setStyle(II)V

    .line 605
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 607
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v3, "title_res_id"

    .line 610
    iget v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->titleResId:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "title_text_id"

    .line 611
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->titleText:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    .line 612
    iget v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->choiceType:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "is_canceled_on_touch_outside"

    .line 613
    iget-boolean v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "top_text_res_id"

    .line 614
    iget v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->topTextResId:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "top_text"

    .line 615
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->topText:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "item_text_list"

    .line 616
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "item_description_list"

    .line 617
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->descriptionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "checked_items"

    .line 618
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->checkedItems:[Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 619
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->positiveBtnTextResId:I

    if-lez v3, :cond_1

    const-string v3, "positive_text_id"

    .line 620
    iget v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->positiveBtnTextResId:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    :cond_1
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->negativeBtnTextResId:I

    if-lez v3, :cond_2

    const-string v3, "negative_text_id"

    .line 623
    iget v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->negativeBtnTextResId:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string v3, "positive_text_color"

    .line 625
    iget v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->positiveBtnTextColor:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "negative_text_color"

    .line 626
    iget v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->negativeBtnTextColor:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 627
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->setArguments(Landroid/os/Bundle;)V

    .line 628
    iget v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->choiceType:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->choiceType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 632
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onSingleChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$1000(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;)V

    goto :goto_1

    .line 630
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onMultiChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$900(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;)V

    .line 635
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$1100(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V

    .line 636
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$1200(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V

    .line 637
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$1300(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V

    .line 638
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$1400(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V

    .line 639
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$1500(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V

    return-object v0
.end method

.method public setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0

    .line 429
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    return-object p0
.end method

.method public setDialogCancelListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    return-object p0
.end method

.method public setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    return-object p0
.end method

.method public setDialogStyle(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0

    .line 594
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->dialogStyle:I

    return-object p0
.end method

.method public setItemDescriptions(Ljava/util/ArrayList;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;"
        }
    .end annotation

    .line 500
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->descriptionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setMultiChoiceItemsListener(Ljava/util/ArrayList;[ZLcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[Z",
            "Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;",
            ")",
            "Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;"
        }
    .end annotation

    .line 464
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->itemList:Ljava/util/ArrayList;

    .line 465
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->checkedItems:[Z

    .line 466
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onMultiChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;

    return-object p0
.end method

.method public setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0

    .line 527
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->negativeBtnTextResId:I

    .line 528
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    return-object p0
.end method

.method public setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0

    .line 550
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->negativeBtnTextColor:I

    return-object p0
.end method

.method public setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0

    .line 513
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->positiveBtnTextResId:I

    .line 514
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    return-object p0
.end method

.method public setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0

    .line 539
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->positiveBtnTextColor:I

    return-object p0
.end method

.method public setSigleChoiceItemListener(Ljava/util/ArrayList;[ZLcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[Z",
            "Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;",
            ")",
            "Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;"
        }
    .end annotation

    .line 445
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->itemList:Ljava/util/ArrayList;

    .line 446
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->checkedItems:[Z

    .line 447
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->onSingleChoiceListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;

    return-object p0
.end method

.method public setTopText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0

    .line 478
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->topTextResId:I

    return-object p0
.end method

.method public setTopText(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->topText:Ljava/lang/String;

    return-object p0
.end method

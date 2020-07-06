.class public Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
.super Ljava/lang/Object;
.source "SAlertDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonType:I

.field private contentDescription:Ljava/lang/String;

.field private contentInitialListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

.field private contentResId:I

.field private contentText:Ljava/lang/CharSequence;

.field private contentViewId:I

.field private isAutoDismiss:Z

.field private isCanceledOnTouchOutside:Z

.field private isHideTitle:Z

.field private isSwitchChecked:Z

.field private negativeBtnTextColor:I

.field private negativeBtnTextResId:I

.field private neutralBtnTextColor:I

.field private neutralBtnTextResId:I

.field private onBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

.field private onCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

.field private onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private onDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

.field private onNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

.field private onNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

.field private onPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

.field private positiveBtnTextColor:I

.field private positiveBtnTextColorList:I

.field private positiveBtnTextResId:I

.field private titleResId:I

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 707
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->buttonType:I

    const/4 v0, -0x1

    .line 708
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->titleResId:I

    const/4 v1, 0x0

    .line 709
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->titleText:Ljava/lang/String;

    .line 710
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentResId:I

    .line 713
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentViewId:I

    const/4 v1, 0x1

    .line 714
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    const/4 v2, 0x0

    .line 715
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isHideTitle:Z

    .line 716
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isAutoDismiss:Z

    .line 721
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextColor:I

    .line 722
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextColorList:I

    .line 723
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->negativeBtnTextColor:I

    .line 724
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->neutralBtnTextColor:I

    .line 736
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isSwitchChecked:Z

    .line 747
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->titleResId:I

    .line 748
    iput p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->buttonType:I

    .line 749
    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1002(Z)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 707
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->buttonType:I

    const/4 v0, -0x1

    .line 708
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->titleResId:I

    const/4 v1, 0x0

    .line 709
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->titleText:Ljava/lang/String;

    .line 710
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentResId:I

    .line 713
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentViewId:I

    const/4 v1, 0x1

    .line 714
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    const/4 v2, 0x0

    .line 715
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isHideTitle:Z

    .line 716
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isAutoDismiss:Z

    .line 721
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextColor:I

    .line 722
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextColorList:I

    .line 723
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->negativeBtnTextColor:I

    .line 724
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->neutralBtnTextColor:I

    .line 736
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isSwitchChecked:Z

    .line 761
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->titleText:Ljava/lang/String;

    .line 762
    iput p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->buttonType:I

    .line 763
    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1002(Z)Z

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;
    .locals 4

    .line 1012
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;-><init>()V

    .line 1014
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1016
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v2, "title_res_id"

    .line 1019
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->titleResId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "title_text"

    .line 1020
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->titleText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_hide_title"

    .line 1021
    iget-boolean v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isHideTitle:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "type"

    .line 1022
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->buttonType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "positive_text_id"

    .line 1023
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextResId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "negative_text_id"

    .line 1024
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->negativeBtnTextResId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "neutral_text_id"

    .line 1025
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->neutralBtnTextResId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "positive_text_color"

    .line 1026
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextColor:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "positive_text_color_list"

    .line 1027
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextColorList:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "negative_text_color"

    .line 1028
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->negativeBtnTextColor:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "neutral_text_color"

    .line 1029
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->neutralBtnTextColor:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "content_res_id"

    .line 1030
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentResId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "content_view_id"

    .line 1031
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentViewId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "content_text"

    .line 1032
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "content_description"

    .line 1033
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_canceled_on_touch_outside"

    .line 1034
    iget-boolean v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "is_switch_checked"

    .line 1035
    iget-boolean v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isSwitchChecked:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "is_auto_dismiss"

    .line 1036
    iget-boolean v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isAutoDismiss:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1038
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1039
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1100(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V

    .line 1040
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1200(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V

    .line 1041
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1300(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)V

    .line 1042
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1400(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V

    .line 1043
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1500(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V

    .line 1044
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1600(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V

    .line 1045
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentInitialListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1700(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)V

    .line 1046
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1800(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0
.end method

.method public build(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;
    .locals 3

    .line 1055
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1057
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "title_res_id"

    .line 1060
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->titleResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title_text"

    .line 1061
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_hide_title"

    .line 1062
    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isHideTitle:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "type"

    .line 1063
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->buttonType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "positive_text_id"

    .line 1064
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "negative_text_id"

    .line 1065
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->negativeBtnTextResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "neutral_text_id"

    .line 1066
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->neutralBtnTextResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "positive_text_color"

    .line 1067
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "positive_text_color_list"

    .line 1068
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextColorList:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "negative_text_color"

    .line 1069
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->negativeBtnTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "neutral_text_color"

    .line 1070
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->neutralBtnTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "content_res_id"

    .line 1071
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "content_view_id"

    .line 1072
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentViewId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "content_text"

    .line 1073
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "content_description"

    .line 1074
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_canceled_on_touch_outside"

    .line 1075
    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "is_switch_checked"

    .line 1076
    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isSwitchChecked:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "is_auto_dismiss"

    .line 1077
    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isAutoDismiss:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1079
    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1080
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1100(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V

    .line 1081
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1200(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V

    .line 1082
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1300(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)V

    .line 1083
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1400(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1500(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V

    .line 1085
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1600(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentInitialListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1700(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)V

    .line 1087
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1800(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public setAutoDismiss(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 968
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isAutoDismiss:Z

    return-object p0
.end method

.method public setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 784
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    return-object p0
.end method

.method public setContent(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 833
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentViewId:I

    return-object p0
.end method

.method public setContent(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 848
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentViewId:I

    .line 849
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentInitialListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 795
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentResId:I

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentText(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->contentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDialogCancelListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 979
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    return-object p0
.end method

.method public setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    return-object p0
.end method

.method public setFullSize(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 860
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$1002(Z)Z

    return-object p0
.end method

.method public setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 773
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isHideTitle:Z

    return-object p0
.end method

.method public setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 887
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->negativeBtnTextResId:I

    .line 888
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    return-object p0
.end method

.method public setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 935
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->negativeBtnTextColor:I

    return-object p0
.end method

.method public setNeutralButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 901
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->neutralBtnTextResId:I

    .line 902
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    return-object p0
.end method

.method public setNeutralButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 946
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->neutralBtnTextColor:I

    return-object p0
.end method

.method public setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 873
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextResId:I

    .line 874
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    return-object p0
.end method

.method public setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 913
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextColor:I

    return-object p0
.end method

.method public setPositiveButtonTextColorList(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 924
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->positiveBtnTextColorList:I

    return-object p0
.end method

.method public setSwitchChangedListener(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 0

    .line 1002
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->isSwitchChecked:Z

    .line 1003
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

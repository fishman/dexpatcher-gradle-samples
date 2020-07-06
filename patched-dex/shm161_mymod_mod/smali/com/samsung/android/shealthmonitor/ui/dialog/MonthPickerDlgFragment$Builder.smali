.class public Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
.super Ljava/lang/Object;
.source "MonthPickerDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonType:I

.field private contentDescription:Ljava/lang/String;

.field private contentResId:I

.field private contentText:Ljava/lang/CharSequence;

.field private contentViewId:I

.field private initValue:Ljava/lang/String;

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

.field private onSelectItemListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;

.field private positiveBtnTextColor:I

.field private positiveBtnTextColorList:I

.field private positiveBtnTextResId:I

.field private titleResId:I

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 745
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->buttonType:I

    const/4 v0, -0x1

    .line 746
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->titleResId:I

    const/4 v1, 0x0

    .line 747
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->titleText:Ljava/lang/String;

    .line 748
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentResId:I

    .line 751
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentViewId:I

    const/4 v1, 0x1

    .line 752
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    const/4 v2, 0x0

    .line 753
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isHideTitle:Z

    .line 754
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isAutoDismiss:Z

    .line 759
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextColor:I

    .line 760
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextColorList:I

    .line 761
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->negativeBtnTextColor:I

    .line 762
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->neutralBtnTextColor:I

    .line 772
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isSwitchChecked:Z

    .line 783
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->titleResId:I

    .line 784
    iput p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->buttonType:I

    .line 785
    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1202(Z)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 745
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->buttonType:I

    const/4 v0, -0x1

    .line 746
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->titleResId:I

    const/4 v1, 0x0

    .line 747
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->titleText:Ljava/lang/String;

    .line 748
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentResId:I

    .line 751
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentViewId:I

    const/4 v1, 0x1

    .line 752
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    const/4 v2, 0x0

    .line 753
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isHideTitle:Z

    .line 754
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isAutoDismiss:Z

    .line 759
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextColor:I

    .line 760
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextColorList:I

    .line 761
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->negativeBtnTextColor:I

    .line 762
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$color;->common_dialog_button_text_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->neutralBtnTextColor:I

    .line 772
    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isSwitchChecked:Z

    .line 797
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->titleText:Ljava/lang/String;

    .line 798
    iput p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->buttonType:I

    .line 799
    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1202(Z)Z

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;
    .locals 4

    .line 1038
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;-><init>()V

    .line 1040
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1042
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v2, "title_res_id"

    .line 1045
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->titleResId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "title_text"

    .line 1046
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->titleText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_hide_title"

    .line 1047
    iget-boolean v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isHideTitle:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "type"

    .line 1048
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->buttonType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "positive_text_id"

    .line 1049
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextResId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "negative_text_id"

    .line 1050
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->negativeBtnTextResId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "neutral_text_id"

    .line 1051
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->neutralBtnTextResId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "positive_text_color"

    .line 1052
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextColor:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "positive_text_color_list"

    .line 1053
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextColorList:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "negative_text_color"

    .line 1054
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->negativeBtnTextColor:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "neutral_text_color"

    .line 1055
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->neutralBtnTextColor:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "content_res_id"

    .line 1056
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentResId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "content_view_id"

    .line 1057
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentViewId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "content_text"

    .line 1058
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "content_description"

    .line 1059
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_canceled_on_touch_outside"

    .line 1060
    iget-boolean v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "is_switch_checked"

    .line 1061
    iget-boolean v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isSwitchChecked:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "is_auto_dismiss"

    .line 1062
    iget-boolean v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isAutoDismiss:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1064
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1065
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1300(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V

    .line 1066
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1400(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V

    .line 1067
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1500(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)V

    .line 1068
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1600(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V

    .line 1069
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1700(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V

    .line 1070
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1800(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V

    .line 1071
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1900(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1072
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->initValue:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onSelectItemListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setSelectItemListener(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;)V

    return-object v0
.end method

.method public build(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;
    .locals 3

    .line 1081
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1083
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "title_res_id"

    .line 1086
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->titleResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title_text"

    .line 1087
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_hide_title"

    .line 1088
    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isHideTitle:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "type"

    .line 1089
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->buttonType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "positive_text_id"

    .line 1090
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "negative_text_id"

    .line 1091
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->negativeBtnTextResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "neutral_text_id"

    .line 1092
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->neutralBtnTextResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "positive_text_color"

    .line 1093
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "positive_text_color_list"

    .line 1094
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextColorList:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "negative_text_color"

    .line 1095
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->negativeBtnTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "neutral_text_color"

    .line 1096
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->neutralBtnTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "content_res_id"

    .line 1097
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentResId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "content_view_id"

    .line 1098
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentViewId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "content_text"

    .line 1099
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "content_description"

    .line 1100
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_canceled_on_touch_outside"

    .line 1101
    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "is_switch_checked"

    .line 1102
    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isSwitchChecked:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "is_auto_dismiss"

    .line 1103
    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isAutoDismiss:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1105
    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1106
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1300(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V

    .line 1107
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1400(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)V

    .line 1108
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1500(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)V

    .line 1109
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1600(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)V

    .line 1110
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1700(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)V

    .line 1111
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1800(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)V

    .line 1112
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1900(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1113
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->initValue:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onSelectItemListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->setSelectItemListener(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;)V

    return-object p1
.end method

.method public setAutoDismiss(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 988
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isAutoDismiss:Z

    return-object p0
.end method

.method public setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onBackPressedListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 820
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isCanceledOnTouchOutside:Z

    return-object p0
.end method

.method public setContent(I)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 869
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentViewId:I

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 857
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 831
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentResId:I

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentText(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->contentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDialogCancelListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 999
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onCancelListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogCancelListener;

    return-object p0
.end method

.method public setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 977
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onDismissListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    return-object p0
.end method

.method public setFullSize(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 880
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$1202(Z)Z

    return-object p0
.end method

.method public setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 809
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isHideTitle:Z

    return-object p0
.end method

.method public setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 907
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->negativeBtnTextResId:I

    .line 908
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onNegativeClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    return-object p0
.end method

.method public setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 955
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->negativeBtnTextColor:I

    return-object p0
.end method

.method public setNeutralButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 921
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->neutralBtnTextResId:I

    .line 922
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onNeutralClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    return-object p0
.end method

.method public setNeutralButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 966
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->neutralBtnTextColor:I

    return-object p0
.end method

.method public setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 893
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextResId:I

    .line 894
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onPositiveClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    return-object p0
.end method

.method public setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 933
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextColor:I

    return-object p0
.end method

.method public setPositiveButtonTextColorList(I)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 944
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->positiveBtnTextColorList:I

    return-object p0
.end method

.method public setSelectItemListener(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 1028
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->initValue:Ljava/lang/String;

    .line 1029
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onSelectItemListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;

    return-object p0
.end method

.method public setSwitchChangedListener(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;
    .locals 0

    .line 1022
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->isSwitchChecked:Z

    .line 1023
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

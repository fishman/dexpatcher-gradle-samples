.class public Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;
.super Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;
.source "SingleChoiceDlgAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChoiceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[ZI)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mItemList:Ljava/util/ArrayList;

    .line 59
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mItemDescriptionList:Ljava/util/ArrayList;

    .line 60
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mCheckedItems:[Z

    .line 61
    iput p4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mChoiceType:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-nez p2, :cond_4

    const/4 p2, 0x0

    if-nez p3, :cond_0

    return-object p2

    .line 109
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 110
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mChoiceType:I

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mChoiceType:I

    if-ne v3, v1, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mChoiceType:I

    if-ne v3, v0, :cond_2

    .line 114
    sget p2, Lcom/samsung/android/shealthmonitor/base/R$layout;->baseui_single_dialog_button_item:I

    invoke-virtual {v2, p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_2
    return-object p2

    .line 112
    :cond_3
    :goto_0
    sget p2, Lcom/samsung/android/shealthmonitor/base/R$layout;->baseui_single_dialog_item:I

    invoke-virtual {v2, p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 120
    :cond_4
    :goto_1
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mChoiceType:I

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mChoiceType:I

    if-ne v2, v1, :cond_5

    goto/16 :goto_6

    .line 132
    :cond_5
    iget v2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mChoiceType:I

    if-ne v2, v0, :cond_c

    .line 133
    sget v2, Lcom/samsung/android/shealthmonitor/base/R$id;->listText:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 134
    sget v3, Lcom/samsung/android/shealthmonitor/base/R$id;->radio_button:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 135
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mCheckedItems:[Z

    if-eqz v4, :cond_9

    .line 137
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->getCheckedItem(I)Z

    move-result v4

    .line 138
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-eqz v4, :cond_6

    const-string v3, "#5280f2"

    .line 139
    :goto_2
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_3

    :cond_6
    const-string v3, "#252525"

    goto :goto_2

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v4, :cond_7

    .line 140
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/shealthmonitor/base/R$font;->samsungone_600_normal:I

    :goto_4
    invoke-static {v3, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/shealthmonitor/base/R$font;->samsungone_500_normal:I

    goto :goto_4

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mItemDescriptionList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->getCheckedItem(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/samsung/android/shealthmonitor/base/R$string;->home_util_prompt_selected:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 146
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/samsung/android/shealthmonitor/base/R$string;->home_util_prompt_not_selected:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 150
    :cond_9
    sget-object p3, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->TAG:Ljava/lang/String;

    const-string v2, "mCheckedItems is null."

    invoke-static {p3, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 122
    :cond_a
    :goto_6
    sget v2, Lcom/samsung/android/shealthmonitor/base/R$id;->listText:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 123
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mItemDescriptionList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    iget v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mChoiceType:I

    if-ne v3, v1, :cond_c

    .line 126
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->getCheckedItem(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 127
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v3, Lcom/samsung/android/shealthmonitor/base/R$color;->baseui_list_secondary_text_color:I

    invoke-static {p3, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 129
    :cond_b
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v3, Lcom/samsung/android/shealthmonitor/base/R$color;->baseui_black_text:I

    invoke-static {p3, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    :cond_c
    :goto_7
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 154
    iget p3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mChoiceType:I

    if-ne p3, v1, :cond_d

    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->getCheckedItem(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 157
    :cond_d
    new-instance p1, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter$1;-><init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 94
    iget v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mChoiceType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 95
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mCheckedItems:[Z

    aget-boolean p0, p0, p1

    return p0

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method updateRadioButton(I)V
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 175
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mCheckedItems:[Z

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->notifyDataSetChanged()V

    return-void
.end method

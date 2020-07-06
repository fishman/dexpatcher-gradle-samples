.class Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->createViewTreeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$string;->abc_action_menu_overflow_description:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v0, v3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 158
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 161
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 163
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-static {v4}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->access$000(Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_bar"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 174
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-eqz v1, :cond_6

    .line 177
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 178
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_5

    .line 179
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ActionMenuView;

    .line 180
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 181
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->access$000(Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

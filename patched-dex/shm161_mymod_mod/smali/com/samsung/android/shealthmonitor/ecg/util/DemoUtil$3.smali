.class final Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$3;
.super Ljava/lang/Object;
.source "DemoUtil.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->lambda$showSelectErrortypeDialog$0$DemoUtil([Landroid/widget/RadioGroup;Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$radioGroup:Landroid/widget/RadioGroup;

.field final synthetic val$radioGroupArr:[Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Landroid/widget/RadioGroup;[Landroid/widget/RadioGroup;)V
    .registers 3

    .prologue
    .line 248
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$3;->val$radioGroup:Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$3;->val$radioGroupArr:[Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "z"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    if-eqz p2, :cond_22

    .line 251
    invoke-static {v6}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->setErrorDemoState(Z)V

    .line 252
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sIsErrorDemo:Ljava/lang/Boolean;

    .line 253
    .local v2, "unused":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$3;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_47

    .line 254
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$3;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 258
    .end local v0    # "i":I
    .end local v2    # "unused":Ljava/lang/Boolean;
    :cond_22
    invoke-static {v5}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->setErrorDemoState(Z)V

    .line 259
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->sIsErrorDemo:Ljava/lang/Boolean;

    .line 260
    .local v3, "unused2":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$3;->val$radioGroupArr:[Landroid/widget/RadioGroup;

    aget-object v4, v4, v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 261
    const/4 v1, 0x0

    .local v1, "i2":I
    :goto_33
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$3;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_47

    .line 262
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$3;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 264
    .end local v1    # "i2":I
    .end local v3    # "unused2":Ljava/lang/Boolean;
    :cond_47
    return-void
.end method

.class final Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$2;
.super Ljava/lang/Object;
.source "DemoUtil.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->lambda$showSelectErrortypeDialog$0$DemoUtil([Landroid/widget/RadioGroup;Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$periodGroup:[Landroid/widget/RadioGroup;

.field final synthetic val$radioGroups:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Landroid/widget/RadioGroup;[Landroid/widget/RadioGroup;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$2;->val$radioGroups:Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$2;->val$periodGroup:[Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 227
    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$200(Z)V

    .line 228
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$302(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$2;->val$radioGroups:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$2;->val$radioGroups:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 233
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$200(Z)V

    .line 234
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->access$302(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 235
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$2;->val$periodGroup:[Landroid/widget/RadioGroup;

    aget-object p2, p2, p1

    invoke-virtual {p2, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    move p2, p1

    .line 236
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$2;->val$radioGroups:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$2;->val$radioGroups:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

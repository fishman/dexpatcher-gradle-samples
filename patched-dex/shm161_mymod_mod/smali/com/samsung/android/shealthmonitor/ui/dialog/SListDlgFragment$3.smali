.class Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;
.super Ljava/lang/Object;
.source "SListDlgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$300(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$300(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;->onClick(Landroid/view/View;)V

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$400(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    .line 255
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$400(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 256
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$500(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 257
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$500(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$600(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)[Z

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnMultiChoiceItemsListener;->onClick([Z)V

    .line 260
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$3;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$700(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)V

    return-void
.end method

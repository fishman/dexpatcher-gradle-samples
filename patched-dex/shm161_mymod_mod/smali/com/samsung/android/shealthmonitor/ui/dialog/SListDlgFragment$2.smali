.class Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$2;
.super Ljava/lang/Object;
.source "SListDlgFragment.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter$OnListItemClickListener;


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

    .line 214
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$2;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$2;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$100(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$2;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$100(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$2;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$200(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;->onClick(I)V

    :cond_0
    return-void
.end method

.class Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$4;
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

    .line 264
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$4;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$4;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$800(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$4;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$800(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;->onClick(Landroid/view/View;)V

    .line 270
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$4;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->access$700(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;)V

    return-void
.end method

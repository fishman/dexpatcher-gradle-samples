.class Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter$1;
.super Ljava/lang/Object;
.source "SingleChoiceDlgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mOnListItemClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter$OnListItemClickListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SingleChoiceDlgAdapter;->mOnListItemClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter$OnListItemClickListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter$OnListItemClickListener;->onItemClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

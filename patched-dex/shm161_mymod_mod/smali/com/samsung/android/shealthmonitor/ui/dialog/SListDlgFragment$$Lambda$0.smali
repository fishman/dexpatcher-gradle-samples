.class final synthetic Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter$OnListItemClickListener;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

.field private final arg$2:Lcom/samsung/android/shealthmonitor/widget/HTextButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;Lcom/samsung/android/shealthmonitor/widget/HTextButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$$Lambda$0;->arg$2:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$$Lambda$0;->arg$2:Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->lambda$onCreateView$0$SListDlgFragment(Lcom/samsung/android/shealthmonitor/widget/HTextButton;Landroid/view/View;)V

    return-void
.end method

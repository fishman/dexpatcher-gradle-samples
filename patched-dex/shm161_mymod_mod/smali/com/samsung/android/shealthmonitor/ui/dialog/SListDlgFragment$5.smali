.class Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$5;
.super Ljava/lang/Object;
.source "SListDlgFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->dismissDlg()V
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

    .line 328
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$5;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 332
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$5;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "S HealthMonitor - SListDlgFragment"

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dismissDlg exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

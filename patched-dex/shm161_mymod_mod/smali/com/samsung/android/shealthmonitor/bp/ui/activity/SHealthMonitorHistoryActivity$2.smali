.class Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;
.super Ljava/lang/Object;
.source "SHealthMonitorHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 518
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$100(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->getDeleteDataCount()I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 520
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$200(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_select_items:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$300(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 522
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$400(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    .line 523
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$400(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setAlpha(F)V

    .line 524
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$400(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    move-result-object p0

    const p1, -0x19191a

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setBackgroundColor(I)V

    return-void

    .line 526
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$200(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    sget v4, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_selected:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$300(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$100(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->getCount()I

    move-result v3

    if-ne p1, v3, :cond_1

    move v1, v5

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 528
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$400(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    .line 529
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$400(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setAlpha(F)V

    .line 530
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$400(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    move-result-object p0

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setBackgroundColor(I)V

    return-void
.end method

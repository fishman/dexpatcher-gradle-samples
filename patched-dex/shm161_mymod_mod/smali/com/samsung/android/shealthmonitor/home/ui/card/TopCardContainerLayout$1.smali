.class Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;
.super Ljava/lang/Object;
.source "TopCardContainerLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p1, "S HealthMonitor - TopCardContainerLayout"

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " [onLayoutChange] height = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-virtual {p3}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->access$000(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->access$000(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->access$000(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->access$000(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/samsung/android/shealthmonitor/home/R$id;->proto_type_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "S HealthMonitor - TopCardContainerLayout"

    .line 97
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, " [onLayoutChange] rootLayout :"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p2, "S HealthMonitor - TopCardContainerLayout"

    .line 99
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, " [onLayoutChange] rootLayout visibility :"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)Landroid/view/View$OnClickListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

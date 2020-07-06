.class Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;
.super Ljava/lang/Object;
.source "CardContainerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "S HealthMonitor - CardContainerLayout"

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [onClick] View = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 240
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result v0

    if-eq p1, v0, :cond_0

    const-string p1, "S HealthMonitor - CardContainerLayout"

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " change the card !!! mCurrentFrontCard = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$102(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;I)I

    const-string p1, "S HealthMonitor - CardContainerLayout"

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " change the card22 !!! mCurrentFrontCard = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1800(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    :cond_0
    return-void
.end method

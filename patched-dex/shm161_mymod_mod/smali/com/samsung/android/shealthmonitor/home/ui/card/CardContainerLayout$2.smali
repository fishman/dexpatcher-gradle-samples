.class Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;
.super Ljava/lang/Object;
.source "CardContainerLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    .line 174
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$302(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F

    const-string p1, "S HealthMonitor - CardContainerLayout"

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " mainHeight = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$300(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$300(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F

    move-result p2

    invoke-static {}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$500()F

    move-result p3

    mul-float/2addr p2, p3

    const p3, 0x3e99999a    # 0.3f

    mul-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$402(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F

    .line 180
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$400(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$300(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F

    move-result p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$602(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F

    .line 183
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$702(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F

    .line 184
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$802(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F

    .line 185
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$902(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F

    .line 186
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1002(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F

    const-string p1, "S HealthMonitor - CardContainerLayout"

    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " [onLayoutChange] mTopMargin: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$800(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " mStartMargin: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$900(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " mEndMargin: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1000(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "S HealthMonitor - CardContainerLayout"

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " [onLayoutChange] mMaxScale = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$700(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    move p2, p1

    .line 192
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 193
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->setTag(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p3, p2}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->updateView(I)V

    .line 196
    iget-object p4, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p4}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/view/View$OnClickListener;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p4, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p4}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p4}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1300(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/view/View$OnTouchListener;

    move-result-object p4

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p4}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1400(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/view/View$OnTouchListener;

    move-result-object p4

    :goto_1
    invoke-virtual {p3, p4}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    iget-object p4, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p4, p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1500(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;I)F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->onReset(F)V

    .line 201
    iget-object p4, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p4}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1600(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p3}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object p4, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p4}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result p4

    if-eq p2, p4, :cond_1

    const/4 p4, 0x1

    goto :goto_2

    :cond_1
    move p4, p1

    :goto_2
    invoke-virtual {p3, p4}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->setNamClickable(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 206
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$102(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;I)I

    .line 207
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 208
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->bringToFront()V

    .line 211
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1700(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

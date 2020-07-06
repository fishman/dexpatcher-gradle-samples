.class Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$1;
.super Ljava/lang/Object;
.source "SHealthMonitorBpTopCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->showIntroCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 155
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setTopIntroCardVisibility(Z)V

    .line 156
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->access$000(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

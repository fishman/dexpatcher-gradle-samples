.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView$1;
.super Ljava/lang/Object;
.source "SHealthMonitorStepReadingBpMonitorView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 24
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView$1;->$context:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->getMContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

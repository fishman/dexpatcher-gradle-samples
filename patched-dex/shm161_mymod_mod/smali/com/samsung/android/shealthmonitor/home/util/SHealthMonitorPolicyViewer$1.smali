.class final Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer$1;
.super Landroid/text/style/ClickableSpan;
.source "SHealthMonitorPolicyViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer;->setAnnotationForTncAndPrivacy(Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$annotation:Landroid/text/Annotation;


# direct methods
.method constructor <init>(Landroid/text/Annotation;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer$1;->val$annotation:Landroid/text/Annotation;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer$1;->val$annotation:Landroid/text/Annotation;

    invoke-virtual {p0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "link_tnc"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 123
    invoke-static {}, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer;->showTncPolicy()V

    return-void

    .line 125
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer;->access$000()V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x1

    .line 132
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

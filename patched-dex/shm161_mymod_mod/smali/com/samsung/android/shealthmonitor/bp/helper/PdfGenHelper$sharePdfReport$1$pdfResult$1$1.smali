.class final Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1$1;
.super Ljava/lang/Object;
.source "PdfGenHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1;->onShareCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;->$activity:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

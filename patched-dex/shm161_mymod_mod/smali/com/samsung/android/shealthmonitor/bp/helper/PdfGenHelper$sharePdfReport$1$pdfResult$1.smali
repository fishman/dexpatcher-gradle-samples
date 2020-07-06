.class final Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1;
.super Ljava/lang/Object;
.source "PdfGenHelper.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;->pdfResult(ZLjava/io/File;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShareCompleted()V
    .locals 4

    .line 96
    sget-object v0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start sharing pdf file"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

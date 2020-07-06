.class public final Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;
.super Ljava/lang/Object;
.source "PdfGenHelper.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;->sharePdfReport(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;->$activity:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final pdfResult(ZLjava/io/File;Ljava/lang/Exception;)V
    .locals 2

    const-string p3, "file"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;->$activity:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;

    check-cast p1, Landroid/content/Context;

    const-string p3, "Fail to generate PDF"

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p3, v1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 91
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 92
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;->$activity:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->showProgressBar(Z)V

    return-void

    .line 94
    :cond_0
    sget-object p1, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Success!!! making a pdf file"

    invoke-static {p1, p3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;->$activity:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;

    check-cast p1, Landroid/content/Context;

    const-string p3, "application/pdf"

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1$pdfResult$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;)V

    check-cast v0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;

    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;->showShareViaDialog(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;)V

    return-void
.end method

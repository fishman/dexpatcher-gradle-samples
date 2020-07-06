.class public final Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;
.super Ljava/lang/Object;
.source "PdfGenHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$sharePdfReport(Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;J)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;->sharePdfReport(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;J)V

    return-void
.end method

.method private final sharePdfReport(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;J)V
    .locals 10

    .line 85
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-string p0, "pdf"

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;->makeShareFileToSdCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 87
    new-instance p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;

    const-string v0, "file"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;

    invoke-direct {v2}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;-><init>()V

    invoke-direct {v0, v2}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;-><init>(Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;)V

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$sharePdfReport$1;-><init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;)V

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;-><init>(Landroid/content/Context;JLjava/io/File;Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 102
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final showSelectPeriodDialog(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;Ljava/lang/String;)V
    .locals 4

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "tag"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 27
    new-instance v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->bp_select_the_period_dialog_title:I

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 28
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_share_pdf_dialog:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContent(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 35
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->share:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$2;

    invoke-direct {v3, p1, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$2;-><init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 69
    sget p0, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_cancel:I

    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$3;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$3;

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    invoke-virtual {p0, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    invoke-virtual {p0, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 76
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 78
    :catch_0
    sget-object p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "showConfirmDialog(), error in confirm dialog build"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

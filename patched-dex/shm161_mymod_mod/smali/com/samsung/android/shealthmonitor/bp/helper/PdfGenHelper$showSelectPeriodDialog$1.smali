.class final Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$1;
.super Ljava/lang/Object;
.source "PdfGenHelper.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;->showSelectPeriodDialog(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $periodGroup:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$1;->$periodGroup:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContentInitialization(Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper$showSelectPeriodDialog$1;->$periodGroup:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mPeriodGroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.class public Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$OKButtonHandler;
.super Ljava/lang/Object;
.source "MonthPickerDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OKButtonHandler"
.end annotation


# instance fields
.field mOkButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$OKButtonHandler;->mOkButton:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$OKButtonHandler;->mOkButton:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

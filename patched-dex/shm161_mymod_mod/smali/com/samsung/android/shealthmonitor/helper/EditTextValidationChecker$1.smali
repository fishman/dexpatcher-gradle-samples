.class Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "EditTextValidationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;-><init>(Lcom/samsung/android/shealthmonitor/widget/HEditText;Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;I)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$1;->this$0:Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 64
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$1;->this$0:Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p2}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->access$000(Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;Z)V

    return-object p1
.end method

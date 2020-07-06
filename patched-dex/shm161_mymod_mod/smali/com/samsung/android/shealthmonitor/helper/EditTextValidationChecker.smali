.class public Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;
.super Ljava/lang/Object;
.source "EditTextValidationChecker.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;,
        Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;
    }
.end annotation


# instance fields
.field private mChecker:Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;

.field private mDoneAction:Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;

.field private mInvalidString:Ljava/lang/String;

.field private mMaxLength:I

.field private mTargetEditText:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/widget/HEditText;",
            ">;"
        }
    .end annotation
.end field

.field private mutableLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/shealthmonitor/widget/HEditText;Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;ILjava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    .line 52
    iput p3, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mMaxLength:I

    .line 53
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mChecker:Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mDoneAction:Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;

    .line 55
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mInvalidString:Ljava/lang/String;

    .line 56
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 58
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    iget p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mMaxLength:I

    if-lez p1, :cond_0

    .line 61
    new-instance p1, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$1;

    iget p2, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mMaxLength:I

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$1;-><init>(Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;I)V

    const/4 p2, 0x1

    .line 69
    new-array p2, p2, [Landroid/text/InputFilter;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 71
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 74
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->checkLength(Z)V

    return-void
.end method

.method private checkLength(Z)V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$string;->common_error_max_length:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mMaxLength:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setErrorText(Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->removeErrorText()V

    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mChecker:Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-interface {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;->isValid(Lcom/samsung/android/shealthmonitor/widget/HEditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mInvalidString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setErrorText(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mMaxLength:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mMaxLength:I

    if-nez v0, :cond_2

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->removeErrorText()V

    .line 105
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getCurrent()Landroid/arch/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mDoneAction:Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;

    if-eqz p1, :cond_1

    .line 125
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mDoneAction:Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;

    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;->doDoneAction()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 111
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->removeErrorText()V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p2, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mTargetEditText:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setDoneAction(Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->mDoneAction:Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;

    return-void
.end method

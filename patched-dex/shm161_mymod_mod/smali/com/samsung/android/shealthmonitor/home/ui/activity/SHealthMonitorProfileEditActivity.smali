.class public final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorProfileEditActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSHealthMonitorProfileEditActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SHealthMonitorProfileEditActivity.kt\ncom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity\n*L\n1#1,578:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$Companion;

.field private static final DIALOG_TAG_GENDER_PICKER_POPUP:Ljava/lang/String; = "DIALOG_TAG_GENDER_PICKER_POPUP"

.field private static final DIALOG_TAG_INAPPLICABLE_POPUP:Ljava/lang/String; = "DIALOG_TAG_GENDER_PICKER_POPUP"

.field private static final DIALOG_TAG_MONTH_PICKER_POPUP:Ljava/lang/String; = "DIALOG_TAG_MONTH_PICKER_POPUP"

.field private static final INAPPLICABLE_AGE:I = 0x16

.field private static final MAX_CHARACTER_LIMIT:I = 0x32

.field private static final MIN_YEAR:I = 0x76c

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorProfileEditActivity"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mCommonColorList:Landroid/content/res/ColorStateList;

.field private mGender:Ljava/lang/String;

.field private mGenderIndex:Ljava/lang/Integer;

.field private final mGenderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirst:Z

.field private mMonth:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$checkBirthDay(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Lcom/samsung/android/shealthmonitor/widget/HEditText;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->checkBirthDay(Lcom/samsung/android/shealthmonitor/widget/HEditText;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$checkBirthDay(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Lcom/samsung/android/shealthmonitor/widget/HEditText;Z)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->checkBirthDay(Lcom/samsung/android/shealthmonitor/widget/HEditText;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMGender$p(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGender:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMGenderIndex$p(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)Ljava/lang/Integer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getMGenderList$p(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMMonth$p(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)Ljava/lang/Integer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getMonthString(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getMonthString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$gotoMonth(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->gotoMonth()V

    return-void
.end method

.method public static final synthetic access$isValidNameFormat(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Ljava/lang/String;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isValidNameFormat(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$launchMainPage(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->launchMainPage()V

    return-void
.end method

.method public static final synthetic access$openGenderPickerDialog(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->openGenderPickerDialog()V

    return-void
.end method

.method public static final synthetic access$openMonthPickerDialog(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->openMonthPickerDialog()V

    return-void
.end method

.method public static final synthetic access$saveProfile(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->saveProfile()V

    return-void
.end method

.method public static final synthetic access$setMGender$p(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGender:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMGenderIndex$p(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setMMonth$p(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$showInapplicableDialog(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->showInapplicableDialog()V

    return-void
.end method

.method public static final synthetic access$updateEmptyField(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->updateEmptyField()V

    return-void
.end method

.method private final checkBirthDay(Lcom/samsung/android/shealthmonitor/widget/HEditText;)Z
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->checkBirthDay(Lcom/samsung/android/shealthmonitor/widget/HEditText;Z)Z

    move-result p0

    return p0
.end method

.method private final checkBirthDay(Lcom/samsung/android/shealthmonitor/widget/HEditText;Z)Z
    .locals 7

    .line 343
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v1, "mEditYear"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/16 v3, 0x76c

    if-nez v0, :cond_4

    .line 344
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditYear"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isValidYearFormat(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 347
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->removeErrorText()V

    goto :goto_3

    .line 349
    :cond_2
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->length()I

    move-result v0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz p2, :cond_5

    .line 352
    sget v4, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_enter_a_valid_date_of_birth:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setErrorText(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v2

    .line 358
    :cond_5
    :goto_4
    sget v4, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v5, "mEditDate"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    move v4, v1

    goto :goto_6

    :cond_7
    :goto_5
    move v4, v2

    :goto_6
    if-nez v4, :cond_13

    .line 359
    sget v4, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v5, "mEditDate"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    if-eqz p2, :cond_8

    .line 362
    sget p2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_enter_a_valid_date_of_birth:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setErrorText(Ljava/lang/String;)V

    goto :goto_7

    .line 363
    :cond_8
    sget p2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_9

    if-nez v4, :cond_9

    return v2

    .line 367
    :cond_9
    :goto_7
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    if-nez p2, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v5, -0x1

    if-eq p2, v5, :cond_c

    .line 368
    :goto_8
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    if-nez p2, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_9

    :cond_c
    move p2, v1

    .line 371
    :goto_9
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5, v3, p2, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 372
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6, v3, p2, v4}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/4 v3, 0x5

    if-lez v4, :cond_e

    .line 374
    invoke-virtual {v5, v3}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v5

    if-gt v4, v5, :cond_e

    .line 375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_a

    .line 398
    :cond_d
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->removeErrorText()V

    .line 399
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->removeErrorText()V

    goto/16 :goto_c

    .line 376
    :cond_e
    :goto_a
    sget v5, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_f

    move v0, v1

    goto/16 :goto_c

    :cond_f
    if-nez v0, :cond_10

    .line 380
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->removeErrorText()V

    .line 381
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->removeErrorText()V

    goto :goto_c

    .line 383
    :cond_10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string v1, "toDay"

    .line 384
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x2

    .line 385
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, p2, :cond_11

    .line 386
    sget p2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_enter_a_valid_date_of_birth:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setErrorText(Ljava/lang/String;)V

    goto :goto_b

    .line 388
    :cond_11
    sget p2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->removeErrorText()V

    .line 390
    :goto_b
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ge p1, v4, :cond_12

    .line 391
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_enter_a_valid_date_of_birth:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setErrorText(Ljava/lang/String;)V

    goto :goto_c

    .line 393
    :cond_12
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->removeErrorText()V

    :cond_13
    :goto_c
    return v0
.end method

.method private final getMonthString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 570
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    if-gtz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xb

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    new-instance p0, Ljava/text/DateFormatSymbols;

    invoke-direct {p0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 575
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object p0

    .line 576
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, p1

    const-string p1, "monthList[(month)]"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private final gotoMonth()V
    .locals 2

    .line 205
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v1, "mEditMonth"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    .line 206
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->requestFocus()Z

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->openMonthPickerDialog()V

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method private final initActionBar()V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    return-void
.end method

.method private final initView()V
    .locals 9

    .line 117
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v1, "mEditTextFirstName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mCommonColorList:Landroid/content/res/ColorStateList;

    .line 119
    new-instance v0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$firstNameChecker$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$firstNameChecker$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_enter_a_valid_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    .line 119
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;-><init>(Lcom/samsung/android/shealthmonitor/widget/HEditText;Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;ILjava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->getCurrent()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v3, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v1, v2, v3}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 124
    new-instance v1, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;

    sget v3, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextLastName:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    new-instance v5, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$lastNameChecker$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$lastNameChecker$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v5, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_enter_a_valid_name:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-direct {v1, v3, v5, v4, v6}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;-><init>(Lcom/samsung/android/shealthmonitor/widget/HEditText;Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;ILjava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->getCurrent()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v4, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v3, v2, v4}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 129
    new-instance v3, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;

    sget v4, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    new-instance v5, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$yearChecker$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$yearChecker$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v5, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_enter_a_valid_date_of_birth:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 129
    invoke-direct {v3, v4, v5, v7, v6}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;-><init>(Lcom/samsung/android/shealthmonitor/widget/HEditText;Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;ILjava/lang/String;)V

    .line 132
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->getCurrent()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$3;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v5, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v4, v2, v5}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 133
    new-instance v4, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$4;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v4, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;

    invoke-virtual {v3, v4}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->setDoneAction(Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;)V

    .line 141
    new-instance v3, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;

    sget v4, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    new-instance v5, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$dateChecker$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$dateChecker$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v5, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_enter_a_valid_date_of_birth:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-direct {v3, v4, v5, v7, v6}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;-><init>(Lcom/samsung/android/shealthmonitor/widget/HEditText;Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;ILjava/lang/String;)V

    .line 144
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->getCurrent()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$5;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v5, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v4, v2, v5}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 145
    new-instance v4, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$6;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v4, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;

    invoke-virtual {v3, v4}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->setDoneAction(Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;)V

    .line 149
    new-instance v3, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;

    sget v4, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    new-instance v5, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$monthChecker$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$monthChecker$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v5, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_enter_a_valid_date_of_birth:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-direct {v3, v4, v5, v7, v6}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;-><init>(Lcom/samsung/android/shealthmonitor/widget/HEditText;Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditValidationChecker;ILjava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->getCurrent()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$7;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v4, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v3, v2, v4}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 154
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    new-instance v3, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$8;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v3, Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextGender:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    new-instance v3, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$9;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v3, Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mFinishButton:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    new-instance v3, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$10;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->setAgreementArea()V

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->updateView()V

    .line 187
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getAppInit()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mIsFirst:Z

    const-string v2, "KR"

    .line 189
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "Locale.getDefault()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 1053
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-eqz v2, :cond_0

    .line 190
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextLastName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditTextLastName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setImeOptions(I)V

    .line 191
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditTextFirstName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setImeOptions(I)V

    .line 192
    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$11;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->setDoneAction(Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;)V

    return-void

    .line 194
    :cond_0
    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$12;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v0, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker;->setDoneAction(Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;)V

    .line 195
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mNameContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 196
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mNameContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mErrorTextFirstName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 197
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mNameContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 198
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mNameContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mErrorTextFirstName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 199
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextLastName:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v1, "mEditTextLastName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setImeOptions(I)V

    .line 200
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v0, "mEditTextFirstName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setImeOptions(I)V

    return-void
.end method

.method private final isNotEdited()Z
    .locals 5

    .line 420
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getUserProfile()Lcom/samsung/android/shealthmonitor/data/UserProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 421
    :cond_0
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v3, "mEditTextFirstName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "userProfile.firstName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 422
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v3, "mEditMonth"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v3

    const-string v4, "userProfile.dateOfBirth"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->getMonthInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getMonthString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 423
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextLastName:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v3, "mEditTextLastName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getLastName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "userProfile.lastName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getGenderIndex()I

    move-result v3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 425
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v3, "mEditYear"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v3

    const-string v4, "userProfile.dateOfBirth"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->getYear()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 426
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditDate"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v0

    const-string v2, "userProfile.dateOfBirth"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->getDate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private final isValidNameFormat(Ljava/lang/String;)Z
    .locals 4

    const-string p0, "[^\\W0-9]+$"

    .line 407
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string v0, " "

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 408
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->replace$default$109d2382(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 410
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private final isValidYearFormat(Ljava/lang/String;)Z
    .locals 2

    .line 414
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 415
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v1, 0x76c

    if-le v1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-lt p1, p0, :cond_1

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final launchMainPage()V
    .locals 3

    const-string v0, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string v1, "launchMainPage()"

    .line 265
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 266
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setAppInit(Z)V

    .line 267
    invoke-static {}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->getInstance()Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast v1, Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->init(Landroid/app/Application;)V

    const-string v0, "home"

    const-string v1, "SHealthMonitorMainActivity"

    const v2, 0x10008000

    .line 268
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p0, "SHealthMonitorProfileEditActivity"

    const-string v0, "CM01"

    .line 271
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final openGenderPickerDialog()V
    .locals 6

    .line 528
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "DIALOG_TAG_GENDER_PICKER_POPUP"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string v0, "openGenderPickerDialog is already visible"

    .line 530
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string v0, "showCancellationReasonsDialog: No reasons listed"

    .line 535
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 540
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderList:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 541
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget v4, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextGender:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v5, "mEditTextGender"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    :cond_2
    new-instance v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_select_gender:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;-><init>(II)V

    .line 545
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->setSigleChoiceItemListener(Ljava/util/ArrayList;[ZLcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;

    const-string v0, "#5280f2"

    .line 549
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;

    const-string v0, "#5280f2"

    .line 550
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;

    .line 552
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$string;->baseui_button_save:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;

    .line 556
    sget-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$3;->INSTANCE:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$3;

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;

    .line 558
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 559
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SListDlgFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const-string v1, "DIALOG_TAG_GENDER_PICKER_POPUP"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_3
    return-void
.end method

.method private final openMonthPickerDialog()V
    .locals 3

    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "DIALOG_TAG_MONTH_PICKER_POPUP"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string v0, "openMonthPickerDialog is already visible"

    .line 491
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_select_month:I

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;-><init>(II)V

    .line 500
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_min_age_error_message:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;

    const-string v1, "#5280f2"

    .line 501
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;

    const-string v1, "#5280f2"

    .line 502
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;

    .line 504
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->baseui_button_save:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;

    .line 515
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->baseui_button_cancel:I

    sget-object v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$2;->INSTANCE:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$2;

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;

    .line 516
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditMonth"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$3;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->setSelectItemListener(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSelectItemListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;

    .line 518
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const-string v1, "DIALOG_TAG_MONTH_PICKER_POPUP"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    return-void
.end method

.method private final saveProfile()V
    .locals 5

    .line 212
    new-instance v0, Lcom/samsung/android/shealthmonitor/data/UserProfile;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;-><init>()V

    .line 213
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditTextFirstName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->setFirstName(Ljava/lang/String;)V

    .line 214
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextLastName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditTextLastName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->setLastName(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v1

    const-string v2, "userProfile.dateOfBirth"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->setMonthInt(I)V

    .line 216
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v1

    const-string v2, "userProfile.dateOfBirth"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditDate"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Integer.valueOf(mEditDate.text.toString())"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->setDate(I)V

    .line 217
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v1

    const-string v2, "userProfile.dateOfBirth"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditYear"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Integer.valueOf(mEditYear.text.toString())"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->setYear(I)V

    .line 218
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextGender:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditTextGender"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->setGender(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->setGenderIndex(I)V

    .line 220
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setUserProfile(Lcom/samsung/android/shealthmonitor/data/UserProfile;)V

    .line 221
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getAppInit()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SHealthMonitorProfileEditActivity"

    const-string v1, "CM02"

    .line 222
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, v3}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->setResult(I)V

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->finish()V

    return-void

    .line 226
    :cond_4
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROLLER_BP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getControllerInterface(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 228
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v1

    const-string v2, "NodeMonitor.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode()Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 229
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getConnectionStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    invoke-interface {v0}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->getInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    move-result-object v1

    if-nez v1, :cond_5

    .line 230
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->waitForWearableInit(Lcom/samsung/android/shealthmonitor/controller/ControlInterface;)V

    return-void

    .line 235
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->launchMainPage()V

    return-void
.end method

.method private final setAgreementArea()V
    .locals 2

    .line 330
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mTermsAndConditions:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer;->setAnnotationForTncAndPrivacy(Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method private final showInapplicableDialog()V
    .locals 3

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "DIALOG_TAG_GENDER_PICKER_POPUP"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string v0, "openMonthPickerDialog is already visible"

    .line 468
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_you_must_be_at_least_22_years_old:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 476
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_profile_min_age_error_message:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v1, "#5280f2"

    .line 477
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 478
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->baseui_button_ok:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$showInapplicableDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$showInapplicableDialog$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 481
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v1, "DIALOG_TAG_GENDER_PICKER_POPUP"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    return-void
.end method

.method private final startActivityByClassName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 308
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.samsung.android.shealthmonitor."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".ui.activity."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 309
    new-instance p2, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mIsFirst:Z

    if-eqz p1, :cond_0

    const-string p1, "from_profile"

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " Exception : illegal state exception = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " Exception : class not found = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateEmptyField()V
    .locals 5

    .line 430
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isNotEdited()Z

    move-result v0

    .line 432
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditTextFirstName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    .line 433
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditTextFirstName"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isValidNameFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v0, v3

    .line 437
    :cond_3
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextLastName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditTextLastName"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v3

    :goto_3
    if-nez v1, :cond_6

    .line 438
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextLastName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditTextLastName"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isValidNameFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    move v0, v3

    .line 442
    :cond_7
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditMonth"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_5

    :cond_9
    :goto_4
    move v1, v3

    :goto_5
    if-eqz v1, :cond_a

    move v0, v3

    .line 446
    :cond_a
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditDate"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    move v1, v2

    goto :goto_7

    :cond_c
    :goto_6
    move v1, v3

    :goto_7
    if-nez v1, :cond_d

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditDate"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->isErrorStatus()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    move v0, v3

    .line 451
    :cond_e
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditYear"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_8

    :cond_f
    move v1, v2

    goto :goto_9

    :cond_10
    :goto_8
    move v1, v3

    :goto_9
    if-nez v1, :cond_11

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditYear"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->isErrorStatus()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    move v0, v3

    .line 456
    :cond_12
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextGender:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v4, "mEditTextGender"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_a

    :cond_13
    move v1, v2

    goto :goto_b

    :cond_14
    :goto_a
    move v1, v3

    :goto_b
    if-eqz v1, :cond_15

    move v0, v3

    .line 461
    :cond_15
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mFinishButton:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v1, "mFinishButton"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_16

    move v2, v3

    :cond_16
    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    return-void
.end method

.method private final updateView()V
    .locals 4

    .line 275
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getUserProfile()Lcom/samsung/android/shealthmonitor/data/UserProfile;

    move-result-object v0

    .line 277
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextLastName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getLastName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->getMonthInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-direct {p0, v3}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getMonthString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    .line 280
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->getMonthInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    .line 281
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->getDate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v2

    :goto_4
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->getYear()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object v3, v2

    :goto_5
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_6

    .line 283
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getGenderIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_6
    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    .line 284
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 285
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextGender:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    if-nez v2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :cond_8
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getAppInit()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 289
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mHeaderTextView:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mHeaderTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$string;->home_user_profile_edit_your_profile:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mTermsAndConditions:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mTermsAndConditions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mFinishButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v1, "mFinishButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$string;->home_user_profile_confirm_and_save:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 293
    :cond_9
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mHeaderTextView:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mHeaderTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$string;->home_user_profile_create_your_profile:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :goto_6
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->updateEmptyField()V

    return-void
.end method

.method private final waitForWearableInit(Lcom/samsung/android/shealthmonitor/controller/ControlInterface;)V
    .locals 2

    const-string v0, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string v1, "waitForWearableInit()"

    .line 240
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 241
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->showProgressBar(Z)V

    .line 242
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$waitForWearableInit$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$waitForWearableInit$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Lcom/samsung/android/shealthmonitor/controller/ControlInterface;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->setSetDefaultMenuColor(Z)V

    .line 61
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string v0, "onCreate() - Start"

    .line 62
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$layout;->shealth_monitor_profile_edit_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->setContentView(I)V

    .line 65
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mErrorTextFirstName:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setErrorView(Landroid/widget/TextView;)V

    .line 66
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextLastName:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mErrorTextLastName:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setErrorView(Landroid/widget/TextView;)V

    .line 67
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mErrorTextMonth:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setErrorView(Landroid/widget/TextView;)V

    .line 68
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mErrorTextDay:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setErrorView(Landroid/widget/TextView;)V

    .line 69
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mErrorTextYear:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setErrorView(Landroid/widget/TextView;)V

    .line 70
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderList:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$array;->gender_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getStringArray(R.array.gender_list)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->initView()V

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->initActionBar()V

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->overridePendingTransition(II)V

    const-string p0, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string p1, "onCreate() - End"

    .line 74
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->finish()V

    .line 326
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 78
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string v1, "onRestoreInstanceState() - Start"

    .line 79
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "mEditTextFirstName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextLastName:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    if-eqz p1, :cond_1

    const-string v2, "mEditTextLastName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const-string v2, "mMonth"

    .line 82
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    .line 83
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 84
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->getMonthString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 86
    :cond_3
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditMonth:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v3, ""

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_3
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    if-eqz p1, :cond_4

    const-string v3, "mEditDate"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v1

    :goto_4
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    if-eqz p1, :cond_5

    const-string v3, "mEditYear"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object v3, v1

    :goto_5
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_6

    const-string v1, "mGenderIndex"

    .line 90
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_6
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    .line 91
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    if-nez p1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 92
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextGender:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    if-nez v1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 94
    :cond_a
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextGender:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_6
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->updateEmptyField()V

    const-string p0, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string p1, "onRestoreInstanceState() - End"

    .line 97
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 101
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string v1, "onSaveInstanceState() - Start"

    .line 102
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "mEditTextFirstName"

    .line 103
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextFirstName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditTextFirstName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "mEditTextLastName"

    .line 104
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextLastName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditTextLastName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-string v0, "mMonth"

    .line 106
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mMonth:Ljava/lang/Integer;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "mEditDate"

    .line 108
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditDate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    const-string v0, "mEditYear"

    .line 109
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditYear"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    const-string v0, "mGenderIndex"

    .line 111
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->mGenderIndex:Ljava/lang/Integer;

    if-nez p0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    const-string p0, "S HealthMonitor - SHealthMonitorProfileEditActivity"

    const-string p1, "onSaveInstanceState() - End"

    .line 113
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

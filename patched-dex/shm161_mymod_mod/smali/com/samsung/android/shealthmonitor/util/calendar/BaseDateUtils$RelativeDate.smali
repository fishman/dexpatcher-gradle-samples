.class public Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$RelativeDate;
.super Ljava/lang/Object;
.source "BaseDateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativeDate"
.end annotation


# instance fields
.field private mDisplayText:Ljava/lang/String;

.field mRelativeDays:I

.field private mTtsDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 1443
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$RelativeDate;->mDisplayText:Ljava/lang/String;

    const-string v0, ""

    .line 1444
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$RelativeDate;->mTtsDescription:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1445
    iput v0, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$RelativeDate;->mRelativeDays:I

    return-void
.end method


# virtual methods
.method public getDisplayText()Ljava/lang/String;
    .locals 0

    .line 1454
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$RelativeDate;->mDisplayText:Ljava/lang/String;

    return-object p0
.end method

.method public getRelativeDays()I
    .locals 0

    .line 1472
    iget p0, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$RelativeDate;->mRelativeDays:I

    return p0
.end method

.method public getTtsDescription()Ljava/lang/String;
    .locals 0

    .line 1464
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$RelativeDate;->mTtsDescription:Ljava/lang/String;

    return-object p0
.end method

.method setDisplayText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1449
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$RelativeDate;->mDisplayText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method setRelativeDays(I)V
    .locals 0

    .line 1468
    iput p1, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$RelativeDate;->mRelativeDays:I

    return-void
.end method

.method setTtsDescription(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1459
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$RelativeDate;->mTtsDescription:Ljava/lang/String;

    :cond_0
    return-void
.end method

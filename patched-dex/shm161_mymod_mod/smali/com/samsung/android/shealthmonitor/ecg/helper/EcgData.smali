.class public final Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;
.super Ljava/lang/Object;
.source "EcgData.java"


# instance fields
.field private mDate:Ljava/lang/String;

.field private mDiastolic:I

.field private mNotes:Ljava/lang/String;

.field private mPulseRate:I

.field private mSystolic:I

.field private mTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "i2"    # I
    .param p5, "i3"    # I
    .param p6, "str3"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v0, "time"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v0, "notes"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mDate:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mTime:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mSystolic:I

    .line 21
    iput p4, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mDiastolic:I

    .line 22
    iput p5, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mPulseRate:I

    .line 23
    iput-object p6, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mNotes:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public final getMDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getMDiastolic()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mDiastolic:I

    return v0
.end method

.method public final getMNotes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mNotes:Ljava/lang/String;

    return-object v0
.end method

.method public final getMPulseRate()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mPulseRate:I

    return v0
.end method

.method public final getMSystolic()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mSystolic:I

    return v0
.end method

.method public final getMTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public final setMDate(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mDate:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public final setMDiastolic(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mDiastolic:I

    .line 58
    return-void
.end method

.method public final setMNotes(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mNotes:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final setMPulseRate(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mPulseRate:I

    .line 66
    return-void
.end method

.method public final setMSystolic(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mSystolic:I

    .line 50
    return-void
.end method

.method public final setMTime(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgData;->mTime:Ljava/lang/String;

    .line 42
    return-void
.end method

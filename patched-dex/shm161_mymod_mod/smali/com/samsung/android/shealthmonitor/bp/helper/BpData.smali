.class public final Lcom/samsung/android/shealthmonitor/bp/helper/BpData;
.super Ljava/lang/Object;
.source "PdfBpDataMaker.kt"


# instance fields
.field private mDate:Ljava/lang/String;

.field private mDiastolic:I

.field private mNotes:Ljava/lang/String;

.field private mPulseRate:I

.field private mSystolic:I

.field private mTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notes"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mDate:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mTime:Ljava/lang/String;

    .line 133
    iput p3, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mSystolic:I

    .line 134
    iput p4, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mDiastolic:I

    .line 135
    iput p5, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mPulseRate:I

    .line 136
    iput-object p6, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mNotes:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMDate()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method public final getMDiastolic()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mDiastolic:I

    return p0
.end method

.method public final getMNotes()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mNotes:Ljava/lang/String;

    return-object p0
.end method

.method public final getMPulseRate()I
    .locals 0

    .line 135
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mPulseRate:I

    return p0
.end method

.method public final getMSystolic()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mSystolic:I

    return p0
.end method

.method public final getMTime()Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mTime:Ljava/lang/String;

    return-object p0
.end method

.method public final setMDate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mDate:Ljava/lang/String;

    return-void
.end method

.method public final setMDiastolic(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mDiastolic:I

    return-void
.end method

.method public final setMNotes(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mNotes:Ljava/lang/String;

    return-void
.end method

.method public final setMPulseRate(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mPulseRate:I

    return-void
.end method

.method public final setMSystolic(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mSystolic:I

    return-void
.end method

.method public final setMTime(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;->mTime:Ljava/lang/String;

    return-void
.end method

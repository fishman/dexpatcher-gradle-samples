.class public Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;
.super Ljava/lang/Object;
.source "BloodPressureDataListItem.java"


# instance fields
.field private isDeleteSelected:Z

.field private mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->isDeleteSelected:Z

    .line 12
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->isDeleteSelected:Z

    return-void
.end method


# virtual methods
.method public getData()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    return-object p0
.end method

.method public isDeleteSelected()Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->isDeleteSelected:Z

    return p0
.end method

.method public setDeleteSelected(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->isDeleteSelected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "item : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->isDeleteSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

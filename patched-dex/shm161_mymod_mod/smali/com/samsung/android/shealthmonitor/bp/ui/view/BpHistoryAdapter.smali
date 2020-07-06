.class public Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "BpHistoryAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - BpHistoryAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteModeClickListener:Landroid/view/View$OnClickListener;

.field private mIsDeleteMode:Z

.field private mIsFullTime:Z

.field private mItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mIsDeleteMode:Z

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mIsFullTime:Z

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mDeleteModeClickListener:Landroid/view/View$OnClickListener;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mItem:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mItem:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mItem:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getDeleteData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mItem:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;

    .line 87
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->isDeleteSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->getData()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDeleteDataCount()I
    .locals 2

    .line 96
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mItem:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;

    .line 97
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->isDeleteSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mItem:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 57
    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;-><init>(Landroid/content/Context;)V

    .line 62
    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;

    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mIsFullTime:Z

    invoke-virtual {p3, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->setTimeFormat(Z)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;

    invoke-virtual {p3, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->setData(Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;)V

    .line 67
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mIsDeleteMode:Z

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mDeleteModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->setDeleteMode(ZLandroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setAllCheck(Z)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;

    .line 79
    invoke-virtual {v1, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->setDeleteSelected(Z)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mItem:Ljava/util/List;

    return-void
.end method

.method public setDeleteMode(ZLandroid/view/View$OnClickListener;)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mIsDeleteMode:Z

    .line 74
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mDeleteModeClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setFullTimeView(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->mIsFullTime:Z

    return-void
.end method

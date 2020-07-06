.class public Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;
.super Landroid/widget/LinearLayout;
.source "SHealthMonitorBpCardHistoryItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorBpCardHistoryItemView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

.field private mHeartRate:Landroid/widget/TextView;

.field private mNoteImg:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mTimeView:Landroid/widget/TextView;

.field private mValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected initView(Landroid/content/Context;)V
    .locals 2

    .line 55
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mContext:Landroid/content/Context;

    .line 56
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 57
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_home_item_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mRootView:Landroid/view/View;

    .line 59
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mRootView:Landroid/view/View;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mValue:Landroid/widget/TextView;

    .line 60
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mRootView:Landroid/view/View;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_hr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mHeartRate:Landroid/widget/TextView;

    .line 61
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mRootView:Landroid/view/View;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mNoteImg:Landroid/widget/ImageView;

    .line 62
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mRootView:Landroid/view/View;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mTimeView:Landroid/widget/TextView;

    return-void
.end method

.method public setData(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)V
    .locals 6

    .line 66
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    .line 67
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mValue:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getSystolic()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDiastole()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mHeartRate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getHeartRate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mNoteImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mNoteImg:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :goto_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM dd, hh:mm a"

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 78
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 79
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

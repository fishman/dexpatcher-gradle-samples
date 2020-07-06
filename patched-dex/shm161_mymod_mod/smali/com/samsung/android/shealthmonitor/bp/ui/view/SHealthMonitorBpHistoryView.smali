.class public Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;
.super Landroid/widget/LinearLayout;
.source "SHealthMonitorBpHistoryView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorBpHistoryView"


# instance fields
.field private fullDate:Ljava/text/SimpleDateFormat;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

.field private mDeleteModeClickListener:Landroid/view/View$OnClickListener;

.field private mDeleteRadio:Landroid/widget/CheckBox;

.field private mHeartRate:Landroid/widget/TextView;

.field private mIsDeleteMode:Z

.field private mIsFullTimeFormat:Z

.field private mItemData:Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;

.field private mNoteImg:Landroid/widget/ImageView;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mRootView:Landroid/view/View;

.field private mTimeView:Landroid/widget/TextView;

.field private mValue:Landroid/widget/TextView;

.field private simpleDate:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mIsDeleteMode:Z

    .line 148
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm a"

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->simpleDate:Ljava/text/SimpleDateFormat;

    .line 149
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd, hh:mm a"

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->fullDate:Ljava/text/SimpleDateFormat;

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mIsDeleteMode:Z

    .line 148
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mm a"

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->simpleDate:Ljava/text/SimpleDateFormat;

    .line 149
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM dd, hh:mm a"

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->fullDate:Ljava/text/SimpleDateFormat;

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mIsDeleteMode:Z

    .line 148
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "hh:mm a"

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->simpleDate:Ljava/text/SimpleDateFormat;

    .line 149
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "MMM dd, hh:mm a"

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->fullDate:Ljava/text/SimpleDateFormat;

    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mIsDeleteMode:Z

    .line 148
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "hh:mm a"

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->simpleDate:Ljava/text/SimpleDateFormat;

    .line 149
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "MMM dd, hh:mm a"

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->fullDate:Ljava/text/SimpleDateFormat;

    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private setViewData()V
    .locals 6

    .line 130
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mValue:Landroid/widget/TextView;

    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getSystolic()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDiastole()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mHeartRate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getHeartRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mNoteImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mNoteImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :goto_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 141
    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mIsFullTimeFormat:Z

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mTimeView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->fullDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mTimeView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->simpleDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private startItemActivity()V
    .locals 3

    :try_start_0
    const-string v0, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorHistoryItemActivity"

    .line 113
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 115
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "data"

    .line 116
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 117
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "S HealthMonitor - SHealthMonitorBpHistoryView"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Exception : class not found = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 2

    .line 85
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mContext:Landroid/content/Context;

    .line 86
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 87
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_history_item_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootView:Landroid/view/View;

    .line 89
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootView:Landroid/view/View;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_view_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootLayout:Landroid/widget/LinearLayout;

    .line 90
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootView:Landroid/view/View;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mDeleteRadio:Landroid/widget/CheckBox;

    .line 92
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootView:Landroid/view/View;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mValue:Landroid/widget/TextView;

    .line 93
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootView:Landroid/view/View;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_hr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mHeartRate:Landroid/widget/TextView;

    .line 94
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootView:Landroid/view/View;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mNoteImg:Landroid/widget/ImageView;

    .line 95
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootView:Landroid/view/View;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mTimeView:Landroid/widget/TextView;

    .line 97
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView$$Lambda$0;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method final synthetic lambda$initView$0$SHealthMonitorBpHistoryView(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mDeleteRadio:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mItemData:Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mDeleteRadio:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->setDeleteSelected(Z)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mDeleteModeClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 102
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mDeleteModeClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->startItemActivity()V

    :cond_1
    return-void
.end method

.method public setData(Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mItemData:Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->getData()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->setViewData()V

    return-void
.end method

.method public setDeleteMode(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .line 160
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mIsDeleteMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mDeleteRadio:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mDeleteRadio:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mItemData:Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;->isDeleteSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mDeleteModeClickListener:Landroid/view/View$OnClickListener;

    return-void

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mDeleteRadio:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mDeleteRadio:Landroid/widget/CheckBox;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mDeleteModeClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setLastItemMargin(Z)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x147

    .line 178
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 179
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 181
    :cond_1
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 182
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 183
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public setTimeFormat(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpHistoryView;->mIsFullTimeFormat:Z

    return-void
.end method

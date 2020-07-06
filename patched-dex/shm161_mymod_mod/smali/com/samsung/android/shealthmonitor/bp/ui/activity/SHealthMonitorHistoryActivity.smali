.class public Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;
.source "SHealthMonitorHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# static fields
.field private static final MILLS_IN_DAY:J = 0x5265c00L

.field private static final SELECT_PERIOD_DIALOG_TAG:Ljava/lang/String; = "SELECT_PERIOD_DIALOG_TAG"

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorHistoryActivity"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarTitle:Landroid/widget/TextView;

.field private mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

.field private mBottomLayout:Landroid/widget/RelativeLayout;

.field private mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

.field private mBpData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBpDataReadObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBpHistoryListView:Landroid/widget/ListView;

.field private mDaySelectLayout:Landroid/widget/RadioGroup;

.field private mDeleteButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

.field private mDeleteLayout:Landroid/widget/LinearLayout;

.field private mDeleteModeItemClickListener:Landroid/view/View$OnClickListener;

.field private mDiaAvg:Landroid/widget/TextView;

.field private mDiaAvgValue:Landroid/widget/TextView;

.field private mHomeDeleteLayout:Landroid/widget/LinearLayout;

.field private mHomeRadioButton:Landroid/widget/CheckBox;

.field private mIsDeleteMode:Z

.field private mIsNoData:Z

.field private mIsPulseSwitchOn:Z

.field private mIsWarningVisible:Z

.field private mMainChartLayout:Landroid/widget/LinearLayout;

.field private mNextButton:Landroid/widget/LinearLayout;

.field private mNextImage:Landroid/widget/ImageView;

.field private mNoDataView:Landroid/widget/TextView;

.field private mPeriodButton:[Landroid/widget/Button;

.field private mPeriodMode:I

.field private mPrevButton:Landroid/widget/LinearLayout;

.field private mPulseAvg:Landroid/widget/TextView;

.field private mPulseAvgValue:Landroid/widget/TextView;

.field private mPulseSwitch:Landroid/view/View;

.field private mPulseSwitchBg:Landroid/view/View;

.field private mPulseSwitchLayout:Landroid/widget/RelativeLayout;

.field private mSetTime:J

.field private mShiftEndTime:J

.field private mShiftHandler:Landroid/os/Handler;

.field private mShiftLoadDataRunnable:Ljava/lang/Runnable;

.field private mShiftStartTime:J

.field private mSysAvg:Landroid/widget/TextView;

.field private mSysAvgValue:Landroid/widget/TextView;

.field private mTimeText:Landroid/widget/TextView;

.field private mTodayTime:J

.field private mWarningLayout:Landroid/widget/LinearLayout;

.field private pbColorSet:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x3

    .line 65
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->pbColorSet:[I

    .line 82
    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodButton:[Landroid/widget/Button;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsPulseSwitchOn:Z

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    .line 301
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpDataReadObserver:Landroid/arch/lifecycle/Observer;

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsWarningVisible:Z

    .line 515
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteModeItemClickListener:Landroid/view/View$OnClickListener;

    .line 722
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 723
    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftStartTime:J

    .line 724
    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftEndTime:J

    .line 726
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftLoadDataRunnable:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        -0xb497
        -0x89b5
        -0x9b9128
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;Ljava/util/List;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->doDataChange(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBarTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mHomeRadioButton:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)Lcom/samsung/android/shealthmonitor/widget/HColorButton;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    return-object p0
.end method

.method private changeYPos(ILandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 380
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(I)I

    move-result p0

    int-to-float p0, p0

    .line 381
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$6;

    invoke-direct {p1, p2, p0, p3}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$6;-><init>(Landroid/widget/TextView;FLandroid/widget/TextView;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private checkNextDayButton(J)V
    .locals 5

    .line 622
    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 624
    :cond_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    .line 630
    :goto_0
    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getDayOfValue(IJ)I

    move-result v0

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0, v1, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getDayOfValue(IJ)I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->checkYear(JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 638
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNextImage:Landroid/widget/ImageView;

    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->ic_arrow_right:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 639
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNextImage:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 640
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNextButton:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void

    .line 634
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNextImage:Landroid/widget/ImageView;

    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->ic_arrow_left:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 635
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNextImage:Landroid/widget/ImageView;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 636
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method private checkYear(JJ)Z
    .locals 0

    .line 612
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 613
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 614
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 615
    invoke-virtual {p0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 616
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ge p2, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private delayedDismissProgressBar()V
    .locals 4

    .line 309
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$5;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private displayTime(J)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 654
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265bff

    add-long/2addr v7, v5

    .line 657
    iget v9, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    const/4 v10, 0x0

    if-nez v9, :cond_0

    .line 659
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "E, MMMM dd"

    invoke-static {v6}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 660
    iget-object v6, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide v5

    .line 662
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfDay(J)J

    move-result-wide v7

    .line 663
    iget-object v4, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-virtual {v4, v10}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setTimeFormatWithDay(Z)V

    goto/16 :goto_2

    .line 664
    :cond_0
    iget v9, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v9, v13, :cond_2

    .line 666
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MMMM"

    invoke-static {v6}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 667
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "dd"

    invoke-static {v7}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 668
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 669
    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v8, 0x7

    .line 673
    invoke-virtual {v7}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 674
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 675
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 676
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide v14

    const/4 v10, 0x3

    .line 678
    invoke-virtual {v7, v10, v13}, Ljava/util/Calendar;->add(II)V

    const/4 v10, -0x1

    .line 679
    invoke-virtual {v7, v11, v10}, Ljava/util/Calendar;->add(II)V

    .line 680
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 681
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 682
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfDay(J)J

    move-result-wide v11

    if-ne v9, v10, :cond_1

    .line 684
    iget-object v7, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mTimeText:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 686
    :cond_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MMM dd"

    invoke-static {v5}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 687
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mTimeText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    :goto_0
    iget-object v4, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-virtual {v4, v13}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setTimeFormatWithDay(Z)V

    move-wide v7, v11

    move-wide v5, v14

    goto :goto_2

    .line 690
    :cond_2
    iget v9, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    if-ne v9, v12, :cond_4

    .line 692
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 693
    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 694
    invoke-virtual {v5, v11, v13}, Ljava/util/Calendar;->set(II)V

    .line 696
    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 697
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MMMM"

    invoke-static {v7}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_1

    .line 699
    :cond_3
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MMMM yyyy"

    invoke-static {v7}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 701
    :goto_1
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide v7

    .line 702
    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v13

    invoke-virtual {v5, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 703
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    .line 704
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v4, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-virtual {v4, v13}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setTimeFormatWithDay(Z)V

    move-wide v5, v7

    move-wide v7, v9

    .line 707
    :cond_4
    :goto_2
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->checkNextDayButton(J)V

    .line 708
    iget-wide v9, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mTodayTime:J

    cmp-long v4, v2, v9

    if-lez v4, :cond_5

    .line 709
    iget-wide v2, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mTodayTime:J

    iput-wide v2, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSetTime:J

    goto :goto_3

    .line 711
    :cond_5
    iput-wide v2, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSetTime:J

    .line 714
    :goto_3
    monitor-enter p0

    .line 715
    :try_start_0
    iput-wide v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftStartTime:J

    .line 716
    iput-wide v7, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftEndTime:J

    .line 717
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftLoadDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 719
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftLoadDataRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 717
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private doDataChange(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)V"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 297
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private doDelete()V
    .locals 3

    .line 749
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_data:I

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 753
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_delete_bp_measurement:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x1

    .line 754
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 755
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 757
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$9;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 759
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_cancel:I

    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$10;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 760
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_delete:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$11;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const v1, -0xad7f0e

    .line 766
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 767
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNeutralButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 769
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    .line 770
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const-string v1, "dialog"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 771
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private doDeleteProcess()V
    .locals 2

    .line 562
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_deleting_dot:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->showProgressbar(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 563
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$7;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 584
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private forceSyncRequest()V
    .locals 1

    .line 241
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_syncing_dot:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->showProgressbar(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 242
    new-instance p0, Ljava/lang/Thread;

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$3;->$instance:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getDayOfValue(IJ)I
    .locals 0

    .line 645
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 646
    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 647
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method private initActionBar()V
    .locals 4

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBar:Landroid/app/ActionBar;

    .line 389
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 392
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBar:Landroid/app/ActionBar;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_custom_actionbar:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_home_actionbar_title:I

    .line 396
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBarTitle:Landroid/widget/TextView;

    .line 397
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$color;->baseui_actionbar_up_button_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBarTitle:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_history_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_home_actionbar_radio_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mHomeDeleteLayout:Landroid/widget/LinearLayout;

    .line 401
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mHomeDeleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_home_actionbar_radio_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mHomeRadioButton:Landroid/widget/CheckBox;

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_history_name:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private initButtons()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodButton:[Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shealth_monitor_bp_history_select_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/shealthmonitor/bp/R$id;

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/Utils;->getResId(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v1, v0

    .line 220
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodButton:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodButton:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_prev:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPrevButton:Landroid/widget/LinearLayout;

    .line 225
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPrevButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPrevButton:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 227
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_time_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mTimeText:Landroid/widget/TextView;

    .line 228
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_next:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNextButton:Landroid/widget/LinearLayout;

    .line 229
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNextButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 231
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_next_image:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNextImage:Landroid/widget/ImageView;

    .line 233
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_select_pulse:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitchLayout:Landroid/widget/RelativeLayout;

    .line 234
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_select_pulse_switch_bg:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitchBg:Landroid/view/View;

    .line 237
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_select_pulse_switch:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitch:Landroid/view/View;

    return-void
.end method

.method private initView()V
    .locals 7

    .line 162
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_list:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpHistoryListView:Landroid/widget/ListView;

    .line 163
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    .line 164
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpHistoryListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_bp_chart:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    .line 167
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->pbColorSet:[I

    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->initChart(FF[I)V

    .line 169
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_avg_sys:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSysAvg:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_avg_sys_value:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSysAvgValue:Landroid/widget/TextView;

    .line 171
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_avg_dia:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDiaAvg:Landroid/widget/TextView;

    .line 172
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_avg_dia_value:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDiaAvgValue:Landroid/widget/TextView;

    .line 173
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_avg_pulse:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseAvg:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_avg_pulse_value:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseAvgValue:Landroid/widget/TextView;

    .line 176
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_delete_layout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteLayout:Landroid/widget/LinearLayout;

    .line 177
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_delete_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    .line 178
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_warning_layout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mWarningLayout:Landroid/widget/LinearLayout;

    .line 181
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_bottom_layout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    .line 183
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getChartPulseOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsPulseSwitchOn:Z

    .line 185
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_warning_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 187
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bo_history_warning_highlight:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 189
    new-instance v4, Lcom/samsung/android/shealthmonitor/util/CustomTypefaceSpan;

    const-string v5, ""

    sget v6, Lcom/samsung/android/shealthmonitor/bp/R$font;->samsungone_500:I

    invoke-static {p0, v6}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/shealthmonitor/util/CustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x21

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6, v0, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 190
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/CustomTypefaceSpan;

    const-string v4, ""

    sget v6, Lcom/samsung/android/shealthmonitor/bp/R$font;->samsungone_700:I

    invoke-static {p0, v6}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Lcom/samsung/android/shealthmonitor/util/CustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-interface {v1, v0, v3, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->initButtons()V

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setBottomButton()V

    .line 195
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_no_data:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNoDataView:Landroid/widget/TextView;

    .line 197
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_main_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 198
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 206
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_main_chart_view:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mMainChartLayout:Landroid/widget/LinearLayout;

    .line 207
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_select_group:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDaySelectLayout:Landroid/widget/RadioGroup;

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSetTime:J

    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mTodayTime:J

    .line 210
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSetTime:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->displayTime(J)V

    .line 212
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getWearableInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLastBpCalibrationTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->forceSyncRequest()V

    :cond_0
    return-void
.end method

.method static final synthetic lambda$changeYPos$7$SHealthMonitorHistoryActivity(Landroid/widget/TextView;FLandroid/widget/TextView;)V
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setY(F)V

    .line 383
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    const/4 p0, 0x5

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setY(F)V

    return-void
.end method

.method static final synthetic lambda$doDelete$12$SHealthMonitorHistoryActivity(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static final synthetic lambda$doDelete$13$SHealthMonitorHistoryActivity(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static final synthetic lambda$forceSyncRequest$2$SHealthMonitorHistoryActivity()V
    .locals 2

    .line 242
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;->UI:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->syncRequest(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;)Z

    return-void
.end method

.method private loadHistoryData(JJ)V
    .locals 6

    .line 327
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_loading_dot:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->showProgressbar(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 328
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setChartVisibility(Z)V

    const-string v0, "S HealthMonitor - SHealthMonitorHistoryActivity"

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [loadHistoryData] start : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", end_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "YYYY-MM-dd hh:mm:ss "

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 331
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 332
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p3, p4}, Ljava/util/Date;-><init>(J)V

    const-string v3, "S HealthMonitor - SHealthMonitorHistoryActivity"

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " [loadHistoryData] start : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", end_time : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpData:Landroid/arch/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpData:Landroid/arch/lifecycle/LiveData;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpDataReadObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 339
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getBloodPressureData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpData:Landroid/arch/lifecycle/LiveData;

    .line 340
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpData:Landroid/arch/lifecycle/LiveData;

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpDataReadObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {p1, p0, p2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method private setBottomButton()V
    .locals 6

    .line 442
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsPulseSwitchOn:Z

    const/4 v1, -0x1

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->changeViewSets(Z)V

    .line 444
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v5, 0x146

    .line 445
    invoke-static {v5}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(I)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 446
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-virtual {v5, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitchBg:Landroid/view/View;

    sget v5, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_round_switch_bg_on:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitch:Landroid/view/View;

    sget v5, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_round_switch_on:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 449
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitch:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 450
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 451
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 452
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitch:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-virtual {v0, v4}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->changeViewSets(Z)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v5, 0xe4

    .line 456
    invoke-static {v5}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(I)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 457
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-virtual {v5, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitchBg:Landroid/view/View;

    sget v5, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_round_switch_bg:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitch:Landroid/view/View;

    sget v5, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_round_switch:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitch:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 461
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 462
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 463
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitch:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsNoData:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setUpdateAvgLabel(Z)V

    return-void
.end method

.method private setChangeButtonEnable(I)V
    .locals 5

    .line 495
    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 498
    :cond_0
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_round_background_stroke:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 499
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xf0f10

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 501
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    if-ne v2, p1, :cond_1

    .line 504
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodButton:[Landroid/widget/Button;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 505
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodButton:[Landroid/widget/Button;

    aget-object v3, v3, v2

    const v4, -0x50506

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 507
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodButton:[Landroid/widget/Button;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodButton:[Landroid/widget/Button;

    aget-object v3, v3, v2

    const v4, -0x7a7a7b

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSetTime:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->displayTime(J)V

    return-void
.end method

.method private setChartVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 317
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setVisibility(I)V

    return-void

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSysAvgValue:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDiaAvgValue:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseAvgValue:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setVisibility(I)V

    return-void
.end method

.method private setDeleteMode(Z)V
    .locals 5

    .line 536
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->invalidateOptionsMenu()V

    .line 538
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mHomeDeleteLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteModeItemClickListener:Landroid/view/View$OnClickListener;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->setDeleteMode(ZLandroid/view/View$OnClickListener;)V

    .line 542
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 543
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 544
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mActionBarTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_select_items:I

    :goto_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_name:I

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mMainChartLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 548
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDaySelectLayout:Landroid/widget/RadioGroup;

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move v2, v4

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setAlpha(F)V

    if-nez p1, :cond_7

    .line 551
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    invoke-virtual {p1, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->setAllCheck(Z)V

    .line 552
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mHomeRadioButton:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 553
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    invoke-virtual {p1, v3}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    .line 554
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    invoke-virtual {p1, v4}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setAlpha(F)V

    .line 555
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const v0, -0x19191a

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setBackgroundColor(I)V

    .line 558
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setListViewSize(I)V
    .locals 2

    if-lez p1, :cond_0

    mul-int/lit8 p1, p1, 0x49

    .line 599
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(I)I

    move-result p1

    const/16 v0, 0xc

    .line 600
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 602
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 603
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eq v1, p1, :cond_1

    .line 604
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 605
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpHistoryListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpHistoryListView:Landroid/widget/ListView;

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$8;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setUpdateAvgLabel(Z)V
    .locals 9

    .line 344
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAvgValue()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 345
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAvgValue()[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 346
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAvgValue()[F

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    if-eqz p1, :cond_0

    const/16 p1, 0x4e

    const/16 v0, 0x8a

    const/16 v2, 0xf9

    .line 356
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSysAvgValue:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDiaAvgValue:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseAvgValue:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSysAvgValue:Landroid/widget/TextView;

    sget v5, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_avg_ps:I

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "%.1f"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDiaAvgValue:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_avg_ps:I

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "%.1f"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseAvgValue:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_avg_ps:I

    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x46

    const/16 v0, 0x82

    const/16 v2, 0xf1

    .line 365
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSysAvg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSysAvgValue:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->changeYPos(ILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 366
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDiaAvg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDiaAvgValue:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->changeYPos(ILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 368
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsPulseSwitchOn:Z

    if-eqz p1, :cond_1

    .line 369
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseAvg:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseAvgValue:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseAvg:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseAvgValue:Landroid/widget/TextView;

    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->changeYPos(ILandroid/widget/TextView;Landroid/widget/TextView;)V

    return-void

    .line 373
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseAvg:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseAvgValue:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private shiftTime(I)V
    .locals 5

    .line 735
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 736
    iget-wide v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSetTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 737
    iget v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    if-nez v1, :cond_0

    const/4 v1, 0x6

    .line 738
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 739
    :cond_0
    iget v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 741
    iget-wide v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mSetTime:J

    const v3, 0x240c8400

    mul-int/2addr p1, v3

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 742
    :cond_1
    iget v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 743
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 745
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->displayTime(J)V

    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$SHealthMonitorHistoryActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->doDeleteProcess()V

    return-void
.end method

.method final synthetic lambda$delayedDismissProgressBar$6$SHealthMonitorHistoryActivity()V
    .locals 1

    .line 309
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$14;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic lambda$doDataChange$4$SHealthMonitorHistoryActivity(Ljava/util/List;)V
    .locals 6

    if-nez p1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->delayedDismissProgressBar()V

    return-void

    :cond_0
    const-string v0, "S HealthMonitor - SHealthMonitorHistoryActivity"

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [onChanged] item Count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsNoData:Z

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 255
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 256
    new-instance v4, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v4, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/view/internal/BloodPressureDataListItem;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    invoke-virtual {v3, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->setData(Ljava/util/List;)V

    .line 260
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsNoData:Z

    if-eqz v0, :cond_3

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    iget-boolean v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsPulseSwitchOn:Z

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setData(Ljava/util/List;Z)V

    goto :goto_3

    .line 268
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_5

    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v3, v0

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_4

    .line 272
    new-instance v5, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v5}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 274
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 275
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    iget-boolean v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsPulseSwitchOn:Z

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setData(Ljava/util/List;Z)V

    goto :goto_3

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    iget-boolean v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsPulseSwitchOn:Z

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setData(Ljava/util/List;Z)V

    .line 281
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    iget v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodMode:I

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->setFullTimeView(Z)V

    .line 282
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$15;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$15;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->invalidateOptionsMenu()V

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->delayedDismissProgressBar()V

    const-string p0, "S HealthMonitor - SHealthMonitorHistoryActivity"

    const-string p1, " [onChanged] end "

    .line 296
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$doDelete$14$SHealthMonitorHistoryActivity(Landroid/view/View;)V
    .locals 1

    .line 761
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_deleting_dot:I

    .line 762
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 761
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->showProgressbar(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 763
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$12;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method final synthetic lambda$doDeleteProcess$9$SHealthMonitorHistoryActivity()V
    .locals 5

    .line 564
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->getDeleteData()Ljava/util/ArrayList;

    move-result-object v0

    .line 565
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->deleteBpData(Ljava/util/ArrayList;)I

    move-result v1

    const-string v2, "S HealthMonitor - SHealthMonitorHistoryActivity"

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [setNeutralButtonClickListener] delete row count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 568
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    .line 569
    new-instance v3, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    const-string v4, "com.samsung.health.bp"

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->insertDeleteTableData(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    const-string v1, "S HealthMonitor - SHealthMonitorHistoryActivity"

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [setNeutralButtonClickListener] insert delete table : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getAllDeleteTableDataSync()Ljava/util/List;

    move-result-object v0

    .line 574
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    const-string v2, "S HealthMonitor - SHealthMonitorHistoryActivity"

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [setNeutralButtonClickListener] delete : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 577
    :cond_1
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$13;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic lambda$initView$1$SHealthMonitorHistoryActivity(Landroid/view/View;IIII)V
    .locals 0

    .line 199
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsWarningVisible:Z

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mWarningLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 202
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsWarningVisible:Z

    :cond_0
    return-void
.end method

.method final synthetic lambda$new$11$SHealthMonitorHistoryActivity()V
    .locals 4

    .line 727
    monitor-enter p0

    :try_start_0
    const-string v0, "S HealthMonitor - SHealthMonitorHistoryActivity"

    const-string v1, " [mShiftPrevTimeRunnable] start : "

    .line 728
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftStartTime:J

    iget-wide v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mShiftEndTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->loadHistoryData(JJ)V

    .line 730
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic lambda$null$3$SHealthMonitorHistoryActivity(Ljava/util/List;)V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNoDataView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsNoData:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpHistoryListView:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsNoData:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 285
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsNoData:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setUpdateAvgLabel(Z)V

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setListViewSize(I)V

    .line 287
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    if-eqz p1, :cond_2

    .line 288
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 290
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method final synthetic lambda$null$5$SHealthMonitorHistoryActivity()V
    .locals 1

    const/4 v0, 0x1

    .line 310
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setChartVisibility(Z)V

    .line 311
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->dismissProgressbar()V

    return-void
.end method

.method final synthetic lambda$null$8$SHealthMonitorHistoryActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 578
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setDeleteMode(Z)V

    .line 579
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    if-eqz v0, :cond_0

    .line 580
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBpChart:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 582
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->dismissProgressbar()V

    return-void
.end method

.method final synthetic lambda$onCreate$0$SHealthMonitorHistoryActivity()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->initView()V

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->initActionBar()V

    const-string p0, "S HealthMonitor - SHealthMonitorHistoryActivity"

    const-string v0, "onCreate() - second End"

    .line 122
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$setListViewSize$10$SHealthMonitorHistoryActivity()V
    .locals 1

    .line 608
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_home_actionbar_radio_layout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 590
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setDeleteMode(Z)V

    return-void

    .line 593
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 472
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsWarningVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mWarningLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 475
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsWarningVisible:Z

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPulseSwitchLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    if-nez v0, :cond_1

    .line 478
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsPulseSwitchOn:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsPulseSwitchOn:Z

    .line 479
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsPulseSwitchOn:Z

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setChartPulseOn(Z)V

    .line 480
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setBottomButton()V

    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    if-ne p1, v0, :cond_2

    .line 482
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->doDelete()V

    return-void

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mHomeDeleteLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mHomeRadioButton:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 485
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mHomeRadioButton:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->setAllCheck(Z)V

    .line 486
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mDeleteModeItemClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodButton:[Landroid/widget/Button;

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodButton:[Landroid/widget/Button;

    aget-object v0, v0, v2

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPeriodButton:[Landroid/widget/Button;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    if-nez v0, :cond_5

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setChangeButtonEnable(I)V

    return-void

    .line 489
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mPrevButton:Landroid/widget/LinearLayout;

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mNextButton:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    if-nez v0, :cond_7

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->shiftTime(I)V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$style;->SHealthMonitorThemeLightNoDividerGrayUp:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setTheme(I)V

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setSetDefaultMenuColor(Z)V

    .line 113
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "S HealthMonitor - SHealthMonitorHistoryActivity"

    const-string v0, "onCreate() - Start"

    .line 114
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_history_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setContentView(I)V

    .line 118
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "S HealthMonitor - SHealthMonitorHistoryActivity"

    const-string p1, "onCreate() - End"

    .line 124
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsDeleteMode:Z

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$menu;->shealth_monitor_history_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mAdapter:Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/BpHistoryAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 132
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_history_menu_delete:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 134
    :cond_0
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_history_menu_delete:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 138
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onNothingSelected()V
    .locals 1

    const-string p0, "S HealthMonitor - SHealthMonitorHistoryActivity"

    const-string v0, " Nothing selected."

    .line 438
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->finish()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_history_menu_delete:I

    if-ne v0, v1, :cond_2

    .line 146
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsWarningVisible:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mWarningLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->mIsWarningVisible:Z

    :cond_1
    const/4 v0, 0x1

    .line 151
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->setDeleteMode(Z)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_history_menu_share:I

    if-ne v0, v1, :cond_3

    .line 153
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;

    const-string v1, "SELECT_PERIOD_DIALOG_TAG"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfGenHelper;->showSelectPeriodDialog(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_history_menu_re_calibrate:I

    if-ne v0, v1, :cond_4

    const-string v0, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpHistoryRecalibrate"

    .line 155
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassName(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 0

    .line 417
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "S HealthMonitor - SHealthMonitorHistoryActivity"

    const-string v1, "onResume() - Start"

    .line 410
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onResume()V

    const-string p0, "S HealthMonitor - SHealthMonitorHistoryActivity"

    const-string v0, "onResume() - End"

    .line 412
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1

    const-string p0, "S HealthMonitor - SHealthMonitorHistoryActivity"

    .line 423
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Entry selected"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

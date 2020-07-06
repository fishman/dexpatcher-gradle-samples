.class public Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;
.super Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;
.source "SHealthMonitorBpTopCard.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorBpCard"


# instance fields
.field private mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

.field private mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

.field private mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

.field private mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

.field private mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

.field private mIsExpireButIntroCard:Z

.field private mIsRestrictStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsExpireButIntroCard:Z

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsRestrictStatus:Z

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    .line 166
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 188
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 210
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 229
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsExpireButIntroCard:Z

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsRestrictStatus:Z

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    .line 166
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 188
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 210
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 229
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsExpireButIntroCard:Z

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsRestrictStatus:Z

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    .line 166
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 188
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 210
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 229
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsExpireButIntroCard:Z

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsRestrictStatus:Z

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    .line 166
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 188
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 210
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 229
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)Landroid/widget/LinearLayout;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private initView()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 117
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_top_card:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 118
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->proto_type_root:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    return-void
.end method

.method private launchPrerequisiteScreen(I)V
    .locals 3

    const-string v0, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpCalibrateFirstPrerequisiteActivity"

    .line 252
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 253
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 254
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "BP_CALIBRATE_FIRST_PREREQUISITE_STEP_SCENARIO"

    .line 255
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorBpCard"

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Exception : class not found = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showCalibrationReminderCard(I)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    if-eqz v0, :cond_0

    .line 169
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;->setRemainDays(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    .line 173
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 174
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 175
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 176
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x1

    .line 177
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setTopIntroCardVisibility(Z)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;->setContent(I)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showContinueCalibrationCard(II)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    if-eqz v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;->setRemainDays(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    .line 236
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 237
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 238
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 239
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x1

    .line 240
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setTopIntroCardVisibility(Z)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 243
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;->setContent(II)V

    .line 244
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$8;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$8;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$9;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$9;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showExpiredCalibrationCard()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    .line 197
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 198
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 199
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 200
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x1

    .line 201
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setTopIntroCardVisibility(Z)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 204
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$5;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showExpiredContinueCalibrationCard(II)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    .line 216
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 217
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 218
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 219
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x1

    .line 220
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setTopIntroCardVisibility(Z)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 223
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setContent(II)V

    .line 224
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$6;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$7;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$7;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showIntroCard()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getTopIntroCardVisibility()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsRestrictStatus:Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->checkCancelButton(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 146
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 147
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 148
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getTopIntroCardVisibility()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsRestrictStatus:Z

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->getCancelButton()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mRoot:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 266
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

    .line 267
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x4000000

    .line 268
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorBpCard"

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " Exception : class not found = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkStateAndUpdateView(Z)V
    .locals 4

    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsRestrictStatus:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->showIntroCard()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 71
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRecalibrationStateWithReLoad()Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRecalibrationState()Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    move-result-object p1

    .line 76
    :goto_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$2;->$SwitchMap$com$samsung$android$shealthmonitor$bp$control$BpReCalibrationController$ReCalibrationState:[I

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 107
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->showIntroCard()V

    return-void

    .line 104
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->showIntroCard()V

    return-void

    .line 97
    :pswitch_2
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsExpireButIntroCard:Z

    if-nez p1, :cond_3

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->showExpiredCalibrationCard()V

    return-void

    .line 94
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRemainDay()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->showCalibrationReminderCard(I)V

    return-void

    .line 78
    :pswitch_4
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsExpireButIntroCard:Z

    if-nez p1, :cond_3

    .line 81
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRemainDay()I

    move-result p1

    .line 82
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRemainDayOfCalibration()I

    move-result v0

    const-string v1, "S HealthMonitor - SHealthMonitorBpCard"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remainDay : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " remainDayOfCalibration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_2

    .line 86
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x4

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->showExpiredContinueCalibrationCard(II)V

    goto :goto_2

    .line 89
    :cond_2
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x4

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->showContinueCalibrationCard(II)V

    return-void

    .line 110
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->showIntroCard()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clearView()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->removeAllViews()V

    .line 286
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIntroCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->removeAllViews()V

    .line 290
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;->removeAllViews()V

    .line 294
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationReminderCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;->removeAllViews()V

    .line 298
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCaliReminderWithTextBtnTopCard;

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->removeAllViews()V

    .line 302
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mCalibrationExpiredContinueCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;

    .line 304
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->removeAllViews()V

    return-void
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->initView()V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->checkStateAndUpdateView(Z)V

    return-void
.end method

.method final synthetic lambda$showCalibrationReminderCard$2$SHealthMonitorBpTopCard(Landroid/view/View;)V
    .locals 1

    const-string p1, "bp"

    const-string v0, "SHealthMonitorBpHistoryRecalibrate"

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$showCalibrationReminderCard$3$SHealthMonitorBpTopCard(Landroid/view/View;)V
    .locals 1

    const-string p1, "bp"

    const-string v0, "SHealthMonitorBpHistoryRecalibrate"

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$showContinueCalibrationCard$8$SHealthMonitorBpTopCard(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 244
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->launchPrerequisiteScreen(I)V

    return-void
.end method

.method final synthetic lambda$showContinueCalibrationCard$9$SHealthMonitorBpTopCard(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 245
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->launchPrerequisiteScreen(I)V

    return-void
.end method

.method final synthetic lambda$showExpiredCalibrationCard$4$SHealthMonitorBpTopCard(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0xd

    .line 204
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->launchPrerequisiteScreen(I)V

    return-void
.end method

.method final synthetic lambda$showExpiredCalibrationCard$5$SHealthMonitorBpTopCard(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0xd

    .line 205
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->launchPrerequisiteScreen(I)V

    return-void
.end method

.method final synthetic lambda$showExpiredContinueCalibrationCard$6$SHealthMonitorBpTopCard(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0xd

    .line 224
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->launchPrerequisiteScreen(I)V

    return-void
.end method

.method final synthetic lambda$showExpiredContinueCalibrationCard$7$SHealthMonitorBpTopCard(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0xd

    .line 225
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->launchPrerequisiteScreen(I)V

    return-void
.end method

.method final synthetic lambda$showIntroCard$0$SHealthMonitorBpTopCard(Landroid/view/View;)V
    .locals 1

    const-string p1, "bp"

    const-string v0, "SHealthMonitorBpPropositionActivity"

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$showIntroCard$1$SHealthMonitorBpTopCard(Landroid/view/View;)V
    .locals 1

    const-string p1, "bp"

    const-string v0, "SHealthMonitorBpPropositionActivity"

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public needToRemoveCard()Z
    .locals 1

    .line 51
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRecalibrationState()Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    move-result-object p0

    .line 52
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_NONE:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->checkStateAndUpdateView(Z)V

    return-void
.end method

.method public setIsExpireButIntroCard(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsExpireButIntroCard:Z

    return-void
.end method

.method public setIsRestrictStatus(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->mIsRestrictStatus:Z

    return-void
.end method

.method public updateView(I)V
    .locals 0

    const/4 p1, 0x1

    .line 124
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->checkStateAndUpdateView(Z)V

    return-void
.end method

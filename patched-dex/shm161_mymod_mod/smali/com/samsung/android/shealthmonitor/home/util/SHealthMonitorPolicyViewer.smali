.class public Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer;
.super Ljava/lang/Object;
.source "SHealthMonitorPolicyViewer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorPolicyViewer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 35
    invoke-static {}, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer;->showPrivacyCollectionPolicy()V

    return-void
.end method

.method private static readPDF(Ljava/lang/String;)V
    .locals 6

    .line 39
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 45
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x400

    .line 48
    :try_start_2
    new-array v1, v1, [B

    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    .line 51
    invoke-virtual {v3, v1, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 53
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.shealthmonitor.fileprovider"

    .line 54
    invoke-static {v4, v2}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->getUriForFile(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "application/pdf"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x4000001

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    .line 62
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 69
    :catch_0
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    :catch_2
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v1

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v0, v1

    move-object v3, v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    :try_start_5
    const-string v2, "S HealthMonitor - SHealthMonitorPolicyViewer"

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to copy asset file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_2

    .line 62
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_2
    if-eqz v3, :cond_3

    .line 69
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    return-void

    :cond_3
    return-void

    :catchall_2
    move-exception p0

    :goto_2
    if-eqz v0, :cond_4

    .line 62
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_4
    if-eqz v3, :cond_5

    .line 69
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 74
    :catch_8
    :cond_5
    throw p0
.end method

.method public static setAnnotationForTncAndPrivacy(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 11

    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannedString;->length()I

    move-result v1

    const-class v2, Landroid/text/Annotation;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    .line 111
    array-length v2, v1

    if-gtz v2, :cond_1

    return-void

    .line 114
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    .line 116
    invoke-virtual {v6}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "link"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 117
    new-instance v7, Lcom/samsung/android/shealthmonitor/util/CustomTypefaceSpan;

    const-string v8, ""

    sget v9, Lcom/samsung/android/shealthmonitor/base/R$font;->samsungone_700_normal:I

    invoke-static {p0, v9}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/shealthmonitor/util/CustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 118
    invoke-virtual {v0, v6}, Landroid/text/SpannedString;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0, v6}, Landroid/text/SpannedString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    const/16 v10, 0x21

    .line 117
    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 119
    new-instance v7, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer$1;

    invoke-direct {v7, v6}, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer$1;-><init>(Landroid/text/Annotation;)V

    .line 136
    invoke-virtual {v0, v6}, Landroid/text/SpannedString;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v6}, Landroid/text/SpannedString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 135
    invoke-virtual {v2, v7, v8, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 137
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 138
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorPolicyViewer"

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " [setAnnotationForTncAndPrivacy] Error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorPolicyViewer"

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " [setAnnotationForTncAndPrivacy] Exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static showPrivacyCollectionPolicy()V
    .locals 2

    .line 96
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->isKoreanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "korean_agree_privacy_policy.pdf"

    .line 97
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer;->readPDF(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorPrivacyPolicyActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showPrivacyPolicy()V
    .locals 2

    .line 87
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->isKoreanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "korean_privacy_policy.pdf"

    .line 88
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer;->readPDF(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorPrivacyPolicyActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showTncPolicy()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->isKoreanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "korean_tcn.pdf"

    .line 79
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer;->readPDF(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorTermsAndConditionActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

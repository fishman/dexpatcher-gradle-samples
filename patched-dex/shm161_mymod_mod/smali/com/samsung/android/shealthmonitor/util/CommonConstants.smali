.class public Lcom/samsung/android/shealthmonitor/util/CommonConstants;
.super Ljava/lang/Object;
.source "CommonConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;
    }
.end annotation


# static fields
.field public static ACTION_CHECK_WEARABLE_SETUP:Ljava/lang/String; = "com.samsung.android.shealthmonitor.common.check_wearable_setup"

.field public static ACTION_TNC_SYNC:Ljava/lang/String; = "com.samsung.android.shealthmonitor.common.tnc_sync"

.field public static COMMON_MAIN_VIEW_FORCE_REFRESH:Ljava/lang/String; = "com.samsung.android.shealthmonitor.common.force_refresh"

.field public static URL_CONTACT_US:Ljava/lang/String; = "https://www.samsung.com/us/support/contact/"

.field public static URL_GALAXY_WATCH_SITE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/CommonConstants;->getWatchSite()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants;->URL_GALAXY_WATCH_SITE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getWatchSite()Ljava/lang/String;
    .locals 3

    const-string v0, "https://www.samsung.com/global/galaxy/galaxy-watch-active2/"

    .line 31
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KR"

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "https://www.samsung.com/sec/wearables/galaxy-watch-active2-sm-r835/SM-R835FSKASKO/"

    return-object v0

    :cond_0
    return-object v0
.end method

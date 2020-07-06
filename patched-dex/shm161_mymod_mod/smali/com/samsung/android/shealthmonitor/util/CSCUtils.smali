.class public final Lcom/samsung/android/shealthmonitor/util/CSCUtils;
.super Ljava/lang/Object;
.source "CSCUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - CSCUtils"

.field private static sCountryCode:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 6

    .line 17
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->sCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->sCountryCode:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SemSystemProperties"

    .line 22
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCountryIso"

    .line 23
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->sCountryCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v1, "android.os.SystemProperties"

    .line 26
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    .line 27
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.csc.countryiso_code"

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->sCountryCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "S HealthMonitor - CSCUtils"

    const-string v1, " [getCountryCode] Fail to read CountryCode from SEP & Sdl"

    .line 29
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->sCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->sCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static isKoreanModel()Z
    .locals 2

    const-string v0, "KR"

    .line 49
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUSModel()Z
    .locals 2

    .line 40
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/CSCUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KR"

    .line 42
    invoke-virtual {v1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

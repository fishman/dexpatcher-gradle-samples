.class public final Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;
.super Ljava/lang/Object;
.source "StubApiWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$StubApi;,
        Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$DeviceType;
    }
.end annotation


# static fields
.field private static final CONN_TIMEOUT:I = 0x2710

.field private static PB:I = 0x0

.field public static final RESULT_CODE_BLOCKED_BY_FORCE:Ljava/lang/String; = "-1"

.field public static final RESULT_CODE_ERROR_ANONYMOUS:Ljava/lang/String; = "2000"

.field public static final RESULT_CODE_ERROR_EMPTY_PARAMETER:Ljava/lang/String; = "1000"

.field public static final RESULT_CODE_ERROR_NOT_SUPPORTED_COUNTRY:Ljava/lang/String; = "1002"

.field public static final RESULT_CODE_NEED_UPDATE:Ljava/lang/String; = "2"

.field public static final RESULT_CODE_NOT_FOUND_APPLICATION:Ljava/lang/String; = "0"

.field public static final RESULT_CODE_NOT_NEED_UPDATE:Ljava/lang/String; = "1"

.field public static final RESULT_CODE_SERVER_MAINTENANCE:Ljava/lang/String; = "8800"

.field private static final ROOT_URI:Ljava/lang/String; = "vas.samsungapps.com/"

.field private static final TAG:Ljava/lang/String; = "StubApiWrapper"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mCsc:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mGOSVersion:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mSdkVer:I

.field private mStubApi:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$StubApi;

.field private mSystemId:Ljava/lang/String;

.field private mVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mStubApi:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$StubApi;

    .line 61
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mAppId:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mVersionCode:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mDeviceId:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mMcc:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mMnc:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mCsc:Ljava/lang/String;

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mSdkVer:I

    .line 69
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mSystemId:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mGOSVersion:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->TAG:Ljava/lang/String;

    const-string v1, "SamsungAppsConnectionManager()"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mStubApi:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$StubApi;

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$StubApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$StubApi;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mStubApi:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$StubApi;

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->loadMccMnc()V

    return-void
.end method

.method private getCsc()Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string p0, "android.os.SystemProperties"

    .line 194
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "get"

    const/4 v1, 0x1

    .line 195
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ro.csc.sales_code"

    aput-object v2, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "FAIL"

    :goto_0
    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "NONE"

    :cond_1
    return-object p0
.end method

.method private getRetrofit()Lretrofit2/Retrofit;
    .locals 4

    .line 154
    new-instance p0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {p0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 155
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {p0, v0}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 157
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v1, 0x1

    .line 158
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    .line 162
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    .line 166
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://vas.samsungapps.com/"

    .line 167
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 1046
    new-instance v1, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    invoke-static {v1}, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->createNonStrict(Lorg/simpleframework/xml/Serializer;)Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 169
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method private loadMccMnc()V
    .locals 3

    .line 207
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 208
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mMcc:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mMnc:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getLatestVersionForMobile(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->TAG:Ljava/lang/String;

    const-string v1, "getLatestMobileVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public final getLatestVersionForWearable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;",
            ">;"
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->TAG:Ljava/lang/String;

    const-string v1, "getLatestVersionForWearable() start"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;-><init>(Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method final synthetic lambda$getLatestVersionForMobile$0$StubApiWrapper(Ljava/lang/String;Lio/reactivex/SingleEmitter;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 90
    new-instance v1, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$1;

    move-object/from16 v2, p2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$1;-><init>(Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;Lio/reactivex/SingleEmitter;)V

    .line 102
    iget-object v2, v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mStubApi:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$StubApi;

    .line 105
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->getMobileAppVersionCode()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->getMobileDeviceId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mMcc:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mMnc:Ljava/lang/String;

    .line 109
    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->getCsc()Ljava/lang/String;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v11, v3, v11

    sget v14, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->PB:I

    const/4 v13, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p1

    .line 102
    invoke-interface/range {v2 .. v14}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$StubApi;->getLatestVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    .line 113
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method final synthetic lambda$getLatestVersionForWearable$1$StubApiWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/SingleEmitter;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 124
    new-instance v1, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$2;

    move-object/from16 v2, p6

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$2;-><init>(Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;Lio/reactivex/SingleEmitter;)V

    .line 136
    iget-object v2, v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mStubApi:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$StubApi;

    iget-object v7, v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mMcc:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->mMnc:Ljava/lang/String;

    .line 143
    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->getCsc()Ljava/lang/String;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v11, v3, v5

    sget v14, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->PB:I

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v13, p5

    .line 136
    invoke-interface/range {v2 .. v14}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$StubApi;->getLatestVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    .line 147
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 148
    sget-object v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->TAG:Ljava/lang/String;

    const-string v1, "getLatestVersionForWearable() end "

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/samsung/android/sdk/accessory/SAService;
.super Landroid/app/Service;
.source "SAService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;,
        Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;
    }
.end annotation


# static fields
.field private static final REQUEST_NUM_LOCK:Ljava/lang/Object;

.field private static final REQUEST_TYPE_CONNECTION:I = 0x1

.field private static final REQUEST_TYPE_MESSAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAService"

.field private static isAboveO:Z

.field private static mRequestNum:I


# instance fields
.field private mBinder:Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAService;->REQUEST_NUM_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;-><init>(Lcom/samsung/android/sdk/accessory/SAService;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAService;->mBinder:Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/accessory/SAService;ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAService;->onAgentCreated(ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/accessory/SAService;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAService;->finishService()V

    return-void
.end method

.method private finishService()V
    .locals 5

    .line 156
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAService;->REQUEST_NUM_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "[SA_SDK]SAService"

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished. Remained request : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    sput v3, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget v1, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:I

    if-gtz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/sdk/accessory/SAService;->isAboveO:Z

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/accessory/SAService;->stopForeground(Z)V

    .line 161
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleConnectionRequest(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "agentImplclass"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p0}, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;-><init>(ILandroid/content/Intent;Lcom/samsung/android/sdk/accessory/SAService;)V

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAService;->requestAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;)V

    return-void
.end method

.method private handleMessageReceived(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "agentImplclass"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p0}, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;-><init>(ILandroid/content/Intent;Lcom/samsung/android/sdk/accessory/SAService;)V

    .line 108
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAService;->requestAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;)V

    return-void
.end method

.method private onAgentCreated(ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 113
    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleConnectionRequest(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 115
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleMessageReceived()V

    .line 117
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAService;->finishService()V

    return-void
.end method

.method private requestAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;)V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V

    return-void
.end method

.method private startService()V
    .locals 5

    .line 121
    sget-boolean v0, Lcom/samsung/android/sdk/accessory/SAService;->isAboveO:Z

    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.gear"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.samsung.android.moden"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.samsungpay"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Other Notifications"

    goto :goto_1

    :cond_1
    const-string v0, "ACCESSORY_SDK"

    const-string v1, "ACCESSORY_SDK_CHANNEL_ID"

    const-string v2, "notification"

    .line 137
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/accessory/SAService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v2, :cond_2

    .line 139
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    if-nez v3, :cond_2

    .line 141
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 142
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "f.NOTIFCATION_DELAYS_CHANNEL_ID"

    .line 147
    :goto_1
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x3e7

    .line 151
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/accessory/SAService;->startForeground(ILandroid/app/Notification;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAService;->mBinder:Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAService;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 44
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 45
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    if-lt p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    sput-boolean p0, Lcom/samsung/android/sdk/accessory/SAService;->isAboveO:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 50
    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAService;->REQUEST_NUM_LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 51
    :try_start_1
    sput v0, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:I

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 96
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleLowMemory()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAService;->startService()V

    const-string p3, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    .line 73
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 74
    sget-object p3, Lcom/samsung/android/sdk/accessory/SAService;->REQUEST_NUM_LOCK:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    const-string p2, "[SA_SDK]SAService"

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received incoming connection indication : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAService;->handleConnectionRequest(Landroid/content/Intent;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 76
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const-string p3, "com.samsung.accessory.action.MESSAGE_RECEIVED"

    .line 78
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 79
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAService;->REQUEST_NUM_LOCK:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    const-string p3, "[SA_SDK]SAService"

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received message received indication : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAService;->handleMessageReceived(Landroid/content/Intent;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 81
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAService;->stopSelf()V

    .line 63
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

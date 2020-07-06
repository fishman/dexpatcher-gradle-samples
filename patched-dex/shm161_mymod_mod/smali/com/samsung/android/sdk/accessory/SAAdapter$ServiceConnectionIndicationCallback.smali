.class final Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;
.super Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;
.source "SAAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceConnectionIndicationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAdapter;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SAAdapter$1;)V
    .locals 0

    .line 773
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter;)V

    return-void
.end method

.method private isAppRestricted(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "activity"

    .line 871
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 872
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    if-eqz p0, :cond_0

    .line 873
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isBackgroundRestricted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized isValidImplClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 854
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->getDefaultInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 856
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->fetchServicesDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 858
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceImpl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 862
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fetch service profile description failed !!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 865
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "config  util default instance  creation failed !!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 851
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final onServiceConnectionRequested(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "peerAgent"

    .line 777
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    .line 779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 781
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 782
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 783
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const-string v1, "transactionId"

    const-wide/16 v4, 0x0

    .line 794
    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v4, "agentId"

    .line 795
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "agentImplclass"

    .line 796
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 798
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Implementation class not available in intent. Ignoring request"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 803
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 805
    iget-object v6, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v6}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->isValidImplClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    return-void

    .line 810
    :cond_1
    const-class v6, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    .line 812
    iget-object v6, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v6}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v7}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 813
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 814
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_2

    if-lt v6, v8, :cond_2

    const/4 v3, 0x1

    .line 816
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "transactionId"

    .line 817
    invoke-virtual {v6, v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "agentId"

    .line 818
    invoke-virtual {v6, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "peerAgent"

    .line 819
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "agentImplclass"

    .line 820
    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 823
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/accessory/SAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 825
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz v3, :cond_4

    .line 831
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_1

    .line 833
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_6

    .line 837
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->isAppRestricted(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 838
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "App is restricted in background. Cannot start a service for connection request."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 841
    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Agent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found. Check Accessory Service XML for serviceImpl attribute"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p0

    .line 847
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p0

    .line 845
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Agent Impl class not found!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 786
    :cond_7
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to obtain parcel"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 790
    :cond_8
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "marshalled accessory byte[] is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

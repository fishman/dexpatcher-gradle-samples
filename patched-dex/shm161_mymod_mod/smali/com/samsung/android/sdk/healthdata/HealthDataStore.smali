.class public Lcom/samsung/android/sdk/healthdata/HealthDataStore;
.super Ljava/lang/Object;
.source "HealthDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;,
        Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;,
        Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;
    }
.end annotation


# static fields
.field private static final CLIENT_VERSION:I = 0xf55c8

.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field private static final LOG_TAG:Ljava/lang/String; = "HealthDataStore"

.field private static final MESSAGE_DELAY_MSEC:I = 0x2

.field private static final REL_PLATFORM_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.shealth"

.field private static sPackageName:Ljava/lang/String;


# instance fields
.field private final mConnectionListener:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

.field private mInterface:Lcom/samsung/android/sdk/healthdata/IHealth;

.field private mIsSupportedDevice:Ljava/lang/Boolean;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mTimeOut:J

.field private mWaitForInitResultHolder:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;)V
    .locals 2

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mIsSupportedDevice:Ljava/lang/Boolean;

    const-wide/32 v0, 0xea60

    .line 170
    iput-wide v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mTimeOut:J

    .line 420
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$1;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mServiceConnection:Landroid/content/ServiceConnection;

    const-string v0, "context"

    .line 233
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    const-string p1, "connection listener"

    .line 234
    invoke-static {p2, p1}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mConnectionListener:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;

    .line 236
    sget-object p1, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->sPackageName:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 237
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->sPackageName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Lcom/samsung/android/sdk/healthdata/IHealth;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->handleOnServiceConnected(Lcom/samsung/android/sdk/healthdata/IHealth;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Lcom/samsung/android/sdk/healthdata/IHealth;)Lcom/samsung/android/sdk/healthdata/IHealth;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mInterface:Lcom/samsung/android/sdk/healthdata/IHealth;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mConnectionListener:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Lcom/samsung/android/sdk/healthdata/HealthResultHolder;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mWaitForInitResultHolder:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->nullifyInitResultHolder()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/healthdata/HealthDataStore;I)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->fireConnectionFailedEvent(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Ljava/lang/Boolean;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mIsSupportedDevice:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mIsSupportedDevice:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Landroid/content/Context;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkAndNotifyPlatformSignature()Z
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x2

    .line 320
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.shealth"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 322
    iget-object v4, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.shealth"

    .line 323
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    const/16 v4, 0x8

    .line 326
    :try_start_1
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->checkSignature([Landroid/content/pm/Signature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    invoke-virtual {v3, v4, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    return v0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "HealthDataStore"

    const-string v6, "Failed to check signature"

    .line 331
    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    invoke-virtual {v3, v4, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_1
    move-exception p0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Context is not valid. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :catch_2
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    return v0
.end method

.method private checkInternetPermission()Z
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 604
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static checkSignature([Landroid/content/pm/Signature;)Z
    .locals 9

    .line 173
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308201e53082014ea00302010202044f54468b300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3132303330353034353232375a170d3432303232363034353232375a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d00308189028181008a53be36d02befe1d152724281630bd1c42eff0edf5fdca8eb944f536ab3f54dca9b22cfb421b37706a4ad259101815723202b359250cf6c59905032798273462bfa3f9f1881f7475ee5b25849edefac81085815f42383a44cb2be1bfd5c1f049ef42f5818f35fe0b1131c769cee347d558395a5fa87c3d425b2b9c819cf91870203010001300d06092a864886f70d0101050500038181000512992268a01e0941481931f3f9b6647fbe25ee0bc9648f35d56c55f8cfa6c935fb3d435125fd60ef566769ac7e64fe2823409461ca7a04570c43baaab3fb877bf3a6a8dd9ef7e69944f65b0e5e36f2ac2bf085fdeda063898855ea2ce84c60655d824844fe1659a77c12604c3fb84d41df6f1a7705a1b9962ac2fdc9933122"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308204a830820390a003020102020900936eacbe07f201df300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303232393031333334365a170d3335303731373031333334365a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d6931904dec60b24b1edc762e0d9d8253e3ecd6ceb1de2ff068ca8e8bca8cd6bd3786ea70aa76ce60ebb0f993559ffd93e77a943e7e83d4b64b8e4fea2d3e656f1e267a81bbfb230b578c20443be4c7218b846f5211586f038a14e89c2be387f8ebecf8fcac3da1ee330c9ea93d0a7c3dc4af350220d50080732e0809717ee6a053359e6a694ec2cb3f284a0a466c87a94d83b31093a67372e2f6412c06e6d42f15818dffe0381cc0cd444da6cddc3b82458194801b32564134fbfde98c9287748dbf5676a540d8154c8bbca07b9e247553311c46b9af76fdeeccc8e69e7c8a2d08e782620943f99727d3c04fe72991d99df9bae38a0b2177fa31d5b6afee91f020103a381fc3081f9301d0603551d0e04160414485900563d272c46ae118605a47419ac09ca8c113081c90603551d230481c13081be8014485900563d272c46ae118605a47419ac09ca8c11a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900936eacbe07f201df300c0603551d13040530030101ff300d06092a864886f70d010105050003820101007aaf968ceb50c441055118d0daabaf015b8a765a27a715a2c2b44f221415ffdace03095abfa42df70708726c2069e5c36eddae0400be29452c084bc27eb6a17eac9dbe182c204eb15311f455d824b656dbe4dc2240912d7586fe88951d01a8feb5ae5a4260535df83431052422468c36e22c2a5ef994d61dd7306ae4c9f6951ba3c12f1d1914ddc61f1a62da2df827f603fea5603b2c540dbd7c019c36bab29a4271c117df523cdbc5f3817a49e0efa60cbd7f74177e7a4f193d43f4220772666e4c4d83e1bd5a86087cf34f2dec21e245ca6c2bb016e683638050d2c430eea7c26a1c49d3760a58ab7f1a82cc938b4831384324bd0401fa12163a50570e684d"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v3, Landroid/content/pm/Signature;

    const-string v4, "308204a830820390a003020102020900b3998086d056cffa300d06092a864886f70d0101040500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303431353232343035305a170d3335303930313232343035305a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009c780592ac0d5d381cdeaa65ecc8a6006e36480c6d7207b12011be50863aabe2b55d009adf7146d6f2202280c7cd4d7bdb26243b8a806c26b34b137523a49268224904dc01493e7c0acf1a05c874f69b037b60309d9074d24280e16bad2a8734361951eaf72a482d09b204b1875e12ac98c1aa773d6800b9eafde56d58bed8e8da16f9a360099c37a834a6dfedb7b6b44a049e07a269fccf2c5496f2cf36d64df90a3b8d8f34a3baab4cf53371ab27719b3ba58754ad0c53fc14e1db45d51e234fbbe93c9ba4edf9ce54261350ec535607bf69a2ff4aa07db5f7ea200d09a6c1b49e21402f89ed1190893aab5a9180f152e82f85a45753cf5fc19071c5eec827020103a381fc3081f9301d0603551d0e041604144fe4a0b3dd9cba29f71d7287c4e7c38f2086c2993081c90603551d230481c13081be80144fe4a0b3dd9cba29f71d7287c4e7c38f2086c299a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900b3998086d056cffa300c0603551d13040530030101ff300d06092a864886f70d01010405000382010100572551b8d93a1f73de0f6d469f86dad6701400293c88a0cd7cd778b73dafcc197fab76e6212e56c1c761cfc42fd733de52c50ae08814cefc0a3b5a1a4346054d829f1d82b42b2048bf88b5d14929ef85f60edd12d72d55657e22e3e85d04c831d613d19938bb8982247fa321256ba12d1d6a8f92ea1db1c373317ba0c037f0d1aff645aef224979fba6e7a14bc025c71b98138cef3ddfc059617cf24845cf7b40d6382f7275ed738495ab6e5931b9421765c491b72fb68e080dbdb58c2029d347c8b328ce43ef6a8b15533edfbe989bd6a48dd4b202eda94c6ab8dd5b8399203daae2ed446232e4fe9bd961394c6300e5138e3cfd285e6e4e483538cb8b1b357"

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance v4, Landroid/content/pm/Signature;

    const-string v5, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    invoke-direct {v4, v5}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x5

    .line 184
    new-array v5, v5, [Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/4 v8, 0x2

    aput-object v1, v5, v8

    const/4 v1, 0x3

    aput-object v2, v5, v1

    const/4 v1, 0x4

    aput-object v3, v5, v1

    .line 186
    new-array v1, v8, [Landroid/content/pm/Signature;

    aput-object v0, v1, v6

    aput-object v4, v1, v7

    .line 190
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "HealthDataStore"

    const-string v1, " SIGNATURES_ENG "

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 197
    :cond_1
    array-length v0, p0

    move v2, v6

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    .line 198
    array-length v4, v1

    move v5, v6

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v8, v1, v5

    .line 199
    invoke-virtual {v8, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string p0, "HealthDataStore"

    const-string v0, " signature matched "

    .line 200
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_4
    array-length v0, p0

    if-lez v0, :cond_5

    .line 208
    array-length v0, p0

    move v1, v6

    :goto_2
    if-ge v1, v0, :cond_6

    aget-object v2, p0, v1

    .line 209
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "HealthDataStore"

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " signature : "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v3, -0x5

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const-string p0, "HealthDataStore"

    const-string v0, " no signatures"

    .line 214
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v6
.end method

.method private fireConnectionFailedEvent(I)V
    .locals 4

    const-string v0, "HealthDataStore"

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to connect with Health Service fails (error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->checkInternetPermission()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "HealthDataStore"

    const-string v2, "Check SupportedDevice"

    .line 556
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;ILcom/samsung/android/sdk/healthdata/HealthDataStore$1;)V

    new-array p0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 560
    :cond_1
    new-instance v3, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;-><init>(IZ)V

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 564
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->setPackageManager(Landroid/content/pm/PackageManager;)V

    .line 566
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mConnectionListener:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;

    invoke-interface {p0, v3}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;->onConnectionFailed(Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;)V

    return-void
.end method

.method public static getClientPackageName()Ljava/lang/String;
    .locals 1

    .line 248
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getInterface(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/IHealth;
    .locals 1

    if-nez p0, :cond_0

    .line 395
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "HealthDataStore is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mInterface:Lcom/samsung/android/sdk/healthdata/IHealth;

    if-nez v0, :cond_1

    .line 399
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Health data service is not connected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 402
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mInterface:Lcom/samsung/android/sdk/healthdata/IHealth;

    return-object p0
.end method

.method static getPlatformPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.android.app.shealth"

    return-object v0
.end method

.method private getPlatformVersion()I
    .locals 2

    .line 408
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "com.sec.android.app.shealth"

    const/4 v1, 0x0

    .line 411
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 412
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private handleOnServiceConnected(Lcom/samsung/android/sdk/healthdata/IHealth;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "HealthDataStore"

    const-string v1, "Service for HealthDataStore is connected"

    .line 450
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->requestConnectionResult(Lcom/samsung/android/sdk/healthdata/IHealth;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "result"

    .line 456
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    const-wide/16 v2, 0x2

    packed-switch v1, :pswitch_data_0

    const-string p1, "HealthDataStore"

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "HealthConnectionErrorResult code : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->disconnectService()V

    .line 475
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 461
    :pswitch_0
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mInterface:Lcom/samsung/android/sdk/healthdata/IHealth;

    .line 462
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 465
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 466
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->startPinCodeActivity(Landroid/os/Bundle;)V

    .line 470
    :cond_1
    :pswitch_2
    iget-wide v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mTimeOut:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->waitForInitialization(JLcom/samsung/android/sdk/healthdata/IHealth;)V

    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private notifyPlatformStatus(Landroid/content/Intent;)V
    .locals 4

    const-wide/16 v0, 0x2

    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 351
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 352
    iget-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const-string p1, "com.sec.android.app.shealth"

    .line 356
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 357
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_1

    .line 358
    iget-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 360
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 365
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Context is not valid. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :catch_1
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private declared-synchronized nullifyInitResultHolder()V
    .locals 1

    monitor-enter p0

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mWaitForInitResultHolder:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mWaitForInitResultHolder:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    invoke-interface {v0}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder;->cancel()V

    const/4 v0, 0x0

    .line 572
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mWaitForInitResultHolder:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 569
    monitor-exit p0

    throw v0
.end method

.method private requestConnectionResult(Lcom/samsung/android/sdk/healthdata/IHealth;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packageName"

    .line 485
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clientVersion"

    const v2, 0xf55c8

    .line 486
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    const-string v1, "userPasswordInputMode"

    const/4 v3, 0x0

    .line 488
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v1, "userPasswordInputMode"

    const/4 v3, 0x1

    .line 490
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 492
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getPlatformVersion()I

    move-result v1

    const v3, 0x4630c0

    if-lt v1, v3, :cond_1

    .line 493
    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/healthdata/IHealth;->getConnectionResult2(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 495
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Lcom/samsung/android/sdk/healthdata/IHealth;->getConnectionResult(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private startPinCodeActivity(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "HealthDataStore"

    const-string v1, "User password popup is required"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pincode_activity_pkg"

    .line 503
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pincode_activity_class"

    .line 504
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/high16 v2, 0x400000

    .line 505
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "type"

    const/4 v3, 0x1

    .line 506
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "HealthDataStore"

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pop up PinCode activity pkg = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", classname = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "HealthDataStore"

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Only this app cannot access with this "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private waitForInitialization(JLcom/samsung/android/sdk/healthdata/IHealth;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "HealthDataStore"

    const-string v1, "Waiting for initialization of Health framework ..."

    .line 527
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->nullifyInitResultHolder()V

    .line 531
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 532
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->makeResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v1

    .line 533
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2, v0, p1, p2}, Lcom/samsung/android/sdk/healthdata/IHealth;->waitForInit2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;J)V

    .line 534
    iput-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mWaitForInitResultHolder:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    .line 536
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mWaitForInitResultHolder:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthDataStore$2;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$2;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Lcom/samsung/android/sdk/healthdata/IHealth;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder;->setResultListener(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;)V

    .line 548
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mHandler:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    const/4 p3, 0x5

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public connectService()V
    .locals 2

    const-wide/32 v0, 0xea60

    .line 274
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->connectService(J)V

    return-void
.end method

.method public connectService(J)V
    .locals 4

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->checkAndNotifyPlatformSignature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sdk.healthdata.IHealthDataStore"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.shealth"

    .line 302
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x41

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iput-wide p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mTimeOut:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 315
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->notifyPlatformStatus(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p0

    .line 311
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Context is not valid. "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disconnectService()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 378
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->nullifyInitResultHolder()V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "HealthDataStore"

    const-string v0, "disconnectService: Context instance is invalid"

    .line 381
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->mContext:Landroid/content/Context;

    return-object p0
.end method

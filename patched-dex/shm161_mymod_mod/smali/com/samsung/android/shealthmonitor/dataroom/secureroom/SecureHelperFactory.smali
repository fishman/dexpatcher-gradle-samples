.class public Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;
.super Ljava/lang/Object;
.source "SecureHelperFactory.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;


# instance fields
.field private final passphrase:[B

.field private final postKeySql:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;-><init>([BLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;->passphrase:[B

    .line 40
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;->postKeySql:Ljava/lang/String;

    return-void
.end method

.method private create(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 7

    .line 55
    new-instance v6, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;->passphrase:[B

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;->postKeySql:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;[BLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 2

    .line 49
    iget-object v0, p1, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    iget-object v1, p1, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;->create(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

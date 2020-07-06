.class Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    }
.end annotation


# instance fields
.field private final mDelegate:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;->createDelegate(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;->mDelegate:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    return-void
.end method

.method private createDelegate(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    .locals 1

    const/4 p0, 0x1

    .line 37
    new-array p0, p0, [Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    .line 38
    new-instance v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-direct {v0, p1, p2, p0, p3}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 64
    iget-object p0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;->mDelegate:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {p0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->close()V

    return-void
.end method

.method public getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 0

    .line 54
    iget-object p0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;->mDelegate:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {p0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWritableSupportDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 0

    .line 49
    iget-object p0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;->mDelegate:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

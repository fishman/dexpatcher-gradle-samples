.class public Landroid/arch/persistence/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/arch/persistence/room/RoomDatabase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAllowMainThreadQueries:Z

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

.field private mJournalMode:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

.field private final mMigrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

.field private mMigrationStartAndEndVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMigrationsNotRequiredFrom:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mRequireMigration:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    .line 426
    iput-object p2, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    .line 427
    iput-object p3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    .line 428
    sget-object p1, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mJournalMode:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    const/4 p1, 0x1

    .line 429
    iput-boolean p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mRequireMigration:Z

    .line 430
    new-instance p1, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    invoke-direct {p1}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;-><init>()V

    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    return-void
.end method


# virtual methods
.method public build()Landroid/arch/persistence/room/RoomDatabase;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 600
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot provide null context for the database."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 603
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 604
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 608
    :cond_1
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 610
    iget-object v2, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 622
    :cond_3
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    if-nez v0, :cond_4

    .line 623
    new-instance v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    .line 625
    :cond_4
    new-instance v0, Landroid/arch/persistence/room/DatabaseConfiguration;

    iget-object v2, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    iget-object v5, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    iget-object v6, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    iget-boolean v7, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mAllowMainThreadQueries:Z

    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mJournalMode:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    iget-object v8, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    .line 628
    invoke-virtual {v1, v8}, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->resolve(Landroid/content/Context;)Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    move-result-object v8

    iget-boolean v9, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mRequireMigration:Z

    iget-object v10, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/arch/persistence/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroid/arch/persistence/room/RoomDatabase$JournalMode;ZLjava/util/Set;)V

    .line 630
    iget-object p0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    const-string v1, "_Impl"

    invoke-static {p0, v1}, Landroid/arch/persistence/room/Room;->getGeneratedImplementation(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/arch/persistence/room/RoomDatabase;

    .line 631
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/RoomDatabase;->init(Landroid/arch/persistence/room/DatabaseConfiguration;)V

    return-object p0
.end method

.method public fallbackToDestructiveMigration()Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/persistence/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mRequireMigration:Z

    return-object p0
.end method

.method public openHelperFactory(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;)Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;",
            ")",
            "Landroid/arch/persistence/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 442
    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    return-object p0
.end method

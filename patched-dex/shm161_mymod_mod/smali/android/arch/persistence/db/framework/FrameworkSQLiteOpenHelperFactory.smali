.class public final Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 2

    .line 29
    new-instance p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;

    iget-object v0, p1, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    iget-object v1, p1, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-direct {p0, v0, v1, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V

    return-object p0
.end method

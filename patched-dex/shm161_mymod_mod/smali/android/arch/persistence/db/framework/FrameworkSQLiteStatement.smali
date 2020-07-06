.class Landroid/arch/persistence/db/framework/FrameworkSQLiteStatement;
.super Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;
.source "FrameworkSQLiteStatement.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteStatement;


# instance fields
.field private final mDelegate:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 35
    iput-object p1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteStatement;->mDelegate:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public executeInsert()J
    .locals 2

    .line 50
    iget-object p0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteStatement;->mDelegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public executeUpdateDelete()I
    .locals 0

    .line 45
    iget-object p0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteStatement;->mDelegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p0

    return p0
.end method

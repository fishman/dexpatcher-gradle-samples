.class public Lnet/sqlcipher/MatrixCursor;
.super Lnet/sqlcipher/AbstractCursor;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sqlcipher/MatrixCursor$RowBuilder;
    }
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private rowCount:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    .line 61
    invoke-direct {p0, p1, v0}, Lnet/sqlcipher/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lnet/sqlcipher/AbstractCursor;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    .line 44
    iput-object p1, p0, Lnet/sqlcipher/MatrixCursor;->columnNames:[Ljava/lang/String;

    .line 45
    array-length p1, p1

    iput p1, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    if-gtz p2, :cond_0

    const/4 p2, 0x1

    .line 51
    :cond_0
    iget p1, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    mul-int/2addr p1, p2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lnet/sqlcipher/MatrixCursor;)[Ljava/lang/Object;
    .locals 0

    .line 29
    iget-object p0, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    return-object p0
.end method

.method private addRow(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;I)V"
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 160
    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    if-eq v0, v1, :cond_0

    .line 161
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "columnNames.length = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", columnValues.size() = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_0
    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    .line 166
    iget-object p0, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int v2, p2, v1

    .line 168
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2

    .line 174
    iget-object v0, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 180
    :goto_0
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    .line 181
    iget-object p0, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    array-length p1, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_3

    .line 68
    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->mPos:I

    if-gez v0, :cond_1

    .line 73
    new-instance p0, Lnet/sqlcipher/CursorIndexOutOfBoundsException;

    const-string p1, "Before first row."

    invoke-direct {p0, p1}, Lnet/sqlcipher/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_1
    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->mPos:I

    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    if-lt v0, v1, :cond_2

    .line 76
    new-instance p0, Lnet/sqlcipher/CursorIndexOutOfBoundsException;

    const-string p1, "After last row."

    invoke-direct {p0, p1}, Lnet/sqlcipher/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_2
    iget-object v0, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->mPos:I

    iget p0, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    mul-int/2addr v1, p0

    add-int/2addr v1, p1

    aget-object p0, v0, v1

    return-object p0

    .line 69
    :cond_3
    :goto_0
    new-instance v0, Lnet/sqlcipher/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested column: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", # of columns: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sqlcipher/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRow(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 127
    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    mul-int/2addr v0, v1

    .line 128
    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    .line 129
    invoke-direct {p0, v1}, Lnet/sqlcipher/MatrixCursor;->ensureCapacity(I)V

    .line 131
    instance-of v2, p1, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 132
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lnet/sqlcipher/MatrixCursor;->addRow(Ljava/util/ArrayList;I)V

    return-void

    .line 137
    :cond_0
    iget-object v2, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    .line 138
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v1, :cond_1

    .line 141
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "columnValues.size() > columnNames.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v4, v0, 0x1

    .line 144
    aput-object v3, v2, v0

    move v0, v4

    goto :goto_0

    :cond_2
    if-eq v0, v1, :cond_3

    .line 149
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "columnValues.size() < columnNames.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_3
    iget p1, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    return-void
.end method

.method public addRow([Ljava/lang/Object;)V
    .locals 3

    .line 106
    array-length v0, p1

    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    if-eq v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "columnNames.length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", columnValues.length = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    mul-int/2addr v0, v1

    .line 113
    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lnet/sqlcipher/MatrixCursor;->ensureCapacity(I)V

    const/4 v1, 0x0

    .line 114
    iget-object v2, p0, Lnet/sqlcipher/MatrixCursor;->data:[Ljava/lang/Object;

    iget p0, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    invoke-static {p1, v1, v2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 0

    .line 227
    iget-object p0, p0, Lnet/sqlcipher/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    .line 222
    iget p0, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    return p0
.end method

.method public getDouble(I)D
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 273
    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 274
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloat(I)F
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 265
    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    .line 266
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getInt(I)I
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 249
    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 250
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLong(I)J
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 257
    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 258
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getShort(I)S
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 241
    :cond_0
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    .line 242
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    return p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 234
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(I)I
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lnet/sqlcipher/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isNull(I)Z
    .locals 0

    .line 284
    invoke-direct {p0, p1}, Lnet/sqlcipher/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public newRow()Lnet/sqlcipher/MatrixCursor$RowBuilder;
    .locals 3

    .line 89
    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    .line 90
    iget v0, p0, Lnet/sqlcipher/MatrixCursor;->rowCount:I

    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    mul-int/2addr v0, v1

    .line 91
    invoke-direct {p0, v0}, Lnet/sqlcipher/MatrixCursor;->ensureCapacity(I)V

    .line 92
    iget v1, p0, Lnet/sqlcipher/MatrixCursor;->columnCount:I

    sub-int v1, v0, v1

    .line 93
    new-instance v2, Lnet/sqlcipher/MatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v1, v0}, Lnet/sqlcipher/MatrixCursor$RowBuilder;-><init>(Lnet/sqlcipher/MatrixCursor;II)V

    return-object v2
.end method

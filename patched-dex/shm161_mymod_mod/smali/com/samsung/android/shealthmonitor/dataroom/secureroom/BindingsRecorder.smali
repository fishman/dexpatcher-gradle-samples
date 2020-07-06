.class Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;
.super Ljava/lang/Object;
.source "BindingsRecorder.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteProgram;


# instance fields
.field private bindings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->bindings:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->bindings:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->bindings:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->bindings:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    .line 11
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->bindings:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->bindings:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public clearBindings()V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->bindings:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public close()V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->clearBindings()V

    return-void
.end method

.method getBindings()[Ljava/lang/String;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->bindings:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->bindings:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->bindings:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->bindings:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    const-string v2, ""

    .line 53
    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

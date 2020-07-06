.class final Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor$1;
.super Ljava/lang/Object;
.source "BulkCursorDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;
    .locals 0

    .line 34
    new-instance p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;
    .locals 0

    .line 41
    new-array p0, p1, [Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor$1;->newArray(I)[Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    move-result-object p0

    return-object p0
.end method

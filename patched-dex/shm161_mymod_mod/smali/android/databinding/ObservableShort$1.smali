.class final Landroid/databinding/ObservableShort$1;
.super Ljava/lang/Object;
.source "ObservableShort.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ObservableShort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/databinding/ObservableShort;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/databinding/ObservableShort;
    .locals 0

    .line 107
    new-instance p0, Landroid/databinding/ObservableShort;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-short p1, p1

    invoke-direct {p0, p1}, Landroid/databinding/ObservableShort;-><init>(S)V

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableShort$1;->createFromParcel(Landroid/os/Parcel;)Landroid/databinding/ObservableShort;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Landroid/databinding/ObservableShort;
    .locals 0

    .line 112
    new-array p0, p1, [Landroid/databinding/ObservableShort;

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableShort$1;->newArray(I)[Landroid/databinding/ObservableShort;

    move-result-object p0

    return-object p0
.end method

.class final Landroid/support/v4/app/FragmentTabHost$SavedState$1;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentTabHost$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/support/v4/app/FragmentTabHost$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/FragmentTabHost$SavedState;
    .locals 0

    .line 123
    new-instance p0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTabHost$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/FragmentTabHost$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Landroid/support/v4/app/FragmentTabHost$SavedState;
    .locals 0

    .line 128
    new-array p0, p1, [Landroid/support/v4/app/FragmentTabHost$SavedState;

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTabHost$SavedState$1;->newArray(I)[Landroid/support/v4/app/FragmentTabHost$SavedState;

    move-result-object p0

    return-object p0
.end method

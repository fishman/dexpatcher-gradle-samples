.class final Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;
    .locals 1

    .line 1541
    new-instance p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;
    .locals 0

    .line 1536
    new-instance p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1533
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 1533
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;
    .locals 0

    .line 1546
    new-array p0, p1, [Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1533
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState$1;->newArray(I)[Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    move-result-object p0

    return-object p0
.end method

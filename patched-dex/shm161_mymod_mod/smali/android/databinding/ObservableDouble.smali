.class public Landroid/databinding/ObservableDouble;
.super Landroid/databinding/BaseObservableField;
.source "ObservableDouble.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/databinding/ObservableDouble;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Landroid/databinding/ObservableDouble$1;

    invoke-direct {v0}, Landroid/databinding/ObservableDouble$1;-><init>()V

    sput-object v0, Landroid/databinding/ObservableDouble;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/databinding/BaseObservableField;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/databinding/BaseObservableField;-><init>()V

    .line 53
    iput-wide p1, p0, Landroid/databinding/ObservableDouble;->mValue:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 99
    iget-wide v0, p0, Landroid/databinding/ObservableDouble;->mValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.class public Landroid/databinding/ObservableLong;
.super Landroid/databinding/BaseObservableField;
.source "ObservableLong.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/databinding/ObservableLong;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Landroid/databinding/ObservableLong$1;

    invoke-direct {v0}, Landroid/databinding/ObservableLong$1;-><init>()V

    sput-object v0, Landroid/databinding/ObservableLong;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/databinding/BaseObservableField;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/databinding/BaseObservableField;-><init>()V

    .line 54
    iput-wide p1, p0, Landroid/databinding/ObservableLong;->mValue:J

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

    .line 100
    iget-wide v0, p0, Landroid/databinding/ObservableLong;->mValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

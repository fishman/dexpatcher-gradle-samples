.class public Landroid/databinding/ObservableFloat;
.super Landroid/databinding/BaseObservableField;
.source "ObservableFloat.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/databinding/ObservableFloat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Landroid/databinding/ObservableFloat$1;

    invoke-direct {v0}, Landroid/databinding/ObservableFloat$1;-><init>()V

    sput-object v0, Landroid/databinding/ObservableFloat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/databinding/BaseObservableField;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/databinding/BaseObservableField;-><init>()V

    .line 53
    iput p1, p0, Landroid/databinding/ObservableFloat;->mValue:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 99
    iget p0, p0, Landroid/databinding/ObservableFloat;->mValue:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

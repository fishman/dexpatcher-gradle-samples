.class public abstract Lcom/github/mikephil/charting/data/BaseEntry;
.super Ljava/lang/Object;
.source "BaseEntry.java"


# instance fields
.field private mData:Ljava/lang/Object;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mData:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mData:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 24
    iput p1, p0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mData:Ljava/lang/Object;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getY()F
    .locals 0

    .line 49
    iget p0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    return p0
.end method

.method public final setData(Ljava/lang/Object;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseEntry;->mData:Ljava/lang/Object;

    return-void
.end method

.method public final setY(F)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    return-void
.end method

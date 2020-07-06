.class Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;
.super Ljava/lang/Object;
.source "HTextButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/widget/HTextButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonProperty"
.end annotation


# instance fields
.field mMinHeight:I

.field mResourceId:I

.field mRipplePaddingBottom:I

.field mRipplePaddingEnd:I

.field mRipplePaddingStart:I

.field mRipplePaddingTop:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mRipplePaddingTop:I

    .line 169
    iput p2, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mRipplePaddingBottom:I

    .line 170
    iput p3, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mRipplePaddingStart:I

    .line 171
    iput p4, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mRipplePaddingEnd:I

    .line 172
    iput p5, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mMinHeight:I

    .line 173
    iput p6, p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton$ButtonProperty;->mResourceId:I

    return-void
.end method

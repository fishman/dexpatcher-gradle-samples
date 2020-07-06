.class public Lcom/samsung/android/shealthmonitor/widget/HSwitch;
.super Landroid/support/v7/widget/SwitchCompat;
.source "HSwitch.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SwitchCompat;->onMeasure(II)V

    .line 30
    :try_start_0
    const-class p1, Landroid/support/v7/widget/SwitchCompat;

    const-string p2, "mSwitchWidth"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HSwitch;->getSwitchMinWidth()I

    move-result p2

    if-lez p2, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HSwitch;->getSwitchMinWidth()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 48
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$drawable;->switch_track_selector:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HSwitch;->setTrackResource(I)V

    .line 49
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$drawable;->switch_thumb_selector:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HSwitch;->setThumbResource(I)V

    goto :goto_0

    .line 51
    :cond_0
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$drawable;->switch_track_disabled:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HSwitch;->setTrackResource(I)V

    .line 52
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$drawable;->switch_thumb_disabled:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HSwitch;->setThumbResource(I)V

    .line 55
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    return-void
.end method

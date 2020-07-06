.class public final Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowserRoot"
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mRootId:Ljava/lang/String;


# virtual methods
.method public final getExtras()Landroid/os/Bundle;
    .locals 0

    .line 1826
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getRootId()Ljava/lang/String;
    .locals 0

    .line 1819
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->mRootId:Ljava/lang/String;

    return-object p0
.end method

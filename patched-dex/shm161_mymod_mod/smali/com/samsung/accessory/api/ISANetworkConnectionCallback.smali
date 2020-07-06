.class public interface abstract Lcom/samsung/accessory/api/ISANetworkConnectionCallback;
.super Ljava/lang/Object;
.source "ISANetworkConnectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISANetworkConnectionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNetworkConnectionResponse(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

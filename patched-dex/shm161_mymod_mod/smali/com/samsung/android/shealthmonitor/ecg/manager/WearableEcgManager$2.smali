.class Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager$2;
.super Ljava/lang/Object;
.source "WearableEcgManager.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager$2;->this$0:Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "r5"    # Ljava/lang/String;
    .param p2, "r6"    # I
    .param p3, "r7"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not decompiled: com.samsung.android.shealthmonitor.bp.manager.WearableEcgManager.AnonymousClass2.onResult(java.lang.String, int, java.lang.String):void"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

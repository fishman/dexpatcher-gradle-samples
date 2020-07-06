.class Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity$2;->this$0:Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 368
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->decreaseRef()V

    const/4 p0, 0x0

    .line 369
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->access$102(Z)Z

    return-void
.end method

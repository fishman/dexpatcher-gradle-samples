.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity$initView$3;
.super Ljava/lang/Object;
.source "SHealthMonitorAboutActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity$initView$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 41
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity$initView$3;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;

    const-string p1, "home"

    const-string v0, "SHealthMonitorOpenSourceLicensesActivity"

    const/high16 v1, 0x4000000

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;->access$startActivityByClassName(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

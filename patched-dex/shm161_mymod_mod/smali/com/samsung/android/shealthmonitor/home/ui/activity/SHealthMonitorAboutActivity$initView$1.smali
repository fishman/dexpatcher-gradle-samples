.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity$initView$1;
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


# static fields
.field public static final INSTANCE:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity$initView$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity$initView$1;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity$initView$1;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity$initView$1;->INSTANCE:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity$initView$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-static {}, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer;->showTncPolicy()V

    return-void
.end method

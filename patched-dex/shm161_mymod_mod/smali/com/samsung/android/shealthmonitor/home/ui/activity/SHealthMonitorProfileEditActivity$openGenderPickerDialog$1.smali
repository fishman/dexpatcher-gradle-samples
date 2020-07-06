.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$1;
.super Ljava/lang/Object;
.source "SHealthMonitorProfileEditActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnSigleChoiceItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->openGenderPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(I)V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->access$setMGenderIndex$p(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Ljava/lang/Integer;)V

    .line 547
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->access$getMGenderList$p(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->access$setMGender$p(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Ljava/lang/String;)V

    return-void
.end method

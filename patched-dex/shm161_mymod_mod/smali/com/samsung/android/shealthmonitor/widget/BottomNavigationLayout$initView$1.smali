.class final Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout$initView$1;
.super Ljava/lang/Object;
.source "BottomNavigationLayout.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;->access$getMClickListener$p(Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;)Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout$BottomActionButtonClickListener;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout$BottomActionButtonClickListener;->onLeftActionClick()V

    return-void
.end method

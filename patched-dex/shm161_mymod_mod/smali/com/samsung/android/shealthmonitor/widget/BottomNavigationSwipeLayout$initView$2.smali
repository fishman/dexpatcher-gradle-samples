.class final Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout$initView$2;
.super Ljava/lang/Object;
.source "BottomNavigationSwipeLayout.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout$initView$2;->this$0:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout$initView$2;->this$0:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout;->access$getMClickListener$p(Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout;)Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout$BottomActionButtonClickListener;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationSwipeLayout$BottomActionButtonClickListener;->onRightActionClick()V

    return-void
.end method

.class final Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$initView$2;
.super Ljava/lang/Object;
.source "BottomNavigationwithColorButtonLayout.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$initView$2;->this$0:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$initView$2;->this$0:Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;->access$getMClickListener$p(Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout;)Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$BottomActionButtonClickListener;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationwithColorButtonLayout$BottomActionButtonClickListener;->onRightActionClick()V

    return-void
.end method

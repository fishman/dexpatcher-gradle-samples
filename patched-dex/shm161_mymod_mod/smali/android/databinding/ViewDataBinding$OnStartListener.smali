.class public Landroid/databinding/ViewDataBinding$OnStartListener;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnStartListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/databinding/ViewDataBinding;


# virtual methods
.method public onStart()V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1621
    iget-object p0, p0, Landroid/databinding/ViewDataBinding$OnStartListener;->this$0:Landroid/databinding/ViewDataBinding;

    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.class public Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListChooseDlgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter$OnListItemClickListener;
    }
.end annotation


# instance fields
.field protected mCheckedItems:[Z

.field protected mItemDescriptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnListItemClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter$OnListItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckedItem(I)Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;->mCheckedItems:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    return-object p2
.end method

.method public setOnListItemClickListener(Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter$OnListItemClickListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter;->mOnListItemClickListener:Lcom/samsung/android/shealthmonitor/ui/dialog/ListChooseDlgAdapter$OnListItemClickListener;

    return-void
.end method

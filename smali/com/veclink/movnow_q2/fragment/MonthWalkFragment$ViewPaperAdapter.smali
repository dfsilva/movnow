.class Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MonthWalkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPaperAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 542
    iput-object p2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->views:Ljava/util/List;

    .line 543
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 553
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 556
    const v0, 0x7fffffff

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 546
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 547
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 548
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->views:Ljava/util/List;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 566
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

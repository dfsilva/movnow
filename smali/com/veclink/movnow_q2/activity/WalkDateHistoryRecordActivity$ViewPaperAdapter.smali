.class Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$ViewPaperAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WalkDateHistoryRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPaperAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

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
.method public constructor <init>(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;Ljava/util/List;)V
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
    .line 125
    .local p2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$ViewPaperAdapter;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$ViewPaperAdapter;->views:Ljava/util/List;

    .line 127
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$ViewPaperAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$ViewPaperAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 152
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$ViewPaperAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 132
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$ViewPaperAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 147
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
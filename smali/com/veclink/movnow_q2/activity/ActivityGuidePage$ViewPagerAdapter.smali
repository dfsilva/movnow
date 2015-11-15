.class Lcom/veclink/movnow_q2/activity/ActivityGuidePage$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ActivityGuidePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/ActivityGuidePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;


# direct methods
.method public constructor <init>(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;Ljava/util/List;)V
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
    .line 154
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$ViewPagerAdapter;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    .line 155
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$ViewPagerAdapter;->data:Ljava/util/List;

    .line 157
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$ViewPagerAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$ViewPagerAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$ViewPagerAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$ViewPagerAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 166
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

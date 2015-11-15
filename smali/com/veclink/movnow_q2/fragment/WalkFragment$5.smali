.class Lcom/veclink/movnow_q2/fragment/WalkFragment$5;
.super Ljava/lang/Object;
.source "WalkFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/fragment/WalkFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$5;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ScrollView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ScrollView;>;"
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$5;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "bind_mac_address":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$5;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1100(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->onRefreshComplete()V

    .line 377
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$5;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    const-class v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # invokes: Lcom/veclink/movnow_q2/fragment/WalkFragment;->sendIntent(Ljava/lang/Class;)V
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1400(Lcom/veclink/movnow_q2/fragment/WalkFragment;Ljava/lang/Class;)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$5;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # invokes: Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncStepData()V
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1500(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V

    goto :goto_0
.end method

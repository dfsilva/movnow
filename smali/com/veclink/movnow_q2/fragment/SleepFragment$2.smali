.class Lcom/veclink/movnow_q2/fragment/SleepFragment$2;
.super Ljava/lang/Object;
.source "SleepFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/fragment/SleepFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/fragment/SleepFragment;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

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
    .line 230
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ScrollView;>;"
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/SleepFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "bind_mac_address":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$300(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->onRefreshComplete()V

    .line 233
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    const-class v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # invokes: Lcom/veclink/movnow_q2/fragment/SleepFragment;->sendIntent(Ljava/lang/Class;)V
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$500(Lcom/veclink/movnow_q2/fragment/SleepFragment;Ljava/lang/Class;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncSleepData()V

    goto :goto_0
.end method

.class Lcom/veclink/movnow_q2/fragment/WalkFragment$6;
.super Ljava/lang/Object;
.source "WalkFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/fragment/WalkFragment;->refreshRoundView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$6;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 421
    const/4 v5, 0x0

    .line 422
    .local v5, "progress":I
    invoke-static {v8}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getDateString(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "date":Ljava/lang/String;
    sget-object v6, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v6, v1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadOriginSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 424
    .local v4, "oneDateSportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    if-eqz v4, :cond_0

    .line 425
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/healthy/database/entity/SportData;

    .line 426
    .local v3, "item":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 427
    goto :goto_0

    .line 429
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/veclink/healthy/database/entity/SportData;
    :cond_0
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$6;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1300(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 430
    sget-object v6, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v6, v1}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->loadSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 431
    .local v0, "barWalkDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    if-eqz v0, :cond_1

    .line 432
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$6;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1300(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 436
    :cond_1
    return-void
.end method

.class Lcom/veclink/movnow_q2/fragment/SleepFragment$4;
.super Ljava/lang/Thread;
.source "SleepFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/fragment/SleepFragment;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

.field final synthetic val$currentDay:Ljava/lang/String;

.field final synthetic val$preDay:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/fragment/SleepFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    iput-object p2, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;->val$currentDay:Ljava/lang/String;

    iput-object p3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;->val$preDay:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 382
    sget-object v6, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 383
    .local v6, "mContext":Landroid/content/Context;
    iget-object v12, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;->val$currentDay:Ljava/lang/String;

    invoke-static {v6, v12}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->selectSleepDataByDay(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 384
    .local v1, "currentDaysSleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    iget-object v12, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;->val$preDay:Ljava/lang/String;

    invoke-static {v6, v12}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->selectPreDaySleepData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 386
    .local v7, "preDaySleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v2, "daytimeList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v0, "atnightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    const/4 v11, 0x0

    .line 390
    .local v11, "totalDuration":I
    const/4 v5, 0x0

    .line 391
    .local v5, "lightSleep":I
    const/4 v3, 0x0

    .line 392
    .local v3, "deepSleep":I
    if-eqz v7, :cond_1

    .line 394
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_2

    .line 395
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v12}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v8

    .line 397
    .local v8, "prestartTime":I
    const-string v12, "SleepFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u524d\u4e00\u5929\u665a\u4e0a21:00-24:00-------------"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    mul-int/lit8 v14, v8, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    const-string v13, "0"

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v12}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 400
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v12}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v12

    add-int/2addr v3, v12

    .line 394
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 402
    :cond_0
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v12}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v12

    add-int/2addr v5, v12

    goto :goto_1

    .line 407
    .end local v4    # "i":I
    .end local v8    # "prestartTime":I
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "preDaySleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .restart local v7    # "preDaySleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :cond_2
    if-eqz v1, :cond_5

    .line 411
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_5

    .line 412
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v12}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v10

    .line 413
    .local v10, "startTime":I
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v12}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v12

    add-int/2addr v11, v12

    .line 415
    const-string v13, "0"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v12}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 416
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v12}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v12

    add-int/2addr v3, v12

    .line 420
    :goto_3
    const/16 v12, 0x21c

    if-lt v10, v12, :cond_4

    .line 422
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 418
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v12}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v12

    add-int/2addr v5, v12

    goto :goto_3

    .line 426
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 434
    .end local v4    # "i":I
    .end local v10    # "startTime":I
    :cond_5
    iget-object v12, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;->val$currentDay:Ljava/lang/String;

    invoke-static {v6, v12}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->querySleepTotalTimeFromZeroToTwentyFour(Landroid/content/Context;Ljava/lang/String;)Lcom/veclink/movnow_q2/util/SleepStatus;

    move-result-object v9

    .line 435
    .local v9, "sleepStatus":Lcom/veclink/movnow_q2/util/SleepStatus;
    iget-object v12, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->handler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$2100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 436
    iget-object v12, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->handler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$2100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 437
    iget-object v12, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->handler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$2100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 440
    return-void
.end method

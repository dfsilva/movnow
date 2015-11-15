.class Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;
.super Ljava/lang/Thread;
.source "SleepDateHistoryRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 482
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 484
    .local v5, "calendar":Ljava/util/Calendar;
    const/16 v21, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->totalMonthDay:I
    invoke-static/range {v22 .. v22}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1800(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 485
    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->selectMonth:I
    invoke-static/range {v22 .. v22}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1900(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 486
    const/16 v21, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->totalMonthDay:I
    invoke-static/range {v22 .. v22}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1800(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 487
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    .line 488
    .local v18, "sleepStatusSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/veclink/movnow_q2/util/SleepStatus;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 489
    .local v4, "atnightSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;>;"
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 490
    .local v10, "daytimeSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->totalMonthDay:I
    invoke-static/range {v21 .. v21}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1800(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)I

    move-result v8

    .local v8, "day":I
    :goto_0
    if-lez v8, :cond_7

    .line 491
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 492
    .local v6, "currentDay":Ljava/lang/String;
    const/16 v21, 0x5

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 493
    const-string v21, "SleepDateHistoryRecordActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "currentDay:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 495
    .local v14, "preDay":Ljava/lang/String;
    const-string v21, "SleepDateHistoryRecordActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "preDay:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$2000(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->selectSleepDataByDay(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 497
    .local v7, "currentDaysSleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$2000(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->selectPreDaySleepData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 499
    .local v15, "preDaySleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v9, "daytimeList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v3, "atnightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    const/16 v20, 0x0

    .line 503
    .local v20, "totalDuration":I
    const/4 v13, 0x0

    .line 504
    .local v13, "lightSleep":I
    const/4 v11, 0x0

    .line 505
    .local v11, "deepSleep":I
    if-eqz v15, :cond_1

    .line 507
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_2

    .line 508
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v16

    .line 509
    .local v16, "prestartTime":I
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v20, v20, v21

    .line 513
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    const-string v22, "0"

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 515
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v11, v11, v21

    .line 507
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 517
    :cond_0
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v13, v13, v21

    goto :goto_2

    .line 522
    .end local v12    # "i":I
    .end local v16    # "prestartTime":I
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "preDaySleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .restart local v15    # "preDaySleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :cond_2
    if-eqz v7, :cond_6

    .line 527
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_6

    .line 528
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v19

    .line 529
    .local v19, "startTime":I
    const/16 v21, 0x21c

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 530
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v20, v20, v21

    .line 535
    const-string v22, "0"

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 536
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v11, v11, v21

    .line 542
    :cond_3
    :goto_4
    const/16 v21, 0x21c

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    .line 544
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 538
    :cond_4
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual/range {v21 .. v21}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v21

    add-int v13, v13, v21

    goto :goto_4

    .line 548
    :cond_5
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 553
    .end local v12    # "i":I
    .end local v19    # "startTime":I
    :cond_6
    const-string v21, "SleepDateHistoryRecordActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "totalDuration :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v21, "SleepDateHistoryRecordActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "lightSleep:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v21, "SleepDateHistoryRecordActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deepSleep:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v17, Lcom/veclink/movnow_q2/util/SleepStatus;

    invoke-direct/range {v17 .. v17}, Lcom/veclink/movnow_q2/util/SleepStatus;-><init>()V

    .line 557
    .local v17, "sleepStatus":Lcom/veclink/movnow_q2/util/SleepStatus;
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/util/SleepStatus;->setTotalTimes(I)V

    .line 558
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/veclink/movnow_q2/util/SleepStatus;->setDeepTimes(I)V

    .line 559
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/veclink/movnow_q2/util/SleepStatus;->setLightTimes(I)V

    .line 560
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 561
    invoke-virtual {v4, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 562
    invoke-virtual {v10, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 563
    const-string v21, "SleepDateHistoryRecordActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "day:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    .line 565
    .end local v3    # "atnightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v6    # "currentDay":Ljava/lang/String;
    .end local v7    # "currentDaysSleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v9    # "daytimeList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v11    # "deepSleep":I
    .end local v13    # "lightSleep":I
    .end local v14    # "preDay":Ljava/lang/String;
    .end local v15    # "preDaySleepDatas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v17    # "sleepStatus":Lcom/veclink/movnow_q2/util/SleepStatus;
    .end local v20    # "totalDuration":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$2100(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$2100(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$2100(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    .line 568
    return-void
.end method

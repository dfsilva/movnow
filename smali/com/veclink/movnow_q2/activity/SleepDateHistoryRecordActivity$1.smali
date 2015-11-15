.class Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;
.super Landroid/os/Handler;
.source "SleepDateHistoryRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;
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
    .line 145
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 246
    :cond_0
    return-void

    .line 155
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/util/SparseArray;

    .line 156
    .local v12, "sleepStatusSparseArrayt":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/veclink/movnow_q2/util/SleepStatus;>;"
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 157
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v9

    .local v9, "i":I
    :goto_0
    if-lez v9, :cond_0

    .line 159
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepTotalTimeList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$000(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/veclink/movnow_q2/util/SleepStatus;

    invoke-virtual {v14}, Lcom/veclink/movnow_q2/util/SleepStatus;->getTotalTimes()I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepLightTimeList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$100(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/veclink/movnow_q2/util/SleepStatus;

    invoke-virtual {v14}, Lcom/veclink/movnow_q2/util/SleepStatus;->getLightTimes()I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepDeepTimeList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$200(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/veclink/movnow_q2/util/SleepStatus;

    invoke-virtual {v14}, Lcom/veclink/movnow_q2/util/SleepStatus;->getDeepTimes()I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 172
    .end local v9    # "i":I
    .end local v12    # "sleepStatusSparseArrayt":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/veclink/movnow_q2/util/SleepStatus;>;"
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/util/SparseArray;

    .line 173
    .local v7, "daytimeSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # setter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daySleepDatas:Landroid/util/SparseArray;
    invoke-static {v13, v7}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$302(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 175
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 176
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    .restart local v9    # "i":I
    :goto_1
    if-lez v9, :cond_0

    .line 177
    const/4 v8, 0x0

    .line 178
    .local v8, "daytimeTotal":I
    const/4 v5, 0x0

    .line 179
    .local v5, "daytimeDeepTime":I
    const/4 v6, 0x0

    .line 180
    .local v6, "daytimeLightTime":I
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphViewList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$500(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;
    invoke-static {v15}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$400(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphViewList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$500(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    invoke-virtual {v13}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->invalidate()V

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphViewList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$600(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;
    invoke-static {v15}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$400(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphViewList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$600(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    invoke-virtual {v13}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->invalidate()V

    .line 185
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/healthy/database/entity/SleepData;

    .line 186
    .local v11, "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v8, v13

    .line 187
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v13

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 188
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v5, v13

    goto :goto_2

    .line 190
    :cond_2
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v6, v13

    goto :goto_2

    .line 193
    .end local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_3
    const-string v13, "SleepDateHistoryRecordActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "daytimeTotal:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v13, "SleepDateHistoryRecordActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "daytimeDeepTime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v13, "SleepDateHistoryRecordActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "daytimeLightTime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeSleepTimeList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$700(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    mul-int/lit8 v14, v8, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeDeepSleepTimeList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$800(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    mul-int/lit8 v14, v5, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeLightSleepTimeList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$900(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    mul-int/lit8 v14, v6, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1

    .line 207
    .end local v5    # "daytimeDeepTime":I
    .end local v6    # "daytimeLightTime":I
    .end local v7    # "daytimeSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;>;"
    .end local v8    # "daytimeTotal":I
    .end local v9    # "i":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseArray;

    .line 208
    .local v3, "atnightSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # setter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->nightSleepDatas:Landroid/util/SparseArray;
    invoke-static {v13, v3}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1002(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 210
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 211
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v9

    .restart local v9    # "i":I
    :goto_3
    if-lez v9, :cond_0

    .line 212
    const/4 v4, 0x0

    .line 213
    .local v4, "atnightTotal":I
    const/4 v1, 0x0

    .line 214
    .local v1, "atnightDeepTime":I
    const/4 v2, 0x0

    .line 215
    .local v2, "atnightLightTime":I
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphViewList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$500(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;
    invoke-static {v15}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1100(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphViewList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$500(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    invoke-virtual {v13}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->invalidate()V

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphViewList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$600(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;
    invoke-static {v15}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1100(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphViewList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$600(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    invoke-virtual {v13}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->invalidate()V

    .line 220
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/healthy/database/entity/SleepData;

    .line 221
    .restart local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v4, v13

    .line 222
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v13

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 223
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v1, v13

    goto :goto_4

    .line 225
    :cond_5
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v2, v13

    goto :goto_4

    .line 228
    .end local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_6
    const-string v13, "SleepDateHistoryRecordActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "atnightTotal:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v13, "SleepDateHistoryRecordActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "atnightDeepTime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v13, "SleepDateHistoryRecordActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "atnightLightTime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightSleepTimeList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1200(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    mul-int/lit8 v14, v4, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightDeepSleepTimeList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1300(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    mul-int/lit8 v14, v1, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightLightSleepTimeList:Ljava/util/List;
    invoke-static {v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1400(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;

    move-result-object v13

    add-int/lit8 v14, v9, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    mul-int/lit8 v14, v2, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_3

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/veclink/movnow_q2/fragment/SleepFragment$3;
.super Landroid/os/Handler;
.source "SleepFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/fragment/SleepFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/fragment/SleepFragment;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 295
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/veclink/movnow_q2/util/SleepStatus;

    .line 298
    .local v10, "sleepStatus":Lcom/veclink/movnow_q2/util/SleepStatus;
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$200(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v11

    const/16 v12, 0x5a0

    invoke-virtual {v11, v12}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 299
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$200(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v11

    invoke-virtual {v10}, Lcom/veclink/movnow_q2/util/SleepStatus;->getTotalTimes()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setProgress(I)V

    .line 300
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvSleepTotalTime:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$600(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10}, Lcom/veclink/movnow_q2/util/SleepStatus;->getTotalTimes()I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvLightSleepTime:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$700(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10}, Lcom/veclink/movnow_q2/util/SleepStatus;->getLightTimes()I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDeepSleepTime:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$800(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10}, Lcom/veclink/movnow_q2/util/SleepStatus;->getDeepTimes()I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    .end local v10    # "sleepStatus":Lcom/veclink/movnow_q2/util/SleepStatus;
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    .line 306
    .local v6, "daytimeList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    const/4 v7, 0x0

    .line 307
    .local v7, "daytimeTotal":I
    const/4 v4, 0x0

    .line 308
    .local v4, "daytimeDeepTime":I
    const/4 v5, 0x0

    .line 309
    .local v5, "daytimeLightTime":I
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->hideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1000(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    move-result-object v11

    iget-object v12, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;
    invoke-static {v12}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$900(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v6, v12, v13}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 310
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->hideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1000(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->invalidate()V

    .line 311
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->barGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    move-result-object v11

    iget-object v12, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;
    invoke-static {v12}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$900(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v6, v12, v13}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 312
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->barGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->invalidate()V

    .line 313
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # setter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->daySleepDatas:Ljava/util/List;
    invoke-static {v11, v6}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1202(Lcom/veclink/movnow_q2/fragment/SleepFragment;Ljava/util/List;)Ljava/util/List;

    .line 314
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/veclink/healthy/database/entity/SleepData;

    .line 315
    .local v9, "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v11

    add-int/2addr v7, v11

    .line 316
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 317
    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v11

    add-int/2addr v4, v11

    goto :goto_1

    .line 319
    :cond_0
    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v11

    add-int/2addr v5, v11

    goto :goto_1

    .line 322
    .end local v9    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_1
    const-string v11, "SleepFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "daytime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v11, "SleepFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "daytimeDeepTime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v11, "SleepFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "daytimeLightTime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDaytimeSleepTime:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1300(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;

    move-result-object v11

    mul-int/lit8 v12, v7, 0x3c

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDaytimeDeepSleepTime:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1400(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;

    move-result-object v11

    mul-int/lit8 v12, v4, 0x3c

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDaytimeLightSleepTime:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1500(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;

    move-result-object v11

    mul-int/lit8 v12, v5, 0x3c

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 330
    .end local v4    # "daytimeDeepTime":I
    .end local v5    # "daytimeLightTime":I
    .end local v6    # "daytimeList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v7    # "daytimeTotal":I
    .end local v8    # "i$":Ljava/util/Iterator;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 331
    .local v2, "atnightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # setter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->nightSleepDatas:Ljava/util/List;
    invoke-static {v11, v2}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1602(Lcom/veclink/movnow_q2/fragment/SleepFragment;Ljava/util/List;)Ljava/util/List;

    .line 332
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->hideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1000(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    move-result-object v11

    iget-object v12, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;
    invoke-static {v12}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1700(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v11, v2, v12, v13}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 334
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->hideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1000(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->postInvalidate()V

    .line 335
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->barGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    move-result-object v11

    iget-object v12, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;
    invoke-static {v12}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1700(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v11, v2, v12, v13}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 336
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->barGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->postInvalidate()V

    .line 337
    const/4 v3, 0x0

    .line 338
    .local v3, "atnightTotal":I
    const/4 v0, 0x0

    .line 339
    .local v0, "atnightDeepTime":I
    const/4 v1, 0x0

    .line 340
    .local v1, "atnightLightTime":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/veclink/healthy/database/entity/SleepData;

    .line 341
    .restart local v9    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v11

    add-int/2addr v3, v11

    .line 342
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 343
    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v11

    add-int/2addr v0, v11

    goto :goto_2

    .line 345
    :cond_2
    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v11

    add-int/2addr v1, v11

    goto :goto_2

    .line 348
    .end local v9    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_3
    const-string v11, "SleepFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "atnightTotal:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v11, "SleepFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "atnightDeepTime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v11, "SleepFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "atnightLightTime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvAtnightSleepTime:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1800(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;

    move-result-object v11

    mul-int/lit8 v12, v3, 0x3c

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvAtnightDeepSleepTime:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$1900(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;

    move-result-object v11

    mul-int/lit8 v12, v0, 0x3c

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvAtnightLightSleepTime:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$2000(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;

    move-result-object v11

    mul-int/lit8 v12, v1, 0x3c

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

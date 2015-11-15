.class Lcom/veclink/movnow_q2/fragment/SleepFragment$1;
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
    .line 107
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->isDestroy:Z
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$000(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v0, Lcom/veclink/healthy/database/entity/LogObject;

    const-string v1, ""

    const-string v2, "1"

    const-string v3, "0"

    invoke-static {}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getNowTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, "1.0"

    const-string v9, ""

    invoke-direct/range {v0 .. v9}, Lcom/veclink/healthy/database/entity/LogObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v0, "logObject":Lcom/veclink/healthy/database/entity/LogObject;
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setDeviceId(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setUserId(Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/veclink/healthy/database/entity/LogObject;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/veclink/healthy/database/entity/LogObject;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/veclink/healthy/database/entity/LogObject;->getOptTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->set_id(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setDeviceType(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceRomVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setFirmwareVer(Ljava/lang/String;)V

    .line 119
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$200(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 122
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$200(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 128
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$200(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 130
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$200(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 136
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setResult(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/veclink/healthy/database/op/HealthyDBLogOperate;->addLogObject(Landroid/content/Context;Lcom/veclink/healthy/database/entity/LogObject;)J

    .line 139
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    .line 140
    .local v10, "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/veclink/healthy/task/SaveSyncDataRunnable;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncDataHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v10, v0, v4}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;Lcom/veclink/healthy/database/entity/LogObject;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 146
    .end local v10    # "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    :pswitch_4
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$300(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->onRefreshComplete()V

    .line 147
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/SleepFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncSleepData(Z)V

    .line 148
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 149
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setResult(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/veclink/healthy/database/op/HealthyDBLogOperate;->addLogObject(Landroid/content/Context;Lcom/veclink/healthy/database/entity/LogObject;)J

    .line 151
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    .line 152
    .restart local v10    # "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/veclink/healthy/task/SaveSyncDataRunnable;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncDataHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v10, v0, v4}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;Lcom/veclink/healthy/database/entity/LogObject;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 154
    .end local v10    # "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    :cond_2
    sget-object v1, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/MainActivity;->checkFirmwareUpdate()V

    goto/16 :goto_0

    .line 158
    :pswitch_5
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$300(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->onRefreshComplete()V

    .line 159
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setResult(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/veclink/healthy/database/op/HealthyDBLogOperate;->addLogObject(Landroid/content/Context;Lcom/veclink/healthy/database/entity/LogObject;)J

    .line 161
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$200(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v1

    const/16 v2, 0x5a0

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 162
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # invokes: Lcom/veclink/movnow_q2/fragment/SleepFragment;->refreshView()V
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$400(Lcom/veclink/movnow_q2/fragment/SleepFragment;)V

    .line 163
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    .line 164
    sget-object v1, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/MainActivity;->checkFirmwareUpdate()V

    goto/16 :goto_0

    .line 168
    :pswitch_6
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$200(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v1

    const/16 v2, 0x5a0

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 169
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    # invokes: Lcom/veclink/movnow_q2/fragment/SleepFragment;->refreshView()V
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->access$400(Lcom/veclink/movnow_q2/fragment/SleepFragment;)V

    .line 170
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    goto/16 :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

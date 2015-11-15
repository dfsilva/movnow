.class Lcom/veclink/movnow_q2/fragment/WalkFragment$2;
.super Landroid/os/Handler;
.source "WalkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/fragment/WalkFragment;
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
    .line 168
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x64

    .line 172
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 173
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

    .line 174
    .local v0, "logObject":Lcom/veclink/healthy/database/entity/LogObject;
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setDeviceId(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setUserId(Ljava/lang/String;)V

    .line 176
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

    .line 177
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setDeviceType(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceRomVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setFirmwareVer(Ljava/lang/String;)V

    .line 179
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1000(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 183
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1000(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 188
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1000(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 190
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1000(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 196
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setResult(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v1, v0}, Lcom/veclink/healthy/database/op/HealthyDBLogOperate;->addLogObject(Landroid/content/Context;Lcom/veclink/healthy/database/entity/LogObject;)J

    .line 199
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    .line 200
    .local v10, "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/veclink/healthy/task/SaveSyncDataRunnable;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v3, v3, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncDataHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v10, v0, v4}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;Lcom/veclink/healthy/database/entity/LogObject;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 206
    .end local v10    # "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    :pswitch_4
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1100(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->onRefreshComplete()V

    .line 207
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncStepData(Z)V

    .line 208
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setResult(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v1, v0}, Lcom/veclink/healthy/database/op/HealthyDBLogOperate;->addLogObject(Landroid/content/Context;Lcom/veclink/healthy/database/entity/LogObject;)J

    .line 211
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    .line 212
    .restart local v10    # "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/veclink/healthy/task/SaveSyncDataRunnable;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v3, v3, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncDataHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v10, v0, v4}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;Lcom/veclink/healthy/database/entity/LogObject;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 219
    .end local v10    # "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    :pswitch_5
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iput-object v12, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    .line 220
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1100(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->onRefreshComplete()V

    .line 221
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/entity/LogObject;->setResult(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v1, v0}, Lcom/veclink/healthy/database/op/HealthyDBLogOperate;->addLogObject(Landroid/content/Context;Lcom/veclink/healthy/database/entity/LogObject;)J

    .line 223
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # invokes: Lcom/veclink/movnow_q2/fragment/WalkFragment;->refreshRoundView()V
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1200(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V

    goto/16 :goto_0

    .line 228
    :pswitch_6
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iput-object v12, v1, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    .line 229
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # invokes: Lcom/veclink/movnow_q2/fragment/WalkFragment;->refreshRoundView()V
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1200(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V

    goto/16 :goto_0

    .line 179
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

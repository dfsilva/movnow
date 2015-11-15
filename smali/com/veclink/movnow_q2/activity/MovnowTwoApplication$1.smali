.class final Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$1;
.super Landroid/os/Handler;
.source "MovnowTwoApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 99
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 101
    :pswitch_1
    const-string v3, "MovnowTwoApplication"

    const-string v4, "syncParamHandler:\u6b63\u5728\u540c\u6b65\u53c2\u6570"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/veclink/bracelet/bean/DeviceInfo;

    .line 106
    .local v1, "deviceInfo":Lcom/veclink/bracelet/bean/DeviceInfo;
    const-string v3, "MovnowTwoApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u540c\u6b65\u53c2\u6570\u5b8c\u6210"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/veclink/bracelet/bean/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    # getter for: Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->bleSyncParamsTask:Lcom/veclink/bracelet/bletask/BleSyncParamsTask;
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->access$000()Lcom/veclink/bracelet/bletask/BleSyncParamsTask;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unRegisterObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 108
    iget-object v3, v1, Lcom/veclink/bracelet/bean/DeviceInfo;->device_type:Ljava/lang/String;

    invoke-static {v3}, Lcom/veclink/hw/devicetype/DeviceProductFactory;->createDeviceProduct(Ljava/lang/String;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    move-result-object v3

    sput-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    .line 109
    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v3, v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowKeptView:I

    if-nez v3, :cond_1

    .line 110
    invoke-static {v6}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->setAutoReConnect(Z)V

    .line 114
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_sync_params_done"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, "syncDoneIntent":Landroid/content/Intent;
    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v3, v2}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    sput-boolean v6, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->canDoTask:Z

    .line 117
    # setter for: Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->bleSyncParamsTask:Lcom/veclink/bracelet/bletask/BleSyncParamsTask;
    invoke-static {v7}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->access$002(Lcom/veclink/bracelet/bletask/BleSyncParamsTask;)Lcom/veclink/bracelet/bletask/BleSyncParamsTask;

    .line 118
    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v3, v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->bindDeviceWay:I

    if-eq v3, v6, :cond_0

    .line 119
    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v3, v6}, Lcom/veclink/hw/bleservice/util/Keeper;->setUserHasBindBand(Landroid/content/Context;Z)V

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v3, "action_bind_device_done"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "bindDoneIntent":Landroid/content/Intent;
    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v3, v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    .end local v0    # "bindDoneIntent":Landroid/content/Intent;
    .end local v2    # "syncDoneIntent":Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->setAutoReConnect(Z)V

    goto :goto_1

    .line 126
    .end local v1    # "deviceInfo":Lcom/veclink/bracelet/bean/DeviceInfo;
    :pswitch_3
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    # getter for: Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->bleSyncParamsTask:Lcom/veclink/bracelet/bletask/BleSyncParamsTask;
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->access$000()Lcom/veclink/bracelet/bletask/BleSyncParamsTask;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unRegisterObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 127
    # setter for: Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->bleSyncParamsTask:Lcom/veclink/bracelet/bletask/BleSyncParamsTask;
    invoke-static {v7}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->access$002(Lcom/veclink/bracelet/bletask/BleSyncParamsTask;)Lcom/veclink/bracelet/bletask/BleSyncParamsTask;

    .line 128
    sget v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParmasCount:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 129
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParams()V

    goto/16 :goto_0

    .line 131
    :cond_2
    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->queryFirewareVersion()V

    goto/16 :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

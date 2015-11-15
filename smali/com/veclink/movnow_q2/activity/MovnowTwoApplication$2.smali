.class final Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$2;
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
    .line 160
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 163
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 169
    :pswitch_1
    sput-boolean v4, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->canDoTask:Z

    .line 170
    sput v5, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->queryVersonCount:I

    .line 171
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 172
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/veclink/bracelet/bean/DeviceInfo;

    .line 173
    .local v1, "deviceInfo":Lcom/veclink/bracelet/bean/DeviceInfo;
    iget-object v2, v1, Lcom/veclink/bracelet/bean/DeviceInfo;->device_type:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v2, v4}, Lcom/veclink/hw/bleservice/util/Keeper;->setChangeToOldProtocol(Landroid/content/Context;Z)V

    .line 176
    :cond_1
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v2, v4}, Lcom/veclink/hw/bleservice/util/Keeper;->setUserHasBindBand(Landroid/content/Context;Z)V

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action_bind_device_done"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "bindDoneIntent":Landroid/content/Intent;
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v2, v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 183
    .end local v0    # "bindDoneIntent":Landroid/content/Intent;
    .end local v1    # "deviceInfo":Lcom/veclink/bracelet/bean/DeviceInfo;
    :pswitch_2
    sget v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->queryVersonCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 184
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->queryFirewareVersion()V

    goto :goto_0

    .line 186
    :cond_2
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v2, v5}, Lcom/veclink/hw/bleservice/util/Keeper;->setUserHasBindBand(Landroid/content/Context;Z)V

    .line 187
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v2

    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v2, v3}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

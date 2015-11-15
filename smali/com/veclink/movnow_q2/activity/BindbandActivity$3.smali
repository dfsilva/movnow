.class Lcom/veclink/movnow_q2/activity/BindbandActivity$3;
.super Landroid/os/Handler;
.source "BindbandActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/BindbandActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    .line 140
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v6, v6, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    const v8, 0x7f0c0175

    invoke-virtual {v7, v8}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v6, v6, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-boolean v6, v6, Lcom/veclink/healthy/view/BluetoothConnAnimView;->mDragging:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v6, v6, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v6}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->startWaveAnimation()V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v6}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/veclink/healthy/account/HealthyAccountHolder;->unBindDevice(Landroid/content/Context;)V

    .line 148
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v6, v6, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    const v8, 0x7f0c0174

    invoke-virtual {v7, v8}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 149
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v6, v6, Lcom/veclink/movnow_q2/activity/BindbandActivity;->first_bind_tip_view:Landroid/widget/TextView;

    const v7, 0x7f0c017c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v6, v6, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v6}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->stopWaveAnimation()V

    .line 151
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v7}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    goto :goto_0

    .line 154
    :pswitch_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "devicename:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;
    invoke-static {v8}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$200(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Lcom/veclink/movnow_q2/activity/BindbandActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    sget-object v6, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v6, v6, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->bindDeviceWay:I

    if-ne v6, v9, :cond_0

    .line 157
    new-instance v1, Lcom/veclink/bracelet/bletask/BleRequestBindDevice;

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v6}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v7, v7, Lcom/veclink/movnow_q2/activity/BindbandActivity;->requestBindDeviceCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v1, v6, v7}, Lcom/veclink/bracelet/bletask/BleRequestBindDevice;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 158
    .local v1, "bleRequestBindDevice":Lcom/veclink/bracelet/bletask/BleRequestBindDevice;
    invoke-virtual {v1}, Lcom/veclink/bracelet/bletask/BleRequestBindDevice;->work()V

    goto/16 :goto_0

    .line 168
    .end local v1    # "bleRequestBindDevice":Lcom/veclink/bracelet/bletask/BleRequestBindDevice;
    :pswitch_4
    new-instance v0, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v6}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/veclink/bracelet/bletask/BleCallBack;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, v8}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v6, v7}, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 169
    .local v0, "appConfirmBindSuccess":Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;
    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;->work()V

    .line 170
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v6}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/veclink/hw/bleservice/util/Keeper;->setUserHasBindBand(Landroid/content/Context;Z)V

    .line 171
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v6, v6, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectHandler:Landroid/os/Handler;

    new-instance v7, Lcom/veclink/movnow_q2/activity/BindbandActivity$3$1;

    invoke-direct {v7, p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity$3$1;-><init>(Lcom/veclink/movnow_q2/activity/BindbandActivity$3;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 183
    .end local v0    # "appConfirmBindSuccess":Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;
    :pswitch_5
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;
    invoke-static {v6}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$200(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Lcom/veclink/movnow_q2/activity/BindbandActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 184
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;
    invoke-static {v6}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$200(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Lcom/veclink/movnow_q2/activity/BindbandActivity;

    move-result-object v6

    const-class v7, Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "fromBindBand"

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;
    invoke-static {v6}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$200(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Lcom/veclink/movnow_q2/activity/BindbandActivity;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v6}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->finish()V

    goto/16 :goto_0

    .line 189
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 190
    .local v2, "cal":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/veclink/movnow_q2/util/StringUtil;->getMonthFirstDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "startTime":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/veclink/movnow_q2/util/StringUtil;->getMonthLastDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "endTime":Ljava/lang/String;
    sget-object v6, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v6, v5, v3}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncSportData(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v6, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v6, v5, v3}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncSleepData(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;
    invoke-static {v6}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$200(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Lcom/veclink/movnow_q2/activity/BindbandActivity;

    move-result-object v6

    const-class v7, Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "fromBindBand"

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;
    invoke-static {v6}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$200(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Lcom/veclink/movnow_q2/activity/BindbandActivity;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->startActivity(Landroid/content/Intent;)V

    .line 197
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v6}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->finish()V

    goto/16 :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

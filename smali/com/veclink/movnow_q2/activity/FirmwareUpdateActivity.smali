.class public Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "FirmwareUpdateActivity.java"


# static fields
.field private static final DEVICE_CONNECTED:I = 0x21

.field private static final DEVICE_DISCONNECTED:I = 0x22

.field public static final DOWNLOADING_ROM:I = 0x8994

.field public static final EXITSYNC:I = 0x8995

.field public static final GETNEWROMFAIL:I = 0x8992

.field public static final GETNEWROMOVER:I = 0x8991

.field public static final NONEEDEDUPDATE:I = 0x8993


# instance fields
.field filepath:Ljava/lang/String;

.field intentFilter:Landroid/content/IntentFilter;

.field public mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field newVersion:I

.field oldversion:I

.field progress:I

.field receiver:Landroid/content/BroadcastReceiver;

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field updateCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field updateHandler:Landroid/os/Handler;

.field updateOver:Z

.field private update_remind_tip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 69
    iput v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->oldversion:I

    .line 70
    iput v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->newVersion:I

    .line 72
    iput v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->progress:I

    .line 74
    new-instance v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->updateHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->updateHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->updateCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 119
    new-instance v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_sync_params_done"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 163
    new-instance v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$3;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$3;-><init>(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->update_remind_tip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->finishFirwareActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->setCenterTip()V

    return-void
.end method

.method private finishFirwareActivity()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->stopWaveAnimation()V

    .line 285
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->unBindDevice(Landroid/content/Context;)V

    .line 286
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 287
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$5;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$5;-><init>(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    return-void
.end method

.method private getFirmware()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 241
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const-class v2, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2, v3}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 242
    new-instance v0, Lcom/veclink/healthy/business/http/session/HealthyGetNewRomSession;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/veclink/healthy/business/http/session/HealthyGetNewRomSession;-><init>(Landroid/content/Context;)V

    .line 243
    .local v0, "session":Lcom/veclink/healthy/business/http/session/HealthyGetNewRomSession;
    invoke-static {p0, v0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    .line 244
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 205
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 206
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->update_remind_tip:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    .line 208
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    new-instance v1, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$4;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$4;-><init>(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setControListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->setCenterTip()V

    .line 220
    return-void
.end method

.method private setCenterTip()V
    .locals 3

    .prologue
    const v2, 0x7f0c011e

    .line 227
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 230
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mContext:Landroid/content/Context;

    .line 184
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->setContentView(I)V

    .line 185
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_GATT_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_GATT_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->initView()V

    .line 189
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->startAnimation()V

    .line 192
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onDestroy()V

    .line 200
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->updatePostExceute()V

    .line 202
    return-void
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;)V
    .locals 11
    .param p1, "response"    # Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;

    .prologue
    const v10, 0x8993

    const/4 v9, 0x1

    const v8, 0x8992

    const/4 v7, 0x0

    .line 247
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;

    aput-object v6, v5, v7

    invoke-virtual {v4, p0, v5}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 248
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 249
    .local v1, "msg":Landroid/os/Message;
    const-string v4, "GetBraceletRomReponse"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;->getError()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    :try_start_0
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceRomVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->oldversion:I

    .line 253
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->newVersion:I

    .line 254
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current rom version\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->oldversion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server rom version\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->newVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    iget v4, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->newVersion:I

    iget v5, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->oldversion:I

    if-le v4, v5, :cond_0

    .line 261
    new-instance v3, Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;-><init>(Landroid/os/Handler;)V

    .line 262
    .local v3, "task":Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;->getToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 278
    .end local v3    # "task":Lcom/veclink/healthy/task/DownLoadBraceleteRomTask;
    :goto_1
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    iput v8, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput v10, v1, Landroid/os/Message;->what:I

    goto :goto_1

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;->getSubErrors()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 268
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;->getSubErrors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/business/http/pojo/SubError;

    .line 269
    .local v2, "subError":Lcom/veclink/healthy/business/http/pojo/SubError;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/veclink/healthy/business/http/pojo/SubError;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "isv.bracelet-firmwareupgrade-service-error:NO_FIRMWARE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    iput v10, v1, Landroid/os/Message;->what:I

    goto :goto_1

    .line 272
    :cond_2
    iput v8, v1, Landroid/os/Message;->what:I

    goto :goto_1

    .line 275
    .end local v2    # "subError":Lcom/veclink/healthy/business/http/pojo/SubError;
    :cond_3
    iput v8, v1, Landroid/os/Message;->what:I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 300
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-boolean v1, v1, Lcom/veclink/healthy/view/BluetoothConnAnimView;->mDragging:Z

    if-ne v1, v0, :cond_0

    .line 304
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setClickable(Z)V

    .line 234
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->startWaveAnimation()V

    .line 235
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getFirmware()V

    .line 237
    return-void
.end method

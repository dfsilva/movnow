.class public Lcom/veclink/movnow_q2/activity/BindbandActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "BindbandActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = "EXTRA_DEVICE_ADDRESS"

.field public static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "EXTRA_DEVICE_NAME"

.field public static final FILTERNAME:Ljava/lang/String;

.field public static final RESULT_CODE:I = 0x1f


# instance fields
.field private final BIND_DEVICE_SUCCESS:I

.field private final CANBINDDURATION:J

.field private final CAN_CONNECT_MIN_RSSI:I

.field private final DERECIT_CONNECT_MIN_RSSI:I

.field private final DEVICE_CAN_BEBINDED:I

.field private final DEVICE_CONNECTED:I

.field private final DEVICE_DISCONNECTED:I

.field private final DEVICE_SYNCPARAMSDONE:I

.field private final USER_HAS_CLICK_DEVICE:I

.field private bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;

.field cannot_bind_view:Landroid/widget/TextView;

.field connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

.field connectHandler:Landroid/os/Handler;

.field deviceInfoReceiver:Landroid/content/BroadcastReceiver;

.field private devicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/bracelet/bean/BluetoothDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private exitTime:J

.field first_bind_tip_view:Landroid/widget/TextView;

.field hasDoBind:Z

.field intentFilter:Landroid/content/IntentFilter;

.field not_bind_band_first:Landroid/widget/Button;

.field requestBindDeviceCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field requestBindDeviceHandler:Landroid/os/Handler;

.field scanBleDeviceHandler:Landroid/os/Handler;

.field scanDeviceCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->FILTERNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 56
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->CANBINDDURATION:J

    .line 57
    const/16 v0, 0x21

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->DEVICE_CONNECTED:I

    .line 58
    const/16 v0, 0x22

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->DEVICE_DISCONNECTED:I

    .line 59
    const/16 v0, 0x23

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->DEVICE_SYNCPARAMSDONE:I

    .line 60
    const/16 v0, 0x24

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->DEVICE_CAN_BEBINDED:I

    .line 61
    const/16 v0, 0x25

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->USER_HAS_CLICK_DEVICE:I

    .line 62
    const/16 v0, 0x26

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->BIND_DEVICE_SUCCESS:I

    .line 63
    const/16 v0, -0x3c

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->DERECIT_CONNECT_MIN_RSSI:I

    .line 64
    const/16 v0, -0x64

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->CAN_CONNECT_MIN_RSSI:I

    .line 66
    new-instance v0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanBleDeviceHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/veclink/movnow_q2/activity/BindbandActivity$2;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->requestBindDeviceHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;-><init>(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectHandler:Landroid/os/Handler;

    .line 204
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanBleDeviceHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanDeviceCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 205
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->requestBindDeviceHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->requestBindDeviceCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_sync_params_done"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 207
    new-instance v0, Lcom/veclink/movnow_q2/activity/BindbandActivity$4;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity$4;-><init>(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->deviceInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/BindbandActivity;Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/BindbandActivity;
    .param p1, "x1"    # Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectBand(Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)V

    return-void
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/BindbandActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->devicesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/veclink/movnow_q2/activity/BindbandActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/BindbandActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->devicesList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Lcom/veclink/movnow_q2/activity/BindbandActivity;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/BindbandActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/BindbandActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->searchBand()V

    return-void
.end method

.method private connectBand(Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)V
    .locals 6
    .param p1, "device"    # Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    .prologue
    .line 299
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    invoke-virtual {v2}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->stopScanTask()V

    .line 301
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .line 303
    :cond_0
    invoke-virtual {p1}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->getDevice_address()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->getDevice_name()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "name":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/veclink/hw/bleservice/util/Keeper;->setBindDeviceMacAddress(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    invoke-static {p0, v1}, Lcom/veclink/hw/bleservice/util/Keeper;->setBindDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 308
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    new-instance v4, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;

    invoke-direct {v4}, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->bindService(Landroid/app/Application;Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;)V

    .line 309
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->registerObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 310
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->setAutoReConnect(Z)V

    .line 311
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->hasDoBind:Z

    .line 312
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->not_bind_band_first:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    const v3, 0x7f0c0173

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->requestBindDeviceHandler:Landroid/os/Handler;

    new-instance v3, Lcom/veclink/movnow_q2/activity/BindbandActivity$6;

    invoke-direct {v3, p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity$6;-><init>(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    return-void
.end method

.method private initReciver()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_GATT_SERVICES_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_GATT_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_DATA_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_USER_HAD_CLICK_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "action_bind_device_done"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->deviceInfoReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 250
    const v0, 0x7f06007a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    .line 251
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    new-instance v1, Lcom/veclink/movnow_q2/activity/BindbandActivity$5;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity$5;-><init>(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v0, 0x7f06007b

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->cannot_bind_view:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f06007c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->first_bind_tip_view:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f06007d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->not_bind_band_first:Landroid/widget/Button;

    .line 263
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->not_bind_band_first:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 264
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->cannot_bind_view:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->not_bind_band_first:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-void
.end method

.method private searchBand()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    new-instance v0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanDeviceCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v0, p0, v1}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;-><init>(Landroid/app/Activity;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .line 292
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->setScan_timeout(J)V

    .line 293
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 294
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->startWaveAnimation()V

    .line 295
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    const v1, 0x7f0c0116

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 296
    return-void
.end method


# virtual methods
.method public enabledBlueAndSearchBand()V
    .locals 5

    .prologue
    .line 355
    const-string v3, "bluetooth"

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 356
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 357
    .local v2, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 358
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "enableBtIntent":Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 365
    .end local v1    # "enableBtIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 362
    :cond_0
    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getActivityManager()Lcom/veclink/movnow_q2/util/MyActivityManager;

    move-result-object v3

    sget-object v4, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/util/MyActivityManager;->popActivity(Landroid/app/Activity;)V

    .line 363
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->searchBand()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 371
    invoke-super {p0, p1, p2, p3}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 372
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->searchBand()V

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_0
    const v0, 0x7f0c018a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 332
    :pswitch_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    invoke-virtual {v1}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->stopScanTask()V

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Keeper;->setUserHasBindBand(Landroid/content/Context;Z)V

    .line 334
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/veclink/hw/bleservice/util/Keeper;->setBindDeviceMacAddress(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/veclink/hw/bleservice/util/Keeper;->setBindDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 337
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    const-class v2, Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->startActivity(Landroid/content/Intent;)V

    .line 339
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->finish()V

    goto :goto_0

    .line 342
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->searchBand()V

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x7f06007b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->setContentView(I)V

    .line 231
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    .line 232
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->initReciver()V

    .line 233
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->initView()V

    .line 234
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->enabledBlueAndSearchBand()V

    .line 236
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onDestroy()V

    .line 286
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->deviceInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    .line 384
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->exitTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0177

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->exitTime:J

    .line 399
    :goto_0
    const/4 v1, 0x1

    .line 401
    :goto_1
    return v1

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    invoke-virtual {v1}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->stopScanTask()V

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/veclink/hw/bleservice/util/Keeper;->setUserHasBindBand(Landroid/content/Context;Z)V

    .line 391
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/veclink/hw/bleservice/util/Keeper;->setBindDeviceMacAddress(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/veclink/hw/bleservice/util/Keeper;->setBindDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 394
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 395
    .local v0, "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    invoke-virtual {v0, v5}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncSleepData(Z)V

    .line 396
    invoke-virtual {v0, v5}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncStepData(Z)V

    .line 397
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getActivityManager()Lcom/veclink/movnow_q2/util/MyActivityManager;

    move-result-object v1

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/util/MyActivityManager;->popAllActivityExceptOne(Ljava/lang/Class;)V

    goto :goto_0

    .line 401
    .end local v0    # "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onPause()V

    .line 274
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getUserHasBindBand(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 276
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->unBindDevice(Landroid/content/Context;)V

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->finish()V

    .line 279
    return-void
.end method

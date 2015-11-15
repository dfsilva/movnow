.class public Lcom/veclink/hw/bleservice/VLBleService;
.super Landroid/app/Service;
.source "VLBleService.java"

# interfaces
.implements Lcom/veclink/hw/bleservice/DeviceReponseObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;,
        Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;,
        Lcom/veclink/hw/bleservice/VLBleService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_AVAILABLE:Ljava/lang/String; = "ACTION_DATA_AVAILABLE"

.field public static final ACTION_DEVICE_FIND_PHONE:Ljava/lang/String; = "ACTION_DEVICE_FIND_PHONE"

.field public static final ACTION_DIAL_FAMILY_NUMBERS:Ljava/lang/String; = "ACTION_DIAL_FAMILY_NUMBERS"

.field public static final ACTION_GATT_CONNECTED:Ljava/lang/String; = "ACTION_GATT_CONNECTED"

.field public static final ACTION_GATT_DISCONNECTED:Ljava/lang/String; = "ACTION_GATT_DISCONNECTED"

.field public static final ACTION_GATT_RSSI:Ljava/lang/String; = "ACTION_GATT_RSSI"

.field public static final ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String; = "ACTION_GATT_SERVICES_DISCOVERED"

.field public static final ACTION_HANDOFF_COMINGCALL:Ljava/lang/String; = "ACTION_HANDOFF_COMINGCALL"

.field public static final ACTION_LONGSIITING_REMIND:Ljava/lang/String; = "ACTION_LONGSIITING_REMIND"

.field public static final ACTION_POWER_CHANGE_DATA:Ljava/lang/String; = "ACTION_POWER_CHANGE_DATA"

.field public static final ACTION_SHORT_SPORT_DATA:Ljava/lang/String; = "ACTION_SHORT_SPORT_DATA"

.field public static final ACTION_USER_HAD_CLICK_DEVICE:Ljava/lang/String; = "ACTION_USER_HAD_CLICK_DEVICE"

.field public static final CAMERA_CTR_ACTION:Ljava/lang/String; = "net.bestouch.caretracker.cameraCtrActivity.action.CAMERA_CTR_ACTION"

.field public static final EXTRA_DATA:Ljava/lang/String; = "EXTRA_DATA"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public UUID_BLE_SHIELD_RX:Ljava/util/UUID;

.field public UUID_BLE_SHIELD_SERVICE:Ljava/util/UUID;

.field public UUID_BLE_SHIELD_TX:Ljava/util/UUID;

.field private autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

.field private autoReConnect:Z

.field private bluetoothBroadcastReceiver:Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;

.field private bluetoothEnable:Z

.field public characteristicMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private controlPlayer:Lcom/veclink/hw/bleservice/ControlPlayer;

.field private deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

.field handler:Landroid/os/Handler;

.field private isConnected:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDeviceAddress:Ljava/lang/String;

.field public mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private observerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/hw/bleservice/DeviceReponseObserver;",
            ">;"
        }
    .end annotation
.end field

.field private onFindSupportService:Z

.field pm:Landroid/os/PowerManager;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->observerList:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->characteristicMap:Ljava/util/Map;

    .line 93
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    sget-object v0, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_TX:Ljava/util/UUID;

    .line 95
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    sget-object v0, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_RX:Ljava/util/UUID;

    .line 97
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    sget-object v0, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_SERVICE:Ljava/util/UUID;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->autoReConnect:Z

    .line 105
    new-instance v0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;-><init>(Lcom/veclink/hw/bleservice/VLBleService;)V

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->bluetoothBroadcastReceiver:Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->bluetoothEnable:Z

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->handler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/veclink/hw/bleservice/VLBleService$1;

    invoke-direct {v0, p0}, Lcom/veclink/hw/bleservice/VLBleService$1;-><init>(Lcom/veclink/hw/bleservice/VLBleService;)V

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 405
    new-instance v0, Lcom/veclink/hw/bleservice/VLBleService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/veclink/hw/bleservice/VLBleService$LocalBinder;-><init>(Lcom/veclink/hw/bleservice/VLBleService;)V

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBinder:Landroid/os/IBinder;

    .line 847
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/hw/bleservice/VLBleService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->onFindSupportService:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/veclink/hw/bleservice/VLBleService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/veclink/hw/bleservice/VLBleService;->onFindSupportService:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/veclink/hw/bleservice/VLBleService;Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p1, "x1"    # Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/veclink/hw/bleservice/VLBleService;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/ControlPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->controlPlayer:Lcom/veclink/hw/bleservice/ControlPlayer;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/veclink/hw/bleservice/VLBleService;Lcom/veclink/hw/bleservice/ControlPlayer;)Lcom/veclink/hw/bleservice/ControlPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p1, "x1"    # Lcom/veclink/hw/bleservice/ControlPlayer;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/veclink/hw/bleservice/VLBleService;->controlPlayer:Lcom/veclink/hw/bleservice/ControlPlayer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/veclink/hw/bleservice/VLBleService;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/veclink/hw/bleservice/VLBleService;->sendCameraCtr()V

    return-void
.end method

.method static synthetic access$1500(Lcom/veclink/hw/bleservice/VLBleService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/hw/bleservice/VLBleService;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/veclink/hw/bleservice/VLBleService;->sendDeviceDisConnectMsg()V

    return-void
.end method

.method static synthetic access$302(Lcom/veclink/hw/bleservice/VLBleService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/veclink/hw/bleservice/VLBleService;->isConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/veclink/hw/bleservice/VLBleService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->autoReConnect:Z

    return v0
.end method

.method static synthetic access$500(Lcom/veclink/hw/bleservice/VLBleService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->bluetoothEnable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/veclink/hw/bleservice/VLBleService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/veclink/hw/bleservice/VLBleService;->bluetoothEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/veclink/hw/bleservice/VLBleService;Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p1, "x1"    # Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/veclink/hw/bleservice/VLBleService;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/veclink/hw/bleservice/VLBleService;->getGattService(Landroid/bluetooth/BluetoothGattService;)V

    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/veclink/hw/bleservice/VLBleService;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;I)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "rssi"    # I

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_DATA"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, v0}, Lcom/veclink/hw/bleservice/VLBleService;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x4

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_RX:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    .line 309
    .local v2, "rx":[B
    const-string v5, "ACTION_SHORT_SPORT_DATA"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    array-length v5, v2

    if-le v5, v8, :cond_1

    .line 310
    new-array v3, v7, [B

    const/4 v5, 0x0

    aget-byte v6, v2, v7

    aput-byte v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x5

    aget-byte v6, v2, v6

    aput-byte v6, v3, v5

    const/4 v5, 0x2

    const/4 v6, 0x6

    aget-byte v6, v2, v6

    aput-byte v6, v3, v5

    const/4 v5, 0x3

    aget-byte v6, v2, v8

    aput-byte v6, v3, v5

    .line 311
    .local v3, "sportArray":[B
    invoke-virtual {p0, v3}, Lcom/veclink/hw/bleservice/VLBleService;->bytesToInt([B)I

    move-result v4

    .line 312
    .local v4, "sportStep":I
    const-string v5, "VLBleService sendACTION_SHORT_SPORT_DATA:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v5, "EXTRA_DATA"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    .end local v2    # "rx":[B
    .end local v3    # "sportArray":[B
    .end local v4    # "sportStep":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/veclink/hw/bleservice/VLBleService;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    return-void

    .line 314
    .restart local v2    # "rx":[B
    :cond_1
    const-string v5, "ACTION_POWER_CHANGE_DATA"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 315
    aget-byte v5, v2, v7

    and-int/lit16 v1, v5, 0xff

    .line 316
    .local v1, "powerValue":I
    const-string v5, "VLBleService ACTION_POWER_CHANGE_DATA:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v5, "EXTRA_DATA"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 319
    .end local v1    # "powerValue":I
    :cond_2
    const-string v5, "EXTRA_DATA"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getGattService(Landroid/bluetooth/BluetoothGattService;)V
    .locals 4
    .param p1, "gattService"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 620
    if-nez p1, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    const-string v2, "getGattService \u83b7\u53d6\u8bfb\u5199\u670d\u52a1"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_TX:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 625
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->characteristicMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_RX:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 629
    .local v1, "characteristicRx":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->characteristicMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    instance-of v2, v2, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;

    if-nez v2, :cond_0

    .line 633
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/veclink/hw/bleservice/VLBleService;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 635
    invoke-virtual {p0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0
.end method

.method private sendCameraCtr()V
    .locals 2

    .prologue
    .line 649
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 650
    .local v0, "localintent":Landroid/content/Intent;
    const-string v1, "net.bestouch.caretracker.cameraCtrActivity.action.CAMERA_CTR_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    invoke-virtual {p0, v0}, Lcom/veclink/hw/bleservice/VLBleService;->sendBroadcast(Landroid/content/Intent;)V

    .line 653
    return-void
.end method

.method private sendDeviceDisConnectMsg()V
    .locals 3

    .prologue
    .line 823
    const-string v0, "ACTION_GATT_DISCONNECTED"

    .line 824
    .local v0, "intentAction":Ljava/lang/String;
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v2, "Disconnected from GATT server."

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-direct {p0, v0}, Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;)V

    .line 826
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->isConnected:Z

    .line 827
    invoke-virtual {p0}, Lcom/veclink/hw/bleservice/VLBleService;->deviceDisConnect()V

    .line 828
    return-void
.end method

.method private waitResponse(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 831
    div-int/lit8 p1, p1, 0xa

    .line 832
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 833
    iget-boolean v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->isConnected:Z

    if-nez v1, :cond_0

    .line 835
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 843
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    if-lez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public acquirePowerLock()V
    .locals 3

    .prologue
    .line 757
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->pm:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/veclink/hw/bleservice/VLBleService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->pm:Landroid/os/PowerManager;

    .line 761
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->pm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "VLBleService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->wl:Landroid/os/PowerManager$WakeLock;

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bytesToInt([B)I
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 328
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v0, v1, 0xff

    .line 330
    .local v0, "addr":I
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 332
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 334
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 336
    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect device address is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 452
    iput-boolean v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->onFindSupportService:Z

    .line 453
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    :cond_0
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v3, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput-boolean v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->isConnected:Z

    .line 457
    iget-boolean v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->isConnected:Z

    .line 475
    :goto_0
    return v1

    .line 459
    :cond_1
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_2

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBluetoothGatt is not null reconnect device address is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v1

    goto :goto_0

    .line 463
    :cond_2
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 465
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_3

    .line 466
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v3, "Device not found.  Unable to connect."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iput-boolean v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->isConnected:Z

    goto :goto_0

    .line 471
    :cond_3
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 472
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v2, "Trying to create a new connection."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iput-object p1, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothDeviceAddress:Ljava/lang/String;

    .line 475
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public deviceConnected()V
    .locals 3

    .prologue
    .line 700
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->observerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    .line 701
    .local v1, "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    invoke-interface {v1}, Lcom/veclink/hw/bleservice/DeviceReponseObserver;->deviceConnected()V

    goto :goto_0

    .line 704
    .end local v1    # "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    :cond_0
    return-void
.end method

.method public deviceDisConnect()V
    .locals 3

    .prologue
    .line 693
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->observerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    .line 694
    .local v1, "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    invoke-interface {v1}, Lcom/veclink/hw/bleservice/DeviceReponseObserver;->deviceDisConnect()V

    goto :goto_0

    .line 696
    .end local v1    # "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    :cond_0
    return-void
.end method

.method public deviceOnCharacteristicChange(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 731
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->observerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    .line 732
    .local v1, "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    invoke-interface {v1, p1, p2}, Lcom/veclink/hw/bleservice/DeviceReponseObserver;->deviceOnCharacteristicChange(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    .line 734
    .end local v1    # "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    :cond_0
    return-void
.end method

.method public deviceOnCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 712
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->observerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    .line 713
    .local v1, "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    invoke-interface {v1, p1, p2, p3}, Lcom/veclink/hw/bleservice/DeviceReponseObserver;->deviceOnCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    goto :goto_0

    .line 716
    .end local v1    # "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    :cond_0
    return-void
.end method

.method public deviceOnCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 720
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->observerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    .line 721
    .local v1, "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    invoke-interface {v1, p1, p2, p3}, Lcom/veclink/hw/bleservice/DeviceReponseObserver;->deviceOnCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    goto :goto_0

    .line 724
    .end local v1    # "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    :cond_0
    return-void
.end method

.method public deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 739
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->observerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    .line 740
    .local v1, "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    invoke-interface {v1, p1, p2}, Lcom/veclink/hw/bleservice/DeviceReponseObserver;->deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_0

    .line 742
    .end local v1    # "observer":Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    :cond_0
    return-void
.end method

.method public disCoverServices()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 493
    :cond_0
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 484
    :cond_0
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->isConnected:Z

    goto :goto_0
.end method

.method public getOneSupportedGattService()Landroid/bluetooth/BluetoothGattService;
    .locals 4

    .prologue
    .line 577
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_1

    .line 578
    const/4 v0, 0x0

    .line 614
    :cond_0
    :goto_0
    return-object v0

    .line 579
    :cond_1
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    instance-of v2, v2, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;

    if-eqz v2, :cond_3

    .line 580
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_SERVICE:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 581
    .local v0, "bluetoothGattService":Landroid/bluetooth/BluetoothGattService;
    if-nez v0, :cond_2

    .line 582
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    check-cast v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;

    .line 583
    .local v1, "braceletGattAttributes":Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;
    invoke-static {}, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->setPrimaryGattAttributesConfig()V

    .line 585
    sput-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    .line 586
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    sget-object v2, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_TX:Ljava/util/UUID;

    .line 588
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    sget-object v2, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_RX:Ljava/util/UUID;

    .line 590
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    sget-object v2, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_SERVICE:Ljava/util/UUID;

    .line 592
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_SERVICE:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 596
    .end local v1    # "braceletGattAttributes":Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;
    :cond_2
    if-nez v0, :cond_0

    .line 597
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    check-cast v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;

    .line 598
    .restart local v1    # "braceletGattAttributes":Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;
    invoke-static {}, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->setSecondGattAttributesConfig()V

    .line 599
    sput-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    .line 600
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    sget-object v2, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_TX:Ljava/util/UUID;

    .line 602
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    sget-object v2, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_RX:Ljava/util/UUID;

    .line 604
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    sget-object v2, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_SERVICE:Ljava/util/UUID;

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSecondGattAttributesConfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_SERVICE:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 607
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_SERVICE:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    goto/16 :goto_0

    .line 614
    .end local v0    # "bluetoothGattService":Landroid/bluetooth/BluetoothGattService;
    .end local v1    # "braceletGattAttributes":Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;
    :cond_3
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_SERVICE:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getSupportedGattServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 643
    const/4 v0, 0x0

    .line 645
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getmBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public initialize()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 426
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/veclink/hw/bleservice/VLBleService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 427
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 428
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to initialize BluetoothManager."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 439
    :goto_0
    return v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 434
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 435
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 436
    goto :goto_0

    .line 439
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAutoReConnect()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->autoReConnect:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->isConnected:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 351
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->bluetoothEnable:Z

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->bluetoothBroadcastReceiver:Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/veclink/hw/bleservice/VLBleService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    const-string v1, "vlbservice onCreate"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 380
    invoke-virtual {p0}, Lcom/veclink/hw/bleservice/VLBleService;->close()V

    .line 381
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->bluetoothBroadcastReceiver:Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/veclink/hw/bleservice/VLBleService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    const-string v0, "vlbservice onDestroy"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/veclink/hw/bleservice/VLBleService;->releasePowerLock()V

    .line 384
    invoke-direct {p0}, Lcom/veclink/hw/bleservice/VLBleService;->sendDeviceDisConnectMsg()V

    .line 385
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 369
    const-string v0, "VLBService log"

    const-string v1, "vlbservice onStartCommand fla"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Lcom/veclink/hw/bleservice/VLBleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/hw/devicetype/DeviceProductFactory;->createDeviceProduct(Ljava/lang/String;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    .line 371
    iget-boolean v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->isConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v0, v0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowKeptView:I

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/veclink/hw/bleservice/VLBleService;->connect(Ljava/lang/String;)Z

    .line 374
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/veclink/hw/bleservice/VLBleService;->close()V

    .line 402
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 520
    :cond_0
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

.method public readRssi()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 529
    :cond_0
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    goto :goto_0
.end method

.method public registerObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->observerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    return-void
.end method

.method public releasePowerLock()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->wl:Landroid/os/PowerManager$WakeLock;

    .line 777
    :cond_0
    return-void
.end method

.method public setAutoReConnect(Z)V
    .locals 0
    .param p1, "autoConnect"    # Z

    .prologue
    .line 784
    iput-boolean p1, p0, Lcom/veclink/hw/bleservice/VLBleService;->autoReConnect:Z

    .line 785
    return-void
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enabled"    # Z

    .prologue
    .line 555
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_1

    .line 556
    :cond_0
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v2, "BluetoothAdapter not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 561
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 564
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 566
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0
.end method

.method public setSuotaCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enabled"    # Z

    .prologue
    .line 658
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_2

    .line 660
    :cond_0
    const-string v2, "zznkey"

    const-string v3, "BluetoothAdapter not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    sget-object v2, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 668
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    sget-object v2, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 671
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v0, :cond_3

    .line 673
    const-string v2, "zznkey"

    const-string v3, "setCharacteristicNotification:descriptor = null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 677
    :cond_3
    if-eqz p2, :cond_4

    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_1
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 680
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    .line 681
    .local v1, "result":Z
    const-string v2, "zznkey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCharacteristicNotification:result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 677
    .end local v1    # "result":Z
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    goto :goto_1

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public unRegisterAllObserver()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->observerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 754
    return-void
.end method

.method public unRegisterObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    .prologue
    .line 749
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->observerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 750
    return-void
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 538
    :cond_0
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

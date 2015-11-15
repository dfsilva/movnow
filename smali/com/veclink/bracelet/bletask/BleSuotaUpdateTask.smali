.class public Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;
.super Ljava/lang/Object;
.source "BleSuotaUpdateTask.java"

# interfaces
.implements Lcom/veclink/hw/bleservice/DeviceReponseObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field protected static mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

.field public static observer:Lcom/veclink/hw/bleservice/DeviceReponseObserver;


# instance fields
.field protected bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field private canUpdate:Z

.field private filePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeviceAddress:Ljava/lang/String;

.field private updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p3, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->filePath:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 41
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mDeviceAddress:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;)Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;
    .param p1, "x1"    # Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->canUpdate:Z

    return v0
.end method

.method static synthetic access$400(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;I)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->waitSleep(I)V

    return-void
.end method

.method public static unregisterObserver()V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    sget-object v1, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->observer:Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->unRegisterObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 110
    :cond_0
    return-void
.end method

.method private waitSleep(I)V
    .locals 3
    .param p1, "millSeconds"    # I

    .prologue
    .line 122
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public deviceConnected()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public deviceDisConnect()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public deviceOnCharacteristicChange(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 174
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    invoke-virtual {v0, p2}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->onSuotaServiceStatusChange(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v1, v1, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_RX:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->parseData([B)V

    goto :goto_0
.end method

.method public deviceOnCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 160
    if-nez p3, :cond_0

    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->canUpdate:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    invoke-virtual {v0, p2}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 164
    :cond_0
    return-void
.end method

.method public deviceOnCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->canUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    invoke-virtual {v0, p3}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->onCharacteristicWriteStatus(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 188
    if-nez p2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->onServicesReady(Z)V

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->onServicesReady(Z)V

    goto :goto_0
.end method

.method public doWork()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;

    invoke-direct {v0, p0}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;-><init>(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)V

    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->start()V

    .line 100
    return-void
.end method

.method protected parseData([B)V
    .locals 4
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 148
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v3

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v2

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    if-ne v0, v2, :cond_0

    .line 150
    iput-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->canUpdate:Z

    .line 151
    const-string v0, "\u6536\u5230\u51c6\u5907\u5347\u7ea7\u6210\u529f\u56de\u5e94"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->canUpdate:Z

    goto :goto_0
.end method

.method public registerObserver()V
    .locals 1

    .prologue
    .line 103
    sput-object p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->observer:Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    .line 104
    sget-object v0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0, p0}, Lcom/veclink/hw/bleservice/VLBleService;->registerObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 106
    :cond_0
    return-void
.end method

.method public sendCmdToBleDevice([B)V
    .locals 3
    .param p1, "cmdParamArrayOfByte"    # [B

    .prologue
    .line 113
    sget-object v1, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v1, v1, Lcom/veclink/hw/bleservice/VLBleService;->characteristicMap:Ljava/util/Map;

    sget-object v2, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v2, v2, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_TX:Ljava/util/UUID;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 115
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 116
    sget-object v1, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1, v0}, Lcom/veclink/hw/bleservice/VLBleService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 118
    return-void
.end method

.method public waitResponse(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 130
    div-int/lit8 p1, p1, 0xa

    .line 131
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 132
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->canUpdate:Z

    if-nez v1, :cond_0

    .line 134
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 142
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

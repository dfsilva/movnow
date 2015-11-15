.class public abstract Lcom/veclink/bracelet/bletask/BleTask;
.super Ljava/lang/Object;
.source "BleTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/veclink/hw/bleservice/DeviceReponseObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT_ERROR:I = -0x64

.field public static final DEVICE_NO_RESPONSE_ERROR:I = -0x65

.field public static final PARSE_FIAL:I = -0x63

.field public static final PARSE_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BleTask"

.field public static final USER_STOP_TASK:I = -0x66

.field protected static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public static taskExecutorService:Ljava/util/concurrent/ExecutorService;

.field public static updateing:Z


# instance fields
.field private final CONNECT_BLEDEVICE_TIMEOUT:J

.field private final CONNECT_BLESERVICE_TIMEOUT:J

.field protected final TRANSPORT_DATA_TIME:J

.field protected bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field protected bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

.field private bleTask:Lcom/veclink/bracelet/bletask/BleTask;

.field protected isConnected:Z

.field protected isStopTask:Z

.field protected mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

.field protected mContext:Landroid/content/Context;

.field protected mDeviceAddress:Ljava/lang/String;

.field protected mDeviceRespondOk:Z

.field protected receiveDataArray:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->CONNECT_BLESERVICE_TIMEOUT:J

    .line 51
    const-wide/16 v1, 0x1f40

    iput-wide v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->CONNECT_BLEDEVICE_TIMEOUT:J

    .line 52
    const-wide/16 v1, 0x4e20

    iput-wide v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->TRANSPORT_DATA_TIME:J

    .line 123
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleTask;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 125
    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->mDeviceAddress:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getVLBleService()Lcom/veclink/hw/bleservice/VLBleService;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    .line 127
    sget-object v1, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 129
    .local v0, "mBluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sput-object v1, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 132
    .end local v0    # "mBluetoothManager":Landroid/bluetooth/BluetoothManager;
    :cond_0
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    instance-of v1, v1, Lcom/veclink/hw/bleservice/profile/OldBraceletGattAttributes;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Keeper;->getChangeToOldProtocol(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    :cond_1
    new-instance v1, Lcom/veclink/hw/bledevice/BraceletOldDevice;

    invoke-direct {v1, p1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    .line 140
    :goto_0
    return-void

    .line 134
    :cond_2
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    instance-of v1, v1, Lcom/veclink/hw/bleservice/profile/WaterCupGattAttributes;

    if-eqz v1, :cond_3

    .line 135
    new-instance v1, Lcom/veclink/hw/bledevice/WaterCupDevice;

    invoke-direct {v1, p1}, Lcom/veclink/hw/bledevice/WaterCupDevice;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    goto :goto_0

    .line 137
    :cond_3
    new-instance v1, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    invoke-direct {v1, p1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    goto :goto_0
.end method


# virtual methods
.method public deviceConnected()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleTask;->isConnected:Z

    .line 76
    return-void
.end method

.method public deviceDisConnect()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleTask;->isConnected:Z

    .line 72
    return-void
.end method

.method public deviceOnCharacteristicChange(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 97
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleTask;->receiveDataArray:[B

    .line 98
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTask;->receiveDataArray:[B

    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleTask;->parseData([B)I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleTask;->mDeviceRespondOk:Z

    .line 101
    :cond_0
    return-void
.end method

.method public deviceOnCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 85
    return-void
.end method

.method public deviceOnCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 91
    return-void
.end method

.method public deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 107
    return-void
.end method

.method public abstract doWork()V
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 227
    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 230
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerObserver()V
    .locals 2

    .prologue
    .line 250
    iput-object p0, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleTask:Lcom/veclink/bracelet/bletask/BleTask;

    .line 251
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleTask:Lcom/veclink/bracelet/bletask/BleTask;

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->registerObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 252
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1f40

    const/4 v8, 0x0

    const/16 v7, -0x64

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 148
    .local v1, "startTime":J
    sget-object v3, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    const-string v3, "\u6ca1\u6709\u5f00\u542f\u84dd\u7259\uff0c\u4efb\u52a1\u5931\u8d25\uff01"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleTask;->unregisterObserver()V

    .line 151
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 152
    iput-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleTask;->isConnected:Z

    .line 204
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-nez v3, :cond_1

    .line 156
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getVLBleService()Lcom/veclink/hw/bleservice/VLBleService;

    move-result-object v3

    iput-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 158
    const-string v3, "\u8fde\u63a5bleservice\uff0c\u8d85\u65f6\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleTask;->unregisterObserver()V

    .line 160
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 166
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v3}, Lcom/veclink/hw/bleservice/VLBleService;->isConnected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->isConnected:Z

    .line 167
    :cond_2
    iget-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->isConnected:Z

    if-nez v3, :cond_3

    .line 168
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v3}, Lcom/veclink/hw/bleservice/VLBleService;->disconnect()V

    .line 169
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v3}, Lcom/veclink/hw/bleservice/VLBleService;->close()V

    .line 170
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleTask;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/veclink/hw/bleservice/VLBleService;->connect(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->isConnected:Z

    .line 171
    const-string v3, "\u8fde\u63a5\u84dd\u7259\u8bbe\u5907isConnected"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long v3, v3, v9

    if-lez v3, :cond_2

    .line 173
    const-string v3, "\u8fde\u63a5\u84dd\u7259\u8bbe\u5907\u8d85\u65f6\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleTask;->unregisterObserver()V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v3, v3, Lcom/veclink/hw/bleservice/VLBleService;->characteristicMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v4, v4, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_TX:Ljava/util/UUID;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 183
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 184
    :cond_4
    if-nez v0, :cond_6

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long v3, v3, v9

    if-lez v3, :cond_4

    .line 186
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v3, v3, Lcom/veclink/hw/bleservice/VLBleService;->characteristicMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v4, v4, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_TX:Ljava/util/UUID;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 188
    .restart local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const-string v3, "\u83b7\u53d6\u8bfb\u5199\u670d\u52a1\u8d85\u65f6\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 190
    iput-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleTask;->isConnected:Z

    .line 191
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_5

    .line 192
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v4

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 193
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v4

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    sget-object v5, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    invoke-virtual {v4, v3, v5}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->bindService(Landroid/app/Application;Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;)V

    .line 195
    :cond_5
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleTask;->unregisterObserver()V

    goto/16 :goto_0

    .line 200
    :cond_6
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleTask;->registerObserver()V

    .line 201
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnStartMessage(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleTask;->doWork()V

    .line 203
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleTask;->unregisterObserver()V

    goto/16 :goto_0
.end method

.method public sendCmdToBleDevice([B)V
    .locals 3
    .param p1, "cmdParamArrayOfByte"    # [B

    .prologue
    .line 111
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v1, v1, Lcom/veclink/hw/bleservice/VLBleService;->characteristicMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v2, v2, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_TX:Ljava/util/UUID;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 113
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->isConnected:Z

    if-nez v1, :cond_1

    .line 114
    :cond_0
    const-string v1, "characteristic is null sendCmdToBleDevice fial"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 118
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1, v0}, Lcom/veclink/hw/bleservice/VLBleService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0
.end method

.method public stopSyncTask()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleTask;->isStopTask:Z

    .line 260
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleTask;->unregisterObserver()V

    .line 261
    return-void
.end method

.method public unregisterObserver()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->bleTask:Lcom/veclink/bracelet/bletask/BleTask;

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->unRegisterObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 256
    :cond_0
    return-void
.end method

.method public waitResponse(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 234
    div-int/lit8 p1, p1, 0xa

    .line 235
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 236
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleTask;->mDeviceRespondOk:Z

    if-nez v1, :cond_0

    .line 238
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 246
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

.method public work()V
    .locals 2

    .prologue
    .line 207
    sget-object v1, Lcom/veclink/bracelet/bletask/BleTask;->taskExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/veclink/bracelet/bletask/BleTask;->updateing:Z

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    :try_start_0
    sget-object v1, Lcom/veclink/bracelet/bletask/BleTask;->taskExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/veclink/bracelet/bletask/BleTask;->taskExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 212
    sget-object v1, Lcom/veclink/bracelet/bletask/BleTask;->taskExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

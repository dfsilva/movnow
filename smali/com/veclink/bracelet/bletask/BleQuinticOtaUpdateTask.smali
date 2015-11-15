.class public Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleQuinticOtaUpdateTask.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$3;,
        Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$updateInstance;
    }
.end annotation


# static fields
.field public static final ERROR_CODE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_DATA:I = 0x1


# instance fields
.field protected canDoOtaUpdate:Z

.field protected filePath:Ljava/lang/String;

.field private filepath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mStopUpdate:Z

.field update:Ljava/lang/Runnable;

.field private updateManager:Lcom/quintic/libota/otaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "filepath"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 35
    new-instance v0, Lcom/quintic/libota/otaManager;

    invoke-direct {v0}, Lcom/quintic/libota/otaManager;-><init>()V

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->updateManager:Lcom/quintic/libota/otaManager;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mStopUpdate:Z

    .line 210
    new-instance v0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$1;

    invoke-direct {v0, p0}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$1;-><init>(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;)V

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->update:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;

    invoke-direct {v0, p0}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;-><init>(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;)V

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p3, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->filepath:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private SendUpdateMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 202
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 203
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    :cond_0
    return-void
.end method

.method private SendUpdateMsg(ILjava/lang/String;[I)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # [I

    .prologue
    .line 193
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 194
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 195
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 196
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    :cond_0
    return-void
.end method

.method static synthetic access$102(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mStopUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static generateDisplayMsg(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "elapsedTime"    # I
    .param p2, "byteRate"    # I

    .prologue
    .line 140
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Bps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private isOtaServiceSupported()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->getmBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables;->UUID_QUINTIC_OTA_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static otaError2String(Lcom/quintic/libota/bleGlobalVariables$otaResult;)Ljava/lang/String;
    .locals 2
    .param p0, "ret"    # Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .prologue
    .line 106
    sget-object v0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$3;->$SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult:[I

    invoke-virtual {p0}, Lcom/quintic/libota/bleGlobalVariables$otaResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    const-string v0, "Unknown error"

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v0, "Transmission is failed,firmware checksum error"

    goto :goto_0

    .line 113
    :pswitch_2
    const-string v0, "Transmission is failed,packet length error"

    goto :goto_0

    .line 115
    :pswitch_3
    const-string v0, "The OTA function is disabled by the server"

    goto :goto_0

    .line 117
    :pswitch_4
    const-string v0, "Transmission is failed,firmware file size error"

    goto :goto_0

    .line 119
    :pswitch_5
    const-string v0, "Transmission is failed,verify failed"

    goto :goto_0

    .line 121
    :pswitch_6
    const-string v0, "Open firmware file failed"

    goto :goto_0

    .line 123
    :pswitch_7
    const-string v0, "Wait meta packet response timeout"

    goto :goto_0

    .line 125
    :pswitch_8
    const-string v0, "Wait data packet response timeout"

    goto :goto_0

    .line 127
    :pswitch_9
    const-string v0, "Send meta data error"

    goto :goto_0

    .line 129
    :pswitch_a
    const-string v0, "Transmission is failed,received invalid packet"

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public deviceConnected()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/veclink/bracelet/bletask/BleTask;->deviceConnected()V

    .line 69
    return-void
.end method

.method public deviceDisConnect()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/veclink/bracelet/bletask/BleTask;->deviceDisConnect()V

    .line 60
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->updateManager:Lcom/quintic/libota/otaManager;

    invoke-virtual {v0}, Lcom/quintic/libota/otaManager;->otaStop()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mStopUpdate:Z

    .line 62
    const/4 v0, 0x2

    const-string v1, "ERROR_CODE"

    const-string v2, "disConnect"

    invoke-direct {p0, v0, v1, v2}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->SendUpdateMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public deviceOnCharacteristicChange(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;->deviceOnCharacteristicChange(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 94
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 95
    .local v0, "notifyData":[B
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->updateManager:Lcom/quintic/libota/otaManager;

    invoke-virtual {v1, v0}, Lcom/quintic/libota/otaManager;->otaGetResult([B)V

    .line 96
    return-void
.end method

.method public deviceOnCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/veclink/bracelet/bletask/BleTask;->deviceOnCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 75
    return-void
.end method

.method public deviceOnCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/veclink/bracelet/bletask/BleTask;->deviceOnCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 81
    if-nez p3, :cond_0

    .line 82
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->updateManager:Lcom/quintic/libota/otaManager;

    invoke-virtual {v1}, Lcom/quintic/libota/otaManager;->notifyWriteDataCompleted()V

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gatt write fail,errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "errCode":Ljava/lang/String;
    const/4 v1, 0x2

    const-string v2, "ERROR_CODE"

    invoke-direct {p0, v1, v2, v0}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->SendUpdateMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mStopUpdate:Z

    goto :goto_0
.end method

.method public deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;->deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 102
    return-void
.end method

.method public doWork()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->filepath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->startOtaUpdate(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public startOtaUpdate(Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 146
    sget-object v4, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->TAG:Ljava/lang/String;

    const-string v5, "canDoOtaUpdate otaStart"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v2, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$updateInstance;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$updateInstance;-><init>(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$1;)V

    .line 148
    .local v2, "ins":Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$updateInstance;
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v4}, Lcom/veclink/hw/bleservice/VLBleService;->getmBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$updateInstance;->bleInterfaceInit(Landroid/bluetooth/BluetoothGatt;)Z

    .line 149
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->updateManager:Lcom/quintic/libota/otaManager;

    invoke-virtual {v4, p1, v2}, Lcom/quintic/libota/otaManager;->otaStart(Ljava/lang/String;Lcom/quintic/libota/BluetoothLeInterface;)Lcom/quintic/libota/bleGlobalVariables$otaResult;

    move-result-object v4

    sget-object v5, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SUCCESS:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    if-ne v4, v5, :cond_2

    .line 151
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mStopUpdate:Z

    .line 152
    const/16 v4, 0x8

    new-array v1, v4, [I

    .line 153
    .local v1, "extra":[I
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mStopUpdate:Z

    if-nez v4, :cond_3

    .line 156
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->updateManager:Lcom/quintic/libota/otaManager;

    invoke-virtual {v4, v1}, Lcom/quintic/libota/otaManager;->otaGetProcess([I)Lcom/quintic/libota/bleGlobalVariables$otaResult;

    move-result-object v3

    .line 164
    .local v3, "ret":Lcom/quintic/libota/bleGlobalVariables$otaResult;
    sget-object v4, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SUCCESS:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    if-ne v3, v4, :cond_1

    .line 165
    const-string v4, "UPDATE_DATA"

    invoke-direct {p0, v7, v4, v1}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->SendUpdateMsg(ILjava/lang/String;[I)V

    goto :goto_0

    .line 157
    .end local v3    # "ret":Lcom/quintic/libota/bleGlobalVariables$otaResult;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 168
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "ret":Lcom/quintic/libota/bleGlobalVariables$otaResult;
    :cond_1
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->updateManager:Lcom/quintic/libota/otaManager;

    invoke-virtual {v4}, Lcom/quintic/libota/otaManager;->otaStop()V

    .line 169
    iput-boolean v7, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mStopUpdate:Z

    .line 170
    const/4 v4, 0x2

    const-string v5, "ERROR_CODE"

    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->otaError2String(Lcom/quintic/libota/bleGlobalVariables$otaResult;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->SendUpdateMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v1    # "extra":[I
    .end local v3    # "ret":Lcom/quintic/libota/bleGlobalVariables$otaResult;
    :cond_2
    sget-object v4, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->TAG:Ljava/lang/String;

    const-string v5, "onListItemClick:Faild to otaStart"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_3
    return-void
.end method

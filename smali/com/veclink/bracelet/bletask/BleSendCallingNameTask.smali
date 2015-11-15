.class public Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleSendCallingNameTask.java"


# instance fields
.field private braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

.field private msgContentByteArray:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgContentByteArray"    # [B

    .prologue
    .line 33
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v0}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 34
    iput-object p2, p0, Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;->msgContentByteArray:[B

    .line 35
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 36
    return-void
.end method


# virtual methods
.method public deviceOnCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 58
    if-nez p3, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;->mDeviceRespondOk:Z

    .line 62
    :cond_0
    return-void
.end method

.method public doWork()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;->mDeviceRespondOk:Z

    .line 41
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;->msgContentByteArray:[B

    invoke-virtual {v1, v2}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->createSendNameCmdArray([B)[B

    move-result-object v0

    .line 42
    .local v0, "sendMsgCmdArray":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001\u8054\u7cfb\u4eba\u540d\u5b57\u6307\u4ee4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;->sendCmdToBleDevice([B)V

    .line 44
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;->mDeviceRespondOk:Z

    .line 45
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;->waitResponse(I)Z

    .line 46
    const-string v1, "sync wait for device response syncparams cmd"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 47
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleSendCallingNameTask;->mDeviceRespondOk:Z

    if-nez v1, :cond_0

    .line 48
    const-string v1, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u53d1\u9001\u8054\u7cfb\u4eba\u540d\u5b57\u6307\u4ee4\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v1, "\u53d1\u9001\u8054\u7cfb\u4eba\u540d\u5b57\u6307\u4ee4   \u4efb\u52a1\u6267\u884c\u6210\u529f"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_0
.end method

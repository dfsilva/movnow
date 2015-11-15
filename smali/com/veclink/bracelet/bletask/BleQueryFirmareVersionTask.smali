.class public Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleQueryFirmareVersionTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 28
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 35
    iput-boolean v4, p0, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;->mDeviceRespondOk:Z

    .line 36
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;->sendCmdToBleDevice([B)V

    .line 37
    iput-boolean v4, p0, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;->mDeviceRespondOk:Z

    .line 38
    const-string v0, "sync wait for device response ble query verison cmd"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 39
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;->waitResponse(I)Z

    .line 40
    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;->mDeviceRespondOk:Z

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v1, -0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 42
    const-string v0, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u67e5\u8be2\u56fa\u4ef6\u7248\u672c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "\u67e5\u8be2\u56fa\u4ef6\u7248\u672c\u4efb\u52a1\u6210\u529f\u6267\u884c"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v1, v1, Lcom/veclink/hw/bledevice/BaseBleDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 52
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/BaseBleDevice;->pareseQueryFirmwareVersionResponse([B)I

    move-result v0

    return v0
.end method

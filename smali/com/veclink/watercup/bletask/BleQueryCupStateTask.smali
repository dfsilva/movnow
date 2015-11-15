.class public Lcom/veclink/watercup/bletask/BleQueryCupStateTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleQueryCupStateTask.java"


# instance fields
.field private isStopTask:Z

.field private waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 33
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/WaterCupDevice;

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    .line 34
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 5

    .prologue
    const/16 v4, 0x1388

    const/4 v3, 0x0

    .line 41
    iput-boolean v3, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->mDeviceRespondOk:Z

    .line 42
    iget-object v1, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnStartMessage(Ljava/lang/Object;)V

    .line 43
    iget-object v1, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    invoke-virtual {v1}, Lcom/veclink/hw/bledevice/WaterCupDevice;->createQueryCupStateCmd()[B

    move-result-object v0

    .line 44
    .local v0, "cmdArray":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u67e5\u8be2\u6c34\u676f\u72b6\u6001\u6307\u4ee4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->sendCmdToBleDevice([B)V

    .line 46
    iput-boolean v3, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->mDeviceRespondOk:Z

    .line 47
    const-string v1, "sync wait for device response ble query cup state cmd"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v4}, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->waitResponse(I)Z

    .line 49
    iget-boolean v1, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->mDeviceRespondOk:Z

    if-nez v1, :cond_1

    .line 50
    const-string v1, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u67e5\u8be2\u6c34\u676f\u72b6\u6001\u4efb\u52a1\u5931\u8d25"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u67e5\u8be2\u6c34\u676f\u72b6\u6001\u6307\u4ee4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->sendCmdToBleDevice([B)V

    .line 53
    iput-boolean v3, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->mDeviceRespondOk:Z

    .line 54
    const-string v1, "sync wait for device response ble query cup state cmd"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v4}, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->waitResponse(I)Z

    .line 56
    iget-boolean v1, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->mDeviceRespondOk:Z

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v2, -0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 58
    const-string v1, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u67e5\u8be2\u6c34\u676f\u72b6\u6001\u4efb\u52a1\u5931\u8d25"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v1, "\u67e5\u8be2\u6c34\u676f\u72b6\u6001\u4efb\u52a1\u6210\u529f\u6267\u884c"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    const-string v1, "\u67e5\u8be2\u6c34\u676f\u72b6\u6001\u4efb\u52a1\u6210\u529f\u6267\u884c"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 3
    .param p1, "byteArray"    # [B

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BleQueryCupStateTask response\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    array-length v1, p1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 72
    new-instance v0, Lcom/veclink/watercup/bean/WaterCupState;

    invoke-direct {v0}, Lcom/veclink/watercup/bean/WaterCupState;-><init>()V

    .line 73
    .local v0, "waterCupState":Lcom/veclink/watercup/bean/WaterCupState;
    invoke-virtual {v0, p1}, Lcom/veclink/watercup/bean/WaterCupState;->parseByteArray([B)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u67e5\u8be2\u6c34\u676f\u72b6\u6001\u7ed3\u679c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/veclink/watercup/bean/WaterCupState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 79
    const/4 v1, 0x0

    .end local v0    # "waterCupState":Lcom/veclink/watercup/bean/WaterCupState;
    :goto_0
    return v1

    .line 77
    :cond_0
    const/16 v1, -0x63

    goto :goto_0
.end method

.method public stopTask()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/watercup/bletask/BleQueryCupStateTask;->isStopTask:Z

    .line 84
    return-void
.end method

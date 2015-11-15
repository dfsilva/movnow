.class public Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;
.super Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;
.source "BleSyncWaterCupDrinkDataTask.java"


# instance fields
.field private endDate:Ljava/util/Date;

.field private startDate:Ljava/util/Date;

.field private waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 34
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/WaterCupDevice;

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "startDate"    # Ljava/util/Date;
    .param p4, "endDate"    # Ljava/util/Date;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/util/Date;Ljava/util/Date;)V

    .line 40
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/WaterCupDevice;

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    .line 41
    iput-object p3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->startDate:Ljava/util/Date;

    .line 42
    iput-object p4, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->endDate:Ljava/util/Date;

    .line 44
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8

    .prologue
    const/16 v7, -0x65

    const/4 v6, 0x0

    .line 48
    iput-boolean v6, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->isSyncParams:Z

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "i":I
    iput-boolean v6, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->mDeviceRespondOk:Z

    .line 52
    iget-object v3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    iget-object v4, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->startDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->endDate:Ljava/util/Date;

    invoke-virtual {v3, v4, v5}, Lcom/veclink/hw/bledevice/WaterCupDevice;->createSyncCupDrinkDataCmd(Ljava/util/Date;Ljava/util/Date;)[B

    move-result-object v0

    .line 54
    .local v0, "cmdArray":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u540c\u6b65\u996e\u6c34\u6570\u636e\u6307\u4ee4\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->sendCmdToBleDevice([B)V

    .line 56
    const-string v3, "sync wait for device response SyncWaterCupDrinkData cmd"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 57
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3}, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->waitResponse(I)Z

    .line 59
    iget-boolean v3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->mDeviceRespondOk:Z

    if-nez v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 61
    const-string v3, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u996e\u6c34\u6570\u636e\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v3, " response SyncWaterCupDrinkData  cmd ok"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    if-nez v3, :cond_2

    .line 67
    const-string v3, " response SyncWaterCupDrinkData totalPackDataNum is 0 finish task"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v4, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    iget-object v4, v4, Lcom/veclink/hw/bledevice/WaterCupDevice;->drinkDataList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    int-to-float v3, v3

    iput v3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->maxDayCount:F

    .line 72
    iput v6, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->progress:I

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "water all date is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->maxDayCount:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 74
    iget v3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->maxDayCount:F

    invoke-virtual {p0, v3}, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->longPackageTrasport(F)Z

    move-result v2

    .line 75
    .local v2, "transport_result":Z
    if-nez v2, :cond_3

    .line 76
    const-string v3, "\u4f20\u8f93\u6570\u636e\u8fc7\u7a0b\u5931\u8d25\uff0c\u540c\u6b65\u996e\u6c34\u6570\u636e\u4efb\u52a1\u5931\u8d25"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object v3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllDataOk:Z

    if-eqz v3, :cond_0

    .line 81
    const-string v3, " SyncWaterCupDrinkData data over task finish .."

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v4, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    iget-object v4, v4, Lcom/veclink/hw/bledevice/WaterCupDevice;->drinkDataList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 89
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/WaterCupDevice;->parseDringkWaterData([B)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0, p1}, Lcom/veclink/watercup/bletask/BleSyncWaterCupDrinkDataTask;->sendLongpackDataProgress([B)V

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleSettingRemindParamsTask.java"


# instance fields
.field private baseRemindParam:Lcom/veclink/bracelet/bean/BaseRemindParam;

.field private braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Lcom/veclink/bracelet/bean/BaseRemindParam;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "baseRemindParam"    # Lcom/veclink/bracelet/bean/BaseRemindParam;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 30
    iput-object p3, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->baseRemindParam:Lcom/veclink/bracelet/bean/BaseRemindParam;

    .line 31
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 32
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 37
    iput-boolean v4, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->mDeviceRespondOk:Z

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "i":I
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->baseRemindParam:Lcom/veclink/bracelet/bean/BaseRemindParam;

    invoke-virtual {v2, v3}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->createSetRemindCmdArrayOfByte(Lcom/veclink/bracelet/bean/BaseRemindParam;)[B

    move-result-object v1

    .line 40
    .local v1, "setttingRemindAlarmArry":[B
    :goto_0
    if-ge v0, v5, :cond_0

    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->mDeviceRespondOk:Z

    if-nez v2, :cond_0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u7f6e\u63d0\u9192\u53c2\u6570\u6307\u4ee4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->sendCmdToBleDevice([B)V

    .line 43
    iput-boolean v4, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->mDeviceRespondOk:Z

    .line 44
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->waitResponse(I)Z

    .line 45
    const-string v2, "sync wait for device response setRmindParmas cmd"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    if-lt v0, v5, :cond_1

    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->mDeviceRespondOk:Z

    if-nez v2, :cond_1

    .line 49
    const-string v2, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u8bbe\u7f6e\u63d0\u9192\u53c2\u6570\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 55
    :goto_1
    return-void

    .line 51
    :cond_1
    const-string v2, "\u8bbe\u7f6e\u63d0\u9192\u53c2\u6570\u4efb\u52a1\u6267\u884c\u6210\u529f"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected parseData([B)I
    .locals 5
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v4, 0x1

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "result":I
    array-length v2, p1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 61
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    aget-byte v2, p1, v4

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_1

    .line 63
    const/4 v2, 0x4

    aget-byte v1, p1, v2

    .line 64
    .local v1, "setRemindResult":B
    if-ne v1, v4, :cond_0

    .line 65
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 75
    .end local v1    # "setRemindResult":B
    :goto_0
    return v0

    .line 67
    .restart local v1    # "setRemindResult":B
    :cond_0
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    .end local v1    # "setRemindResult":B
    :cond_1
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSettingRemindParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

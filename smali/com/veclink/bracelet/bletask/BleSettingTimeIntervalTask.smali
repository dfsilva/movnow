.class public Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleSettingTimeIntervalTask.java"


# instance fields
.field private timeInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "timeInterval"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 29
    iput p3, p0, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->timeInterval:I

    .line 30
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 34
    iput-boolean v6, p0, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->mDeviceRespondOk:Z

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->mDeviceRespondOk:Z

    if-nez v2, :cond_0

    .line 37
    iput-boolean v6, p0, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->mDeviceRespondOk:Z

    .line 38
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget v5, p0, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->timeInterval:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v1

    .line 39
    .local v1, "sendCmdArray":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set SettingTimeInterval cmd is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->sendCmdToBleDevice([B)V

    .line 41
    const-string v2, "sync wait for device response SettingTimeInterval cmd"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 42
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->waitResponse(I)Z

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    .end local v1    # "sendCmdArray":[B
    :cond_0
    if-lt v0, v8, :cond_1

    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->mDeviceRespondOk:Z

    if-nez v2, :cond_1

    .line 46
    const-string v2, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u8bbe\u7f6e\u65f6\u95f4\u95f4\u9694\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v3, -0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 54
    :goto_1
    return-void

    .line 50
    :cond_1
    const-string v2, "\u8bbe\u7f6e\u65f6\u95f4\u95f4\u9694\u4efb\u52a1\u6267\u884c"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 58
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSettingTimeIntervalTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/BaseBleDevice;->parseSetTimeIntervalRespone([B)I

    move-result v0

    return v0
.end method

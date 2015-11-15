.class public Lcom/veclink/charge/BleChooseFileTask;
.super Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;
.source "BleChooseFileTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 27
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8

    .prologue
    const/16 v7, 0x1388

    const/16 v6, 0xc

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    .line 31
    new-array v1, v6, [B

    fill-array-data v1, :array_0

    .line 32
    .local v1, "sendCmdArray":[B
    invoke-virtual {p0, v1}, Lcom/veclink/charge/BleChooseFileTask;->sendCmdToBleDevice([B)V

    .line 33
    const-string v2, "BleChooseFileTask"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v7}, Lcom/veclink/charge/BleChooseFileTask;->waitResponse(I)Z

    .line 35
    iget-boolean v2, p0, Lcom/veclink/charge/BleChooseFileTask;->mDeviceRespondOk:Z

    if-eqz v2, :cond_3

    .line 36
    invoke-virtual {p0, v5}, Lcom/veclink/charge/BleChooseFileTask;->longPackageTrasport(F)Z

    .line 37
    iget-object v2, p0, Lcom/veclink/charge/BleChooseFileTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-object v2, v2, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpChargeDataArrayOfByte:[B

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToNoSpaceHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "receiveResult":Ljava/lang/String;
    const-string v2, "BleChooseFileTask receiveResult"

    invoke-static {v2, v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v2, "9000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    new-array v1, v6, [B

    .end local v1    # "sendCmdArray":[B
    fill-array-data v1, :array_1

    .line 41
    .restart local v1    # "sendCmdArray":[B
    invoke-virtual {p0, v1}, Lcom/veclink/charge/BleChooseFileTask;->sendCmdToBleDevice([B)V

    .line 42
    const-string v2, "BleChooseFileTask"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v7}, Lcom/veclink/charge/BleChooseFileTask;->waitResponse(I)Z

    .line 44
    iget-boolean v2, p0, Lcom/veclink/charge/BleChooseFileTask;->mDeviceRespondOk:Z

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p0, v5}, Lcom/veclink/charge/BleChooseFileTask;->longPackageTrasport(F)Z

    .line 46
    iget-object v2, p0, Lcom/veclink/charge/BleChooseFileTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-object v2, v2, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpChargeDataArrayOfByte:[B

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToNoSpaceHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v2, "BleChooseFileTask receiveResult2"

    invoke-static {v2, v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "9000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/veclink/charge/BleChooseFileTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 65
    .end local v0    # "receiveResult":Ljava/lang/String;
    :goto_0
    return-void

    .line 51
    .restart local v0    # "receiveResult":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/veclink/charge/BleChooseFileTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/veclink/charge/BleChooseFileTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/veclink/charge/BleChooseFileTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    .end local v0    # "receiveResult":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/veclink/charge/BleChooseFileTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :array_0
    .array-data 1
        0x5at
        0x19t
        0x0t
        0x0t
        0x7t
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x3ft
        0x0t
    .end array-data

    .line 40
    :array_1
    .array-data 1
        0x5at
        0x19t
        0x0t
        0x0t
        0x7t
        0x0t
        -0x5ct
        0x0t
        0x0t
        0x2t
        0x3ft
        0x1t
    .end array-data
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 70
    iget-object v0, p0, Lcom/veclink/charge/BleChooseFileTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->parseChargeData([B)Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleCheckTemperatureTask.java"


# instance fields
.field private final AUTOCONNECTTOTALCOUNT:I

.field private isRunning:Z

.field private retryReConnectCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->isRunning:Z

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->AUTOCONNECTTOTALCOUNT:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->retryReConnectCount:I

    .line 37
    return-void
.end method

.method public static roundFloat(DII)F
    .locals 2
    .param p0, "value"    # D
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # I

    .prologue
    .line 116
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 117
    .local v0, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 119
    .local v1, "result":F
    const/4 v0, 0x0

    .line 120
    return v1
.end method


# virtual methods
.method public deviceConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-super {p0}, Lcom/veclink/bracelet/bletask/BleTask;->deviceConnected()V

    .line 52
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnDeviceConnectedMessage(Ljava/lang/Object;)V

    .line 53
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->retryReConnectCount:I

    .line 54
    return-void
.end method

.method public deviceDisConnect()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/veclink/bracelet/bletask/BleTask;->deviceDisConnect()V

    .line 44
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnDeviceDisConnectedMessage(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public doWork()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnStartMessage(Ljava/lang/Object;)V

    .line 62
    :goto_0
    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->isRunning:Z

    if-eqz v0, :cond_0

    .line 63
    iput-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mDeviceRespondOk:Z

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dowork isRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->isRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 65
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->waitResponse(I)Z

    .line 66
    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->isRunning:Z

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_1
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mDeviceRespondOk:Z

    if-nez v0, :cond_4

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->disconnect()V

    .line 69
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->close()V

    .line 70
    iget v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->retryReConnectCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 71
    iput-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->isRunning:Z

    .line 72
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnTaskTimeOutMessage(Ljava/lang/Object;)V

    .line 73
    const-string v0, "\u6b21\u6570\u8d85\u8fc7\u4e09\u6b21\uff0c\u9000\u51fa\u6d4b\u8bd5\u6e29\u5ea6"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->connect(Ljava/lang/String;)Z

    .line 77
    iget v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->retryReConnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->retryReConnectCount:I

    goto :goto_0

    .line 80
    :cond_4
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->retryReConnectCount:I

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->isConnected()Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->isRunning:Z

    return v0
.end method

.method protected parseData([B)I
    .locals 5
    .param p1, "byteArray"    # [B

    .prologue
    .line 88
    new-instance v0, Lcom/veclink/bracelet/bean/TemperatureBean;

    invoke-direct {v0, p1}, Lcom/veclink/bracelet/bean/TemperatureBean;-><init>([B)V

    .line 89
    .local v0, "temperatureBean":Lcom/veclink/bracelet/bean/TemperatureBean;
    iget v1, v0, Lcom/veclink/bracelet/bean/TemperatureBean;->temperatureValue:F

    float-to-double v1, v1

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->roundFloat(DII)F

    move-result v1

    iput v1, v0, Lcom/veclink/bracelet/bean/TemperatureBean;->temperatureValue:F

    .line 90
    const-string v1, "lzf"

    invoke-virtual {v0}, Lcom/veclink/bracelet/bean/TemperatureBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 92
    const/4 v1, 0x0

    return v1
.end method

.method public stopTask()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->isRunning:Z

    .line 105
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->disconnect()V

    .line 107
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCheckTemperatureTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->close()V

    .line 109
    :cond_0
    return-void
.end method

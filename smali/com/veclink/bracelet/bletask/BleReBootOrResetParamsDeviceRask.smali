.class public Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleReBootOrResetParamsDeviceRask.java"


# instance fields
.field private callBackCmd:B

.field private cmd_action_result:B

.field private contentCmd:B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;B)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "contentCmd"    # B

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 45
    iput-byte p3, p0, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->contentCmd:B

    .line 46
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->callBackCmd:B

    .line 47
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->mDeviceRespondOk:Z

    .line 52
    const/4 v1, 0x5

    new-array v0, v1, [B

    const/16 v1, 0x5a

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    iget-byte v2, p0, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->contentCmd:B

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    iget-byte v2, p0, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->callBackCmd:B

    aput-byte v2, v0, v1

    .line 53
    .local v0, "rebootcmdArray":[B
    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->sendCmdToBleDevice([B)V

    .line 54
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->mDeviceRespondOk:Z

    .line 55
    const-string v1, "sync wait for device response ble reboot cmd"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 56
    const/16 v1, 0x1388

    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->waitResponse(I)Z

    .line 57
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->mDeviceRespondOk:Z

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v2, -0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 59
    const-string v1, "reboot action fail"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v1, "reboot action success"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-byte v2, p0, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->cmd_action_result:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 3
    .param p1, "byteArray"    # [B

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "result":I
    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 72
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/veclink/bracelet/bletask/BleReBootOrResetParamsDeviceRask;->cmd_action_result:B

    .line 76
    :goto_0
    return v0

    .line 74
    :cond_0
    const/16 v0, -0x3e8

    goto :goto_0
.end method

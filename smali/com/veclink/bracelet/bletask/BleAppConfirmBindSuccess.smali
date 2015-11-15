.class public Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleAppConfirmBindSuccess.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 23
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 30
    const/4 v1, 0x5

    new-array v0, v1, [B

    .line 31
    .local v0, "confirmBindCmdArray":[B
    const/16 v1, 0x5b

    aput-byte v1, v0, v3

    .line 32
    const/4 v1, 0x1

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    .line 33
    aput-byte v3, v0, v4

    .line 34
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 35
    const/4 v1, 0x4

    aput-byte v3, v0, v1

    .line 36
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;->mDeviceRespondOk:Z

    .line 37
    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;->sendCmdToBleDevice([B)V

    .line 38
    const-string v1, "BleAppConfirmBindSuccess"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/16 v1, 0x1f4

    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;->waitResponse(I)Z

    .line 40
    const-string v1, "BleAppConfirmBindSuccess"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;->mDeviceRespondOk:Z

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v5}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v5}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

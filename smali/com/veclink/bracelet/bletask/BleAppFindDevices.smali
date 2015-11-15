.class public Lcom/veclink/bracelet/bletask/BleAppFindDevices;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleAppFindDevices.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 25
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 32
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 33
    .local v0, "confirmBindCmdArray":[B
    const/16 v1, 0x5a

    aput-byte v1, v0, v3

    .line 34
    const/4 v1, 0x1

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    .line 35
    const/4 v1, 0x2

    aput-byte v3, v0, v1

    .line 36
    const/4 v1, 0x3

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 37
    const-string v1, "BleAppFindDevices"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleAppFindDevices;->mDeviceRespondOk:Z

    .line 39
    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleAppFindDevices;->sendCmdToBleDevice([B)V

    .line 40
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleAppFindDevices;->waitResponse(I)Z

    .line 41
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleAppFindDevices;->mDeviceRespondOk:Z

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleAppFindDevices;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleAppFindDevices;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

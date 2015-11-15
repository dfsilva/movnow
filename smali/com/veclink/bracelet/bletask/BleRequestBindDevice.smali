.class public Lcom/veclink/bracelet/bletask/BleRequestBindDevice;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleRequestBindDevice.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 26
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    const/16 v1, 0x14

    new-array v0, v1, [B

    .line 34
    .local v0, "requestCmdArray":[B
    const/16 v1, 0x5a

    aput-byte v1, v0, v3

    .line 35
    const/16 v1, 0xb

    aput-byte v1, v0, v2

    .line 36
    const/4 v1, 0x2

    aput-byte v3, v0, v1

    .line 37
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 38
    const-string v1, "BleRequestBindDevice"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleRequestBindDevice;->mDeviceRespondOk:Z

    .line 40
    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleRequestBindDevice;->sendCmdToBleDevice([B)V

    .line 41
    const/16 v1, 0x1388

    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleRequestBindDevice;->waitResponse(I)Z

    .line 42
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleRequestBindDevice;->mDeviceRespondOk:Z

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleRequestBindDevice;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleRequestBindDevice;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 5
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 54
    array-length v1, p1

    if-le v1, v4, :cond_0

    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    aget-byte v1, p1, v4

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x63

    goto :goto_0
.end method

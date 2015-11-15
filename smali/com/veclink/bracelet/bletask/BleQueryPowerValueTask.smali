.class public Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleQueryPowerValueTask.java"


# instance fields
.field private powerValue:I


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
    const/16 v4, 0x7d0

    const/4 v3, 0x0

    .line 30
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 31
    .local v0, "confirmBindCmdArray":[B
    const/16 v1, 0x5a

    aput-byte v1, v0, v3

    .line 32
    const/4 v1, 0x1

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 33
    const/4 v1, 0x2

    aput-byte v3, v0, v1

    .line 34
    const/4 v1, 0x3

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 35
    const-string v1, "BleQueryPowerValueTask"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->mDeviceRespondOk:Z

    .line 37
    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->sendCmdToBleDevice([B)V

    .line 38
    invoke-virtual {p0, v4}, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->waitResponse(I)Z

    .line 39
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->mDeviceRespondOk:Z

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget v2, p0, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->powerValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->sendCmdToBleDevice([B)V

    .line 43
    invoke-virtual {p0, v4}, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->waitResponse(I)Z

    .line 44
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->mDeviceRespondOk:Z

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget v2, p0, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->powerValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 4
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 57
    array-length v1, p1

    if-le v1, v3, :cond_0

    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    const/16 v2, -0x80

    if-ne v1, v2, :cond_0

    .line 59
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->powerValue:I

    .line 62
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x63

    goto :goto_0
.end method

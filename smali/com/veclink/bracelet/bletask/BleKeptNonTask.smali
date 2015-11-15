.class public Lcom/veclink/bracelet/bletask/BleKeptNonTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleKeptNonTask.java"


# instance fields
.field private defaultRemindTimeLong:I

.field private isOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "isOpen"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 24
    const/16 v0, 0x1388

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleKeptNonTask;->defaultRemindTimeLong:I

    .line 27
    iput-boolean p3, p0, Lcom/veclink/bracelet/bletask/BleKeptNonTask;->isOpen:Z

    .line 28
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 32
    const/16 v2, 0x14

    new-array v0, v2, [B

    .line 33
    .local v0, "sendCmdArray":[B
    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleKeptNonTask;->isOpen:Z

    if-eqz v2, :cond_0

    .line 34
    iget v2, p0, Lcom/veclink/bracelet/bletask/BleKeptNonTask;->defaultRemindTimeLong:I

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->intToBytes(I)[B

    move-result-object v1

    .line 35
    .local v1, "timelongArray":[B
    const/4 v2, 0x7

    new-array v0, v2, [B

    .end local v0    # "sendCmdArray":[B
    const/16 v2, 0x5a

    aput-byte v2, v0, v4

    const/16 v2, 0xc

    aput-byte v2, v0, v5

    aput-byte v4, v0, v6

    aput-byte v3, v0, v3

    const/4 v2, 0x4

    aput-byte v5, v0, v2

    aget-byte v2, v1, v6

    aput-byte v2, v0, v7

    const/4 v2, 0x6

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 39
    .end local v1    # "timelongArray":[B
    .restart local v0    # "sendCmdArray":[B
    :goto_0
    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleKeptNonTask;->sendCmdToBleDevice([B)V

    .line 40
    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleKeptNonTask;->mDeviceRespondOk:Z

    if-eqz v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleKeptNonTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 47
    :goto_1
    return-void

    .line 37
    :cond_0
    new-array v0, v7, [B

    .end local v0    # "sendCmdArray":[B
    fill-array-data v0, :array_0

    .restart local v0    # "sendCmdArray":[B
    goto :goto_0

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleKeptNonTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    nop

    :array_0
    .array-data 1
        0x5at
        0xct
        0x0t
        0x3t
        0x0t
    .end array-data
.end method

.method protected parseData([B)I
    .locals 6
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 51
    array-length v1, p1

    if-le v1, v3, :cond_2

    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2

    aget-byte v1, p1, v4

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    if-nez v1, :cond_2

    aget-byte v1, p1, v5

    if-ne v1, v5, :cond_2

    .line 53
    aget-byte v1, p1, v3

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleKeptNonTask;->isOpen:Z

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    aget-byte v1, p1, v3

    if-ne v1, v4, :cond_2

    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleKeptNonTask;->isOpen:Z

    if-nez v1, :cond_0

    .line 61
    :cond_2
    const/16 v0, -0x63

    goto :goto_0
.end method

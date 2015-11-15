.class public Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleLockOrUnLockKeyTask.java"


# instance fields
.field private lockOrUnLock:Z

.field private lockTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;ZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "lockOrUnLock"    # Z
    .param p4, "lockTime"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 32
    iput-boolean p3, p0, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;->lockOrUnLock:Z

    .line 33
    iput p4, p0, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;->lockTime:I

    .line 34
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 41
    const/16 v2, 0x14

    new-array v1, v2, [B

    .line 42
    .local v1, "requestCmdArray":[B
    const/16 v2, 0x5a

    aput-byte v2, v1, v4

    .line 43
    const/16 v2, 0xc

    aput-byte v2, v1, v5

    .line 44
    aput-byte v4, v1, v6

    .line 45
    aput-byte v3, v1, v7

    .line 46
    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;->lockOrUnLock:Z

    if-eqz v2, :cond_0

    .line 47
    aput-byte v5, v1, v3

    .line 51
    :goto_0
    iget v2, p0, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;->lockTime:I

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->intToBytes(I)[B

    move-result-object v0

    .line 52
    .local v0, "intToArray":[B
    const/4 v2, 0x5

    aget-byte v3, v0, v6

    aput-byte v3, v1, v2

    .line 53
    const/4 v2, 0x6

    aget-byte v3, v0, v7

    aput-byte v3, v1, v2

    .line 54
    iput-boolean v4, p0, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;->mDeviceRespondOk:Z

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLockOrUnlockCmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;->sendCmdToBleDevice([B)V

    .line 57
    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;->waitResponse(I)Z

    .line 58
    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;->mDeviceRespondOk:Z

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 66
    :goto_1
    return-void

    .line 49
    .end local v0    # "intToArray":[B
    :cond_0
    aput-byte v4, v1, v3

    goto :goto_0

    .line 61
    .restart local v0    # "intToArray":[B
    :cond_1
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleLockOrUnLockKeyTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected parseData([B)I
    .locals 5
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 70
    array-length v1, p1

    if-le v1, v3, :cond_1

    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v4

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_1

    aget-byte v1, p1, v3

    if-eqz v1, :cond_0

    aget-byte v1, p1, v3

    if-ne v1, v4, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v0, -0x63

    goto :goto_0
.end method

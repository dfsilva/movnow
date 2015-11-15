.class public Lcom/veclink/charge/BleReadCardTask;
.super Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;
.source "BleReadCardTask.java"


# instance fields
.field private appSerial:Ljava/lang/String;

.field private cityCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 31
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8

    .prologue
    const/16 v7, 0x1388

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    .line 35
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    .line 36
    .local v0, "sendCmdArray":[B
    invoke-virtual {p0, v0}, Lcom/veclink/charge/BleReadCardTask;->sendCmdToBleDevice([B)V

    .line 37
    const-string v1, "BleReadCardTask"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v7}, Lcom/veclink/charge/BleReadCardTask;->waitResponse(I)Z

    .line 39
    iget-boolean v1, p0, Lcom/veclink/charge/BleReadCardTask;->mDeviceRespondOk:Z

    if-eqz v1, :cond_3

    .line 40
    invoke-virtual {p0, v4}, Lcom/veclink/charge/BleReadCardTask;->longPackageTrasport(F)Z

    .line 41
    iget-object v1, p0, Lcom/veclink/charge/BleReadCardTask;->appSerial:Ljava/lang/String;

    const-string v2, "9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    new-array v0, v6, [B

    .end local v0    # "sendCmdArray":[B
    fill-array-data v0, :array_1

    .line 43
    .restart local v0    # "sendCmdArray":[B
    invoke-virtual {p0, v0}, Lcom/veclink/charge/BleReadCardTask;->sendCmdToBleDevice([B)V

    .line 44
    const-string v1, "BleReadCardTask"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, v7}, Lcom/veclink/charge/BleReadCardTask;->waitResponse(I)Z

    .line 46
    iget-boolean v1, p0, Lcom/veclink/charge/BleReadCardTask;->mDeviceRespondOk:Z

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p0, v4}, Lcom/veclink/charge/BleReadCardTask;->longPackageTrasport(F)Z

    .line 48
    iget-object v1, p0, Lcom/veclink/charge/BleReadCardTask;->cityCode:Ljava/lang/String;

    const-string v2, "9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/veclink/charge/BleReadCardTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/veclink/charge/BleReadCardTask;->cityCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/veclink/charge/BleReadCardTask;->cityCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/charge/BleReadCardTask;->appSerial:Ljava/lang/String;

    iget-object v4, p0, Lcom/veclink/charge/BleReadCardTask;->appSerial:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 66
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/veclink/charge/BleReadCardTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/veclink/charge/BleReadCardTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/veclink/charge/BleReadCardTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/veclink/charge/BleReadCardTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 35
    nop

    :array_0
    .array-data 1
        0x5at
        0x19t
        0x0t
        0x0t
        0x5t
        0x0t
        -0x50t
        -0x6bt
        0xct
        0x8t
    .end array-data

    .line 42
    nop

    :array_1
    .array-data 1
        0x5at
        0x19t
        0x0t
        0x0t
        0x5t
        0x0t
        -0x50t
        -0x6bt
        0x2t
        0x2t
    .end array-data
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 71
    iget-object v0, p0, Lcom/veclink/charge/BleReadCardTask;->appSerial:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToNoSpaceHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/charge/BleReadCardTask;->appSerial:Ljava/lang/String;

    .line 76
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToNoSpaceHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/charge/BleReadCardTask;->cityCode:Ljava/lang/String;

    goto :goto_0
.end method

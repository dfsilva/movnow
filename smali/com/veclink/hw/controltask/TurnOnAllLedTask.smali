.class public Lcom/veclink/hw/controltask/TurnOnAllLedTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "TurnOnAllLedTask.java"


# instance fields
.field public highLightTime:I

.field public isTurnOn:Z

.field public lowLightTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "isTurnOn"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 25
    const v0, 0xea60

    iput v0, p0, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->highLightTime:I

    .line 27
    const/16 v0, 0x1388

    iput v0, p0, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->lowLightTime:I

    .line 33
    iput-boolean p3, p0, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->isTurnOn:Z

    .line 35
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 40
    const/16 v3, 0x14

    new-array v0, v3, [B

    .line 41
    .local v0, "cmdArray":[B
    const/16 v3, 0x5a

    aput-byte v3, v0, v5

    .line 42
    aput-byte v6, v0, v4

    .line 43
    const/4 v3, 0x2

    aput-byte v5, v0, v3

    .line 44
    const/4 v3, 0x3

    aput-byte v4, v0, v3

    .line 45
    const-string v2, "00000000"

    .line 46
    .local v2, "isTurnOnString":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->isTurnOn:Z

    if-eqz v3, :cond_0

    .line 47
    const-string v2, "11111111"

    .line 49
    :cond_0
    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/ByteUtil;->decodeBinaryStringToBit(Ljava/lang/String;)B

    move-result v1

    .line 50
    .local v1, "isTurnOnByte":B
    const/4 v3, 0x4

    aput-byte v1, v0, v3

    .line 51
    const/4 v3, 0x5

    aput-byte v1, v0, v3

    .line 52
    const/4 v3, 0x6

    aput-byte v1, v0, v3

    .line 53
    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 55
    const/16 v3, 0x8

    iget v4, p0, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->highLightTime:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 56
    const/16 v3, 0x9

    iget v4, p0, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->highLightTime:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 58
    const/16 v3, 0xa

    iget v4, p0, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->lowLightTime:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 59
    const/16 v3, 0xb

    iget v4, p0, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->lowLightTime:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 61
    aput-byte v5, v0, v6

    .line 62
    const/16 v3, 0xd

    aput-byte v5, v0, v3

    .line 63
    invoke-virtual {p0, v0}, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->sendCmdToBleDevice([B)V

    .line 64
    iget-boolean v3, p0, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->mDeviceRespondOk:Z

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/veclink/hw/controltask/TurnOnAllLedTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 7
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 75
    array-length v3, p1

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    aget-byte v3, p1, v2

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    aget-byte v3, p1, v5

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 76
    new-array v1, v6, [B

    aget-byte v3, p1, v6

    aput-byte v3, v1, v2

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    aput-byte v3, v1, v5

    const/4 v3, 0x2

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    const/4 v4, 0x7

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    .line 77
    .local v1, "ledStatusArray":[B
    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->bytesToInt([B)I

    move-result v0

    .line 78
    .local v0, "ledStatus":I
    if-ne v0, v5, :cond_0

    .line 81
    .end local v0    # "ledStatus":I
    .end local v1    # "ledStatusArray":[B
    :goto_0
    return v2

    :cond_0
    const/16 v2, -0x63

    goto :goto_0
.end method

.class public Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleSendShortMsgRemindTask.java"


# instance fields
.field private braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

.field private contentLength:I

.field private msgContentByteArray:[B

.field private msgRemindType:B

.field private nameArray:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;B[B)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "msgRemindType"    # B
    .param p4, "msgContentByteArray"    # [B

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 37
    iput-object p4, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->msgContentByteArray:[B

    .line 38
    iput-byte p3, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->msgRemindType:B

    .line 39
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;B[BI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "msgRemindType"    # B
    .param p4, "msgContentByteArray"    # [B
    .param p5, "contentLength"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 44
    iput-object p4, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->msgContentByteArray:[B

    .line 45
    iput-byte p3, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->msgRemindType:B

    .line 46
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 47
    iput p5, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->contentLength:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;B[BI[B)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "msgRemindType"    # B
    .param p4, "msgContentByteArray"    # [B
    .param p5, "contentLength"    # I
    .param p6, "nameArray"    # [B

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 52
    iput-object p4, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->msgContentByteArray:[B

    .line 53
    iput-byte p3, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->msgRemindType:B

    .line 54
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 55
    iput p5, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->contentLength:I

    .line 56
    iput-object p6, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->nameArray:[B

    .line 57
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 61
    iput-boolean v6, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->mDeviceRespondOk:Z

    .line 62
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-byte v3, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->msgRemindType:B

    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->msgContentByteArray:[B

    iget v5, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->contentLength:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->createSendShortRemindCmdArrayOfByte(B[BI)[B

    move-result-object v0

    .line 64
    .local v0, "sendMsgCmdArray":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001\u77ed\u6d88\u606f\u6307\u4ee4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->sendCmdToBleDevice([B)V

    .line 66
    iput-boolean v6, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->mDeviceRespondOk:Z

    .line 67
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->waitResponse(I)Z

    .line 68
    const-string v2, "sync wait for device response syncparams cmd"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 69
    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->mDeviceRespondOk:Z

    if-nez v2, :cond_1

    .line 70
    const-string v2, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u53d1\u9001\u77ed\u6d88\u606f\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->nameArray:[B

    if-eqz v2, :cond_0

    .line 77
    iput-boolean v6, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->mDeviceRespondOk:Z

    .line 78
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->waitResponse(I)Z

    .line 79
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->nameArray:[B

    invoke-virtual {v2, v3}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->createSendNameCmdArray([B)[B

    move-result-object v1

    .line 80
    .local v1, "sendNameCmdArray":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001\u8054\u7cfb\u4eba\u6307\u4ee4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->sendCmdToBleDevice([B)V

    .line 84
    .end local v1    # "sendNameCmdArray":[B
    :cond_0
    return-void

    .line 73
    :cond_1
    const-string v2, "\u53d1\u9001\u77ed\u6d88\u606f   \u4efb\u52a1\u6267\u884c\u6210\u529f"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 4
    .param p1, "byteArray"    # [B

    .prologue
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u5907\u56de\u5e94\u53d1\u9001\u77ed\u6d88\u606f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "result":I
    array-length v2, p1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 91
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_1

    .line 93
    const/4 v2, 0x4

    aget-byte v1, p1, v2

    .line 94
    .local v1, "setRemindResult":B
    if-nez v1, :cond_0

    .line 95
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 106
    .end local v1    # "setRemindResult":B
    :goto_0
    return v0

    .line 97
    .restart local v1    # "setRemindResult":B
    :cond_0
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 98
    const/16 v0, -0x64

    goto :goto_0

    .line 101
    .end local v1    # "setRemindResult":B
    :cond_1
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

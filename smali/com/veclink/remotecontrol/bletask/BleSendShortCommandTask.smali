.class public Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleSendShortCommandTask.java"


# instance fields
.field private final headone:B

.field private final headtwo:B

.field private keyCommandArray:[B

.field private modelCommandArray:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;[B[B)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "modelCommandArray"    # [B
    .param p4, "keyCommandArray"    # [B

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 20
    const/16 v0, 0x30

    iput-byte v0, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->headone:B

    .line 22
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->headtwo:B

    .line 33
    iput-object p3, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->modelCommandArray:[B

    .line 34
    iput-object p4, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->keyCommandArray:[B

    .line 35
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    const/16 v3, 0xa

    new-array v2, v3, [B

    .line 41
    .local v2, "sendCommandArray":[B
    const/16 v3, 0x30

    aput-byte v3, v2, v5

    .line 42
    aput-byte v5, v2, v6

    .line 43
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->modelCommandArray:[B

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 44
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->keyCommandArray:[B

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 45
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->keyCommandArray:[B

    aget-byte v4, v4, v6

    aput-byte v4, v2, v3

    .line 47
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->modelCommandArray:[B

    iget-object v5, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->modelCommandArray:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x4

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 48
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->modelCommandArray:[B

    iget-object v5, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->modelCommandArray:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x3

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 49
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->modelCommandArray:[B

    iget-object v5, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->modelCommandArray:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 50
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->modelCommandArray:[B

    iget-object v5, p0, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->modelCommandArray:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "checksum":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 53
    aget-byte v3, v2, v1

    add-int/2addr v3, v0

    int-to-byte v0, v3

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    and-int/lit16 v3, v0, 0xff

    int-to-byte v0, v3

    .line 56
    const/16 v3, 0x9

    aput-byte v0, v2, v3

    .line 57
    invoke-virtual {p0, v2}, Lcom/veclink/remotecontrol/bletask/BleSendShortCommandTask;->sendCmdToBleDevice([B)V

    .line 58
    const-string v3, "SendCommandTask"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

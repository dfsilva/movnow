.class public Lcom/veclink/charge/BleReadTerminalNumberTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleReadTerminalNumberTask.java"


# instance fields
.field private terminalNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 29
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "sendCmdArray":[B
    const/16 v1, 0xa

    new-array v0, v1, [B

    .end local v0    # "sendCmdArray":[B
    fill-array-data v0, :array_0

    .line 35
    .restart local v0    # "sendCmdArray":[B
    invoke-virtual {p0, v0}, Lcom/veclink/charge/BleReadTerminalNumberTask;->sendCmdToBleDevice([B)V

    .line 36
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/veclink/charge/BleReadTerminalNumberTask;->waitResponse(I)Z

    .line 37
    iget-boolean v1, p0, Lcom/veclink/charge/BleReadTerminalNumberTask;->mDeviceRespondOk:Z

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/veclink/charge/BleReadTerminalNumberTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v2, p0, Lcom/veclink/charge/BleReadTerminalNumberTask;->terminalNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/veclink/charge/BleReadTerminalNumberTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 34
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
        -0x7dt
        0x0t
        0x6t
    .end array-data
.end method

.method protected parseData([B)I
    .locals 3
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToNoSpaceHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "resp":Ljava/lang/String;
    const-string v2, "9000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/16 v1, -0x63

    .line 52
    :goto_0
    return v1

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/charge/BleReadTerminalNumberTask;->terminalNo:Ljava/lang/String;

    goto :goto_0
.end method

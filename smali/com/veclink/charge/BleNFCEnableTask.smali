.class public Lcom/veclink/charge/BleNFCEnableTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleNFCEnableTask.java"


# static fields
.field private static isEnalbe:Z


# instance fields
.field private enable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "enable"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 27
    iput-boolean p3, p0, Lcom/veclink/charge/BleNFCEnableTask;->enable:Z

    .line 29
    return-void
.end method

.method public static isNFCEnable()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/veclink/charge/BleNFCEnableTask;->isEnalbe:Z

    return v0
.end method


# virtual methods
.method public doWork()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "sendCmdArray":[B
    iget-boolean v1, p0, Lcom/veclink/charge/BleNFCEnableTask;->enable:Z

    if-ne v1, v3, :cond_0

    .line 35
    new-array v0, v4, [B

    .end local v0    # "sendCmdArray":[B
    fill-array-data v0, :array_0

    .line 39
    .restart local v0    # "sendCmdArray":[B
    :goto_0
    invoke-virtual {p0, v0}, Lcom/veclink/charge/BleNFCEnableTask;->sendCmdToBleDevice([B)V

    .line 40
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/veclink/charge/BleNFCEnableTask;->waitResponse(I)Z

    .line 41
    iget-boolean v1, p0, Lcom/veclink/charge/BleNFCEnableTask;->mDeviceRespondOk:Z

    if-eqz v1, :cond_1

    .line 42
    sput-boolean v3, Lcom/veclink/charge/BleNFCEnableTask;->isEnalbe:Z

    .line 43
    iget-object v1, p0, Lcom/veclink/charge/BleNFCEnableTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 48
    :goto_1
    return-void

    .line 37
    :cond_0
    new-array v0, v4, [B

    .end local v0    # "sendCmdArray":[B
    fill-array-data v0, :array_1

    .restart local v0    # "sendCmdArray":[B
    goto :goto_0

    .line 45
    :cond_1
    sput-boolean v2, Lcom/veclink/charge/BleNFCEnableTask;->isEnalbe:Z

    .line 46
    iget-object v1, p0, Lcom/veclink/charge/BleNFCEnableTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 35
    :array_0
    .array-data 1
        0x5at
        0x18t
        0x0t
        0x20t
    .end array-data

    .line 37
    :array_1
    .array-data 1
        0x5at
        0x18t
        0x0t
        0x21t
    .end array-data
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

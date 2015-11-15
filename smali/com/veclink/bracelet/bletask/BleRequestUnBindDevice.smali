.class public Lcom/veclink/bracelet/bletask/BleRequestUnBindDevice;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleRequestUnBindDevice.java"


# static fields
.field public static final CLEAR_ALL_DATA:B = 0x2t

.field public static final CLEAR_ALL_DATA_AND_REBOOT:B = 0x3t

.field public static final REBOOT:B = 0x1t


# instance fields
.field private operateType:B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 32
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/BleRequestUnBindDevice;->operateType:B

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;B)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "operateType"    # B

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 38
    iput-byte p3, p0, Lcom/veclink/bracelet/bletask/BleRequestUnBindDevice;->operateType:B

    .line 39
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 46
    const/16 v1, 0x14

    new-array v0, v1, [B

    .line 47
    .local v0, "requestCmdArray":[B
    const/16 v1, 0x5a

    aput-byte v1, v0, v3

    .line 48
    const/4 v1, 0x1

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    .line 49
    const/4 v1, 0x2

    aput-byte v3, v0, v1

    .line 50
    aput-byte v4, v0, v4

    .line 51
    const/16 v1, 0xc

    iget-byte v2, p0, Lcom/veclink/bracelet/bletask/BleRequestUnBindDevice;->operateType:B

    aput-byte v2, v0, v1

    .line 52
    const-string v1, "BleRequestUnBindDevice"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleRequestUnBindDevice;->mDeviceRespondOk:Z

    .line 54
    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleRequestUnBindDevice;->sendCmdToBleDevice([B)V

    .line 55
    const/16 v1, 0x1388

    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleRequestUnBindDevice;->waitResponse(I)Z

    .line 56
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleRequestUnBindDevice;->mDeviceRespondOk:Z

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleRequestUnBindDevice;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v5}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleRequestUnBindDevice;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v5}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 5
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 68
    array-length v1, p1

    if-le v1, v4, :cond_0

    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    aget-byte v1, p1, v3

    if-ne v1, v3, :cond_0

    aget-byte v1, p1, v4

    if-nez v1, :cond_0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x63

    goto :goto_0
.end method

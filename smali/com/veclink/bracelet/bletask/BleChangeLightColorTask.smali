.class public Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleChangeLightColorTask.java"


# static fields
.field public static final BLUECOLOR:I = 0x0

.field public static final GREENCOLOR:I = 0x2

.field public static final ORANGECOLOR:I = 0x1

.field public static final REDCOLOR:I = 0x3


# instance fields
.field private band_light_color:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "band_light_color"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 30
    iput p3, p0, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;->band_light_color:I

    .line 31
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 35
    new-array v0, v4, [B

    .line 36
    .local v0, "changeBandLightCmd":[B
    const/16 v1, 0x5a

    aput-byte v1, v0, v3

    .line 37
    const/4 v1, 0x1

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    .line 38
    const/4 v1, 0x2

    aput-byte v3, v0, v1

    .line 39
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 40
    const/4 v1, 0x4

    iget v2, p0, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;->band_light_color:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 41
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;->mDeviceRespondOk:Z

    .line 42
    const-string v1, "BleChangeLightColorTask"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;->sendCmdToBleDevice([B)V

    .line 44
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;->waitResponse(I)Z

    .line 45
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;->mDeviceRespondOk:Z

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v5}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v1, v5}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 5
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 57
    array-length v2, p1

    if-le v2, v4, :cond_0

    aget-byte v2, p1, v1

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 59
    aget-byte v2, p1, v4

    and-int/lit16 v0, v2, 0xff

    .line 60
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 61
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;->band_light_color:I

    invoke-static {v2, v3}, Lcom/veclink/hw/bleservice/util/Keeper;->setBandLightColor(Landroid/content/Context;I)V

    .line 66
    .end local v0    # "result":I
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x63

    goto :goto_0
.end method

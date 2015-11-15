.class public Lcom/veclink/bracelet/bletask/UpdateFirmwareUtil;
.super Ljava/lang/Object;
.source "UpdateFirmwareUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static update(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/lang/String;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "updateCallBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "deviceType":Ljava/lang/String;
    invoke-static {v1}, Lcom/veclink/hw/devicetype/DeviceProductFactory;->createDeviceProduct(Ljava/lang/String;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    move-result-object v0

    .line 22
    .local v0, "deviceProduct":Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    iget v3, v0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->updateFirewareWay:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 24
    new-instance v2, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/lang/String;)V

    .line 25
    .local v2, "task":Lcom/veclink/bracelet/bletask/BleTask;
    invoke-virtual {v2}, Lcom/veclink/bracelet/bletask/BleTask;->work()V

    .line 36
    .end local v2    # "task":Lcom/veclink/bracelet/bletask/BleTask;
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    new-instance v2, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/lang/String;)V

    .line 28
    .local v2, "task":Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;
    invoke-virtual {v2}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->work()V

    goto :goto_0

    .line 29
    .end local v2    # "task":Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;
    :cond_1
    iget v3, v0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->updateFirewareWay:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 30
    new-instance v2, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/lang/String;)V

    .line 31
    .local v2, "task":Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;
    invoke-virtual {v2}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->doWork()V

    goto :goto_0

    .line 33
    .end local v2    # "task":Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;
    :cond_2
    new-instance v2, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/lang/String;)V

    .line 34
    .local v2, "task":Lcom/veclink/bracelet/bletask/BleTask;
    invoke-virtual {v2}, Lcom/veclink/bracelet/bletask/BleTask;->work()V

    goto :goto_0
.end method

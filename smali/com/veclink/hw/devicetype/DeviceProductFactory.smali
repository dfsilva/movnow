.class public Lcom/veclink/hw/devicetype/DeviceProductFactory;
.super Ljava/lang/Object;
.source "DeviceProductFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDeviceProduct(Ljava/lang/String;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    .locals 5
    .param p0, "deviceTypeString"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 79
    .local v1, "deviceType":Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    :try_start_0
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 81
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.veclink.hw.devicetype.pojo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "deviceType":Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    check-cast v1, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "c":Ljava/lang/Class;
    .restart local v1    # "deviceType":Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    :goto_0
    const-class v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {v1}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->setAllModueInVisibleExceptStep()V

    .line 90
    :cond_1
    return-object v1

    .line 83
    .end local v1    # "deviceType":Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    invoke-direct {v1}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 85
    .restart local v1    # "deviceType":Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    invoke-virtual {v1}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->setAllModueInVisibleExceptStep()V

    goto :goto_0
.end method

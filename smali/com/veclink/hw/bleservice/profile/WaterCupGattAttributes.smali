.class public Lcom/veclink/hw/bleservice/profile/WaterCupGattAttributes;
.super Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;
.source "WaterCupGattAttributes.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/veclink/hw/bleservice/profile/WaterCupGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/WaterCupGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    const-string v2, "BLE Shield Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/veclink/hw/bleservice/profile/WaterCupGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/WaterCupGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    const-string v2, "BLE Shield TX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/veclink/hw/bleservice/profile/WaterCupGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/WaterCupGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    const-string v2, "BLE Shield RX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;-><init>()V

    return-void
.end method

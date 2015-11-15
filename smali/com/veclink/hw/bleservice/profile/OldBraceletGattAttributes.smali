.class public Lcom/veclink/hw/bleservice/profile/OldBraceletGattAttributes;
.super Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;
.source "OldBraceletGattAttributes.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/veclink/hw/bleservice/profile/OldBraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/OldBraceletGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    const-string v2, "BLE Shield Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/veclink/hw/bleservice/profile/OldBraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/OldBraceletGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    const-string v2, "BLE Shield TX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/veclink/hw/bleservice/profile/OldBraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/OldBraceletGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    const-string v2, "BLE Shield RX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;-><init>()V

    return-void
.end method

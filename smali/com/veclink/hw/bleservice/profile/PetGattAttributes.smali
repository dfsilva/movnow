.class public Lcom/veclink/hw/bleservice/profile/PetGattAttributes;
.super Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;
.source "PetGattAttributes.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-string v0, "D44BC439-ABFD-45A2-B575-925416129600"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/PetGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    .line 30
    const-string v0, "D44BC439-ABFD-45A2-B575-925416129601"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/PetGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    .line 31
    const-string v0, "0000fee9-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/PetGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/veclink/hw/bleservice/profile/PetGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/PetGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    const-string v2, "BLE Shield Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/veclink/hw/bleservice/profile/PetGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/PetGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    const-string v2, "BLE Shield TX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/veclink/hw/bleservice/profile/PetGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/PetGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    const-string v2, "BLE Shield RX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;-><init>()V

    return-void
.end method

.class public Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;
.super Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;
.source "TemperatureGattAttributes.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 32
    const-string v0, "00002a1c-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    .line 33
    const-string v0, "00002a1e-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    .line 34
    const-string v0, "00001809-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    const-string v2, "BLE Shield Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    const-string v2, "BLE Shield TX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    const-string v2, "BLE Shield RX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/UUID;

    sput-object v0, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->serviceUuids:[Ljava/util/UUID;

    .line 42
    sget-object v0, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->serviceUuids:[Ljava/util/UUID;

    const/4 v1, 0x0

    sget-object v2, Lcom/veclink/hw/bleservice/profile/TemperatureGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;-><init>()V

    return-void
.end method

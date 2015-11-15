.class public Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;
.super Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;
.source "BraceletGattAttributes.java"


# static fields
.field public static EXTERNAL_BLE_SHIELD_RX:Ljava/lang/String;

.field public static EXTERNAL_BLE_SHIELD_SERVICE:Ljava/lang/String;

.field public static EXTERNAL_BLE_SHIELD_TX:Ljava/lang/String;

.field public static PRIMARY_BLE_SHIELD_RX:Ljava/lang/String;

.field public static PRIMARY_BLE_SHIELD_SERVICE:Ljava/lang/String;

.field public static PRIMARY_BLE_SHIELD_TX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "0000cd20-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->PRIMARY_BLE_SHIELD_TX:Ljava/lang/String;

    .line 29
    const-string v0, "0000cd01-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->PRIMARY_BLE_SHIELD_RX:Ljava/lang/String;

    .line 30
    const-string v0, "0000cc01-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->PRIMARY_BLE_SHIELD_SERVICE:Ljava/lang/String;

    .line 32
    const-string v0, "000034e1-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->EXTERNAL_BLE_SHIELD_TX:Ljava/lang/String;

    .line 33
    const-string v0, "000034e2-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->EXTERNAL_BLE_SHIELD_RX:Ljava/lang/String;

    .line 34
    const-string v0, "000056ef-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->EXTERNAL_BLE_SHIELD_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;-><init>()V

    .line 37
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 38
    const-string v0, "D44BC439-ABFD-45A2-B575-925416129600"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    .line 39
    const-string v0, "D44BC439-ABFD-45A2-B575-925416129601"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    .line 40
    const-string v0, "0000fee9-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    const-string v2, "BLE Shield Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    const-string v2, "BLE Shield TX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    const-string v2, "BLE Shield RX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/UUID;

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->serviceUuids:[Ljava/util/UUID;

    .line 52
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->serviceUuids:[Ljava/util/UUID;

    const/4 v1, 0x0

    sget-object v2, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    .line 53
    return-void
.end method

.method public static setPrimaryGattAttributesConfig()V
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->PRIMARY_BLE_SHIELD_TX:Ljava/lang/String;

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->PRIMARY_BLE_SHIELD_RX:Ljava/lang/String;

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->PRIMARY_BLE_SHIELD_SERVICE:Ljava/lang/String;

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    const-string v2, "BLE Shield Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    const-string v2, "BLE Shield TX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    const-string v2, "BLE Shield RX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/UUID;

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->serviceUuids:[Ljava/util/UUID;

    .line 70
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->serviceUuids:[Ljava/util/UUID;

    const/4 v1, 0x0

    sget-object v2, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    return-void
.end method

.method public static setSecondGattAttributesConfig()V
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->EXTERNAL_BLE_SHIELD_TX:Ljava/lang/String;

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->EXTERNAL_BLE_SHIELD_RX:Ljava/lang/String;

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->EXTERNAL_BLE_SHIELD_SERVICE:Ljava/lang/String;

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    const-string v2, "BLE Shield Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    const-string v2, "BLE Shield TX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    const-string v2, "BLE Shield RX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/UUID;

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->serviceUuids:[Ljava/util/UUID;

    .line 85
    sget-object v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->serviceUuids:[Ljava/util/UUID;

    const/4 v1, 0x0

    sget-object v2, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    .line 86
    return-void
.end method

.class public Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;
.super Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;
.source "RemoteControlGattAttributes.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 24
    const-string v0, "000034e1-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    .line 25
    const-string v0, "000034e2-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    .line 26
    const-string v0, "000056ef-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    const-string v2, "BLE Shield Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    const-string v2, "BLE Shield TX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    const-string v2, "BLE Shield RX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/UUID;

    sput-object v0, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->serviceUuids:[Ljava/util/UUID;

    .line 34
    sget-object v0, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->serviceUuids:[Ljava/util/UUID;

    const/4 v1, 0x0

    sget-object v2, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;-><init>()V

    return-void
.end method

.method public static lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v1, Lcom/veclink/hw/bleservice/profile/RemoteControlGattAttributes;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "defaultName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultName":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

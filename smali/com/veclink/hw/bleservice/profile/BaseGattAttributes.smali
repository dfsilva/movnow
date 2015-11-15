.class public Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;
.super Ljava/lang/Object;
.source "BaseGattAttributes.java"


# static fields
.field public static BLE_SHIELD_RX:Ljava/lang/String;

.field public static BLE_SHIELD_SERVICE:Ljava/lang/String;

.field public static BLE_SHIELD_TX:Ljava/lang/String;

.field public static CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

.field public static attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static serviceUuids:[Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->attributes:Ljava/util/HashMap;

    .line 17
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 18
    const-string v0, "0000cd20-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_TX:Ljava/lang/String;

    .line 19
    const-string v0, "0000cd01-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_RX:Ljava/lang/String;

    .line 20
    const-string v0, "0000cc01-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->BLE_SHIELD_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v1, Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
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

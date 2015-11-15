.class public Lcom/quintic/libota/bleGlobalVariables;
.super Ljava/lang/Object;
.source "bleGlobalVariables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;,
        Lcom/quintic/libota/bleGlobalVariables$otaCmd;,
        Lcom/quintic/libota/bleGlobalVariables$otaResult;
    }
.end annotation


# static fields
.field public static final QuinticOtaService:Ljava/lang/String; = "0000fee8-0000-1000-8000-00805f9b34fb"

.field public static final QuinticQppService:Ljava/lang/String; = "0000fee9-0000-1000-8000-00805f9b34fb"

.field public static final UUID_OTA_NOTIFY_CHARACTERISTIC:Ljava/util/UUID;

.field public static final UUID_OTA_WRITE_CHARACTERISTIC:Ljava/util/UUID;

.field public static final UUID_QPP_DESCRIPTER:Ljava/util/UUID;

.field public static final UUID_QPP_WRITE_CHARACTERISTIC:Ljava/util/UUID;

.field public static final UUID_QUINTIC_OTA_SERVICE:Ljava/util/UUID;

.field public static final UUID_QUINTIC_QPP_SERVICE:Ljava/util/UUID;

.field public static final otaNotifyCharacteristic:Ljava/lang/String; = "003784cf-f7e3-55b4-6c4c-9fd140100a16"

.field public static final otaWriteCharacteristic:Ljava/lang/String; = "013784cf-f7e3-55b4-6c4c-9fd140100a16"

.field public static final qppDescripter:Ljava/lang/String; = "00002902-0000-1000-8000-00805f9b34fb"

.field public static final qppWriteCharacteristic:Ljava/lang/String; = "d44bc439-abfd-45a2-b575-925416129600"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "0000fee8-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables;->UUID_QUINTIC_OTA_SERVICE:Ljava/util/UUID;

    .line 15
    const-string v0, "0000fee9-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables;->UUID_QUINTIC_QPP_SERVICE:Ljava/util/UUID;

    .line 16
    const-string v0, "013784cf-f7e3-55b4-6c4c-9fd140100a16"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables;->UUID_OTA_WRITE_CHARACTERISTIC:Ljava/util/UUID;

    .line 17
    const-string v0, "003784cf-f7e3-55b4-6c4c-9fd140100a16"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables;->UUID_OTA_NOTIFY_CHARACTERISTIC:Ljava/util/UUID;

    .line 18
    const-string v0, "d44bc439-abfd-45a2-b575-925416129600"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables;->UUID_QPP_WRITE_CHARACTERISTIC:Ljava/util/UUID;

    .line 19
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables;->UUID_QPP_DESCRIPTER:Ljava/util/UUID;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

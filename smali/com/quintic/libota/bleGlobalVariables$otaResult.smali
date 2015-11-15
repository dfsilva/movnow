.class public final enum Lcom/quintic/libota/bleGlobalVariables$otaResult;
.super Ljava/lang/Enum;
.source "bleGlobalVariables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quintic/libota/bleGlobalVariables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "otaResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/quintic/libota/bleGlobalVariables$otaResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_DATA_RESPONSE_TIMEOUT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_DEVICE_NOT_SUPPORT_OTA:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_FW_SIZE_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_FW_VERIFY_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_INVALID_ARGUMENT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_META_RESPONSE_TIMEOUT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_OPEN_FIRMWAREFILE_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_PKT_CHECKSUM_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_PKT_LEN_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_RECEIVED_INVALID_PACKET:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_SEND_META_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field public static final enum OTA_RESULT_SUCCESS:Lcom/quintic/libota/bleGlobalVariables$otaResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SUCCESS:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 25
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_PKT_CHECKSUM_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_PKT_CHECKSUM_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 28
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_PKT_LEN_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_PKT_LEN_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 30
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_DEVICE_NOT_SUPPORT_OTA"

    invoke-direct {v0, v1, v6}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_DEVICE_NOT_SUPPORT_OTA:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 32
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_FW_SIZE_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_FW_SIZE_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 34
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_FW_VERIFY_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_FW_VERIFY_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 36
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_INVALID_ARGUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_INVALID_ARGUMENT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 37
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_OPEN_FIRMWAREFILE_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_OPEN_FIRMWAREFILE_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 39
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_SEND_META_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SEND_META_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 41
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_RECEIVED_INVALID_PACKET"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_RECEIVED_INVALID_PACKET:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 43
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_META_RESPONSE_TIMEOUT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    .line 44
    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_META_RESPONSE_TIMEOUT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 45
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    const-string v1, "OTA_RESULT_DATA_RESPONSE_TIMEOUT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/quintic/libota/bleGlobalVariables$otaResult;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_DATA_RESPONSE_TIMEOUT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/quintic/libota/bleGlobalVariables$otaResult;

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SUCCESS:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_PKT_CHECKSUM_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_PKT_LEN_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_DEVICE_NOT_SUPPORT_OTA:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_FW_SIZE_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_FW_VERIFY_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_INVALID_ARGUMENT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_OPEN_FIRMWAREFILE_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SEND_META_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_RECEIVED_INVALID_PACKET:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_META_RESPONSE_TIMEOUT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_DATA_RESPONSE_TIMEOUT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->ENUM$VALUES:[Lcom/quintic/libota/bleGlobalVariables$otaResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/quintic/libota/bleGlobalVariables$otaResult;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;

    return-object v0
.end method

.method public static values()[Lcom/quintic/libota/bleGlobalVariables$otaResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->ENUM$VALUES:[Lcom/quintic/libota/bleGlobalVariables$otaResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/quintic/libota/bleGlobalVariables$otaResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

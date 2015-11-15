.class public final enum Lcom/quintic/libota/bleGlobalVariables$otaCmd;
.super Ljava/lang/Enum;
.source "bleGlobalVariables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quintic/libota/bleGlobalVariables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "otaCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/quintic/libota/bleGlobalVariables$otaCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/quintic/libota/bleGlobalVariables$otaCmd;

.field public static final enum OTA_CMD_BRICK_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

.field public static final enum OTA_CMD_DATA_VERIFY:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

.field public static final enum OTA_CMD_EXECUTION_NEW_CODE:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

.field public static final enum OTA_CMD_META_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    const-string v1, "OTA_CMD_META_DATA"

    invoke-direct {v0, v1, v2}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_META_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    .line 52
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    const-string v1, "OTA_CMD_BRICK_DATA"

    invoke-direct {v0, v1, v3}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_BRICK_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    .line 53
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    const-string v1, "OTA_CMD_DATA_VERIFY"

    invoke-direct {v0, v1, v4}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_DATA_VERIFY:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    .line 54
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    const-string v1, "OTA_CMD_EXECUTION_NEW_CODE"

    invoke-direct {v0, v1, v5}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_EXECUTION_NEW_CODE:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_META_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_BRICK_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_DATA_VERIFY:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_EXECUTION_NEW_CODE:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    aput-object v1, v0, v5

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->ENUM$VALUES:[Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/quintic/libota/bleGlobalVariables$otaCmd;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    return-object v0
.end method

.method public static values()[Lcom/quintic/libota/bleGlobalVariables$otaCmd;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->ENUM$VALUES:[Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    array-length v1, v0

    new-array v2, v1, [Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

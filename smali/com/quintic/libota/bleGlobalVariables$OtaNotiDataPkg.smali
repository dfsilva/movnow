.class public final enum Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;
.super Ljava/lang/Enum;
.source "bleGlobalVariables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quintic/libota/bleGlobalVariables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "OtaNotiDataPkg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

.field public static final enum OTA_NOTI_CMD:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

.field public static final enum OTA_NOTI_LENGTH_H:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

.field public static final enum OTA_NOTI_LENGTH_L:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

.field public static final enum OTA_NOTI_RCVED_CS_H:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

.field public static final enum OTA_NOTI_RCVED_CS_L:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

.field public static final enum OTA_NOTI_RCVED_LENGTH_H:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

.field public static final enum OTA_NOTI_RCVED_LENGTH_L:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

.field public static final enum OTA_NOTI_RESULT:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    const-string v1, "OTA_NOTI_LENGTH_L"

    invoke-direct {v0, v1, v3}, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_LENGTH_L:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    .line 59
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    const-string v1, "OTA_NOTI_LENGTH_H"

    invoke-direct {v0, v1, v4}, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_LENGTH_H:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    .line 60
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    const-string v1, "OTA_NOTI_CMD"

    invoke-direct {v0, v1, v5}, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_CMD:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    .line 61
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    const-string v1, "OTA_NOTI_RESULT"

    invoke-direct {v0, v1, v6}, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_RESULT:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    .line 62
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    const-string v1, "OTA_NOTI_RCVED_LENGTH_L"

    invoke-direct {v0, v1, v7}, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_RCVED_LENGTH_L:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    .line 63
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    const-string v1, "OTA_NOTI_RCVED_LENGTH_H"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_RCVED_LENGTH_H:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    .line 64
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    const-string v1, "OTA_NOTI_RCVED_CS_L"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_RCVED_CS_L:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    .line 65
    new-instance v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    const-string v1, "OTA_NOTI_RCVED_CS_H"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_RCVED_CS_H:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_LENGTH_L:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_LENGTH_H:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_CMD:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    aput-object v1, v0, v5

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_RESULT:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    aput-object v1, v0, v6

    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_RCVED_LENGTH_L:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_RCVED_LENGTH_H:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_RCVED_CS_L:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->OTA_NOTI_RCVED_CS_H:Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    aput-object v2, v0, v1

    sput-object v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->ENUM$VALUES:[Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    return-object v0
.end method

.method public static values()[Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;->ENUM$VALUES:[Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    array-length v1, v0

    new-array v2, v1, [Lcom/quintic/libota/bleGlobalVariables$OtaNotiDataPkg;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

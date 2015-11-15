.class public Lcom/veclink/watercup/bletask/BleSyncWaterCupParams;
.super Lcom/veclink/bracelet/bletask/BleSyncParamsTask;
.source "BleSyncWaterCupParams.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    const/4 v3, 0x0

    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;III)V

    .line 22
    return-void
.end method

.class public Lcom/veclink/bracelet/bean/TemperatureBean;
.super Ljava/lang/Object;
.source "TemperatureBean.java"


# instance fields
.field public macAddress:Ljava/lang/String;

.field public powerValue:F

.field public primaryByteArray:[B

.field public temperatureValue:F

.field public time:J


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .param p1, "primaryByteArray"    # [B

    .prologue
    const/4 v4, 0x6

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->primaryByteArray:[B

    .line 24
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->temperatureValue:F

    .line 25
    iget v2, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->temperatureValue:F

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->temperatureValue:F

    .line 26
    aget-byte v2, p1, v4

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    iput v2, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->powerValue:F

    .line 27
    new-array v1, v4, [B

    .line 28
    .local v1, "macAddressArray":[B
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xc

    if-ge v0, v2, :cond_0

    .line 29
    add-int/lit8 v2, v0, -0x7

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->macAddress:Ljava/lang/String;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->time:J

    .line 33
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TemperatureBean [primaryByteArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->primaryByteArray:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temperatureValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->temperatureValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", powerValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->powerValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", macAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/veclink/bracelet/bean/TemperatureBean;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

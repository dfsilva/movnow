.class public Lcom/veclink/watercup/bean/WaterCupState;
.super Ljava/lang/Object;
.source "WaterCupState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x377786a748936685L


# instance fields
.field public capacity:F

.field public cup_remain_water:I

.field public isNeeedCheck:Z

.field public last_drink_water_count:I

.field public last_drink_water_time:J

.field public today_amount_of_count:I

.field public water_temperature:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseByteArray([B)V
    .locals 10
    .param p1, "waterresArray"    # [B

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v7, 0x7

    const v6, 0xff00

    .line 60
    const/4 v4, 0x4

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-short v3, v4

    .line 61
    .local v3, "temp_water_temp":S
    int-to-float v4, v3

    iput v4, p0, Lcom/veclink/watercup/bean/WaterCupState;->water_temperature:F

    .line 62
    iget v4, p0, Lcom/veclink/watercup/bean/WaterCupState;->water_temperature:F

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/veclink/watercup/bean/WaterCupState;->water_temperature:F

    .line 63
    const/4 v4, 0x6

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    aget-byte v5, p1, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Lcom/veclink/watercup/bean/WaterCupState;->today_amount_of_count:I

    .line 64
    const/16 v4, 0x8

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    const/16 v5, 0x9

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/veclink/watercup/bean/WaterCupState;->capacity:F

    .line 65
    const/16 v4, 0xa

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    aget-byte v5, p1, v8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Lcom/veclink/watercup/bean/WaterCupState;->cup_remain_water:I

    .line 66
    aget-byte v4, p1, v9

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    const/16 v5, 0xd

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Lcom/veclink/watercup/bean/WaterCupState;->last_drink_water_count:I

    .line 67
    const/16 v4, 0xe

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    const/16 v5, 0xf

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 68
    .local v2, "minutes":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, "calendar":Ljava/util/Calendar;
    div-int/lit8 v4, v2, 0x3c

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 70
    rem-int/lit8 v4, v2, 0x3c

    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 71
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/veclink/watercup/bean/WaterCupState;->last_drink_water_time:J

    .line 72
    const/16 v4, 0x10

    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/veclink/hw/bleservice/util/ByteUtil;->byteToBitString(B)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "checkbyteString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    .line 74
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/veclink/watercup/bean/WaterCupState;->isNeeedCheck:Z

    .line 77
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WaterCupState [water_temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/watercup/bean/WaterCupState;->water_temperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", today_amount_of_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/watercup/bean/WaterCupState;->today_amount_of_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/watercup/bean/WaterCupState;->capacity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cup_remain_water="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/watercup/bean/WaterCupState;->cup_remain_water:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last_drink_water_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/watercup/bean/WaterCupState;->last_drink_water_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last_drink_water_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/veclink/watercup/bean/WaterCupState;->last_drink_water_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNeeedCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/veclink/watercup/bean/WaterCupState;->isNeeedCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getClass()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashCode()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

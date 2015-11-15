.class public Lcom/veclink/hw/bledevice/WaterCupDevice;
.super Lcom/veclink/hw/bledevice/BraceletNewDevice;
.source "WaterCupDevice.java"


# static fields
.field public static final CMD_CORRECT_EXIT:B = 0x0t

.field public static final CMD_CORRECT_PARAMS:B = 0x17t

.field public static final CMD_CORRECT_TEMP:B = 0x1t

.field public static final CMD_CORRECT_WEIGHT:B = 0x2t

.field public static final CMD_QUERY_CUP_STATE:B = 0x8t

.field public static final CMD_QUERY_DRING_PLAN:B = 0x1t

.field public static final CMD_SETTING_DRING_PLAN:B = 0x0t

.field public static final CMD_SYNC_DRING_DATA:B = 0x9t

.field public static final CMD_SYNC_DRING_PLAN:B = 0xat


# instance fields
.field public drinkDataInterv:I

.field public drinkDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/watercup/bean/DrinkWaterData;",
            ">;"
        }
    .end annotation
.end field

.field public mTmpDrinkDataArrayOfByte:[B

.field public mTmpDrinkDataArrayOfByteIndex:I

.field public onedayDrinkDataNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;-><init>(Landroid/content/Context;)V

    .line 80
    iput v2, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->onedayDrinkDataNum:I

    .line 85
    const/16 v0, 0xa

    iput v0, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->drinkDataInterv:I

    .line 90
    const/16 v0, 0x1680

    iget v1, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->drinkDataInterv:I

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByte:[B

    .line 95
    iput v2, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByteIndex:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->drinkDataList:Ljava/util/List;

    .line 105
    return-void
.end method


# virtual methods
.method public converDrinkWaterData()V
    .locals 14

    .prologue
    .line 336
    const/4 v5, 0x0

    .line 337
    .local v5, "j":I
    const/4 v4, 0x0

    .line 338
    .local v4, "i":I
    const/16 v9, 0x90

    const/4 v10, 0x2

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 339
    .local v7, "mTempDrinkDataArray":[[I
    const/4 v4, 0x0

    :goto_0
    iget v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByteIndex:I

    if-ge v4, v9, :cond_0

    .line 340
    aget-object v9, v7, v5

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByte:[B

    aget-byte v11, v11, v4

    shl-int/lit8 v11, v11, 0x8

    const v12, 0xff00

    and-int/2addr v11, v12

    iget-object v12, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByte:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v9, v10

    .line 341
    aget-object v9, v7, v5

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByte:[B

    add-int/lit8 v12, v4, 0x2

    aget-byte v11, v11, v12

    shl-int/lit8 v11, v11, 0x8

    const v12, 0xff00

    and-int/2addr v11, v12

    iget-object v12, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByte:[B

    add-int/lit8 v13, v4, 0x3

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v9, v10

    .line 342
    add-int/lit8 v5, v5, 0x1

    .line 343
    add-int/lit8 v4, v4, 0x3

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 345
    :cond_0
    iget-object v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "deviceId":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mStepDataYear:I

    add-int/lit16 v10, v10, 0x7d0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mStepDataMonth:I

    invoke-virtual {p0, v10}, Lcom/veclink/hw/bledevice/WaterCupDevice;->intToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mStepDataDate:I

    invoke-virtual {p0, v10}, Lcom/veclink/hw/bledevice/WaterCupDevice;->intToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "dateTime":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    iget v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->onedayDrinkDataNum:I

    if-ge v6, v9, :cond_1

    .line 348
    aget-object v9, v7, v6

    const/4 v10, 0x0

    aget v8, v9, v10

    .line 349
    .local v8, "startTime":I
    aget-object v9, v7, v6

    const/4 v10, 0x1

    aget v3, v9, v10

    .line 350
    .local v3, "drinkWaterCount":I
    new-instance v2, Lcom/veclink/watercup/bean/DrinkWaterData;

    invoke-direct {v2}, Lcom/veclink/watercup/bean/DrinkWaterData;-><init>()V

    .line 351
    .local v2, "drinkData":Lcom/veclink/watercup/bean/DrinkWaterData;
    iput-object v0, v2, Lcom/veclink/watercup/bean/DrinkWaterData;->dateTime:Ljava/lang/String;

    .line 352
    iput v8, v2, Lcom/veclink/watercup/bean/DrinkWaterData;->startTime:I

    .line 353
    iput v3, v2, Lcom/veclink/watercup/bean/DrinkWaterData;->drinkWaterCount:I

    .line 354
    iput-object v1, v2, Lcom/veclink/watercup/bean/DrinkWaterData;->deviceId:Ljava/lang/String;

    .line 355
    iget-object v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->drinkDataList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 358
    .end local v2    # "drinkData":Lcom/veclink/watercup/bean/DrinkWaterData;
    .end local v3    # "drinkWaterCount":I
    .end local v8    # "startTime":I
    :cond_1
    return-void
.end method

.method public createCorrectOffsetZeroParamsCmd(BB)[B
    .locals 4
    .param p1, "correctType"    # B
    .param p2, "operationstep"    # B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    const/16 v1, 0x14

    new-array v0, v1, [B

    .line 205
    .local v0, "cmdArray":[B
    const/16 v1, 0x5a

    aput-byte v1, v0, v2

    .line 206
    const/16 v1, 0x17

    aput-byte v1, v0, v3

    .line 207
    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 208
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 209
    const/4 v1, 0x4

    aput-byte p1, v0, v1

    .line 210
    const/4 v1, 0x5

    aput-byte p2, v0, v1

    .line 211
    const/4 v1, 0x6

    aput-byte v3, v0, v1

    .line 213
    return-object v0
.end method

.method public createCorrectParamsCmd(BBI)[B
    .locals 6
    .param p1, "correctType"    # B
    .param p2, "operationstep"    # B
    .param p3, "paramValue"    # I

    .prologue
    const/4 v5, 0x0

    .line 182
    const/16 v3, 0x14

    new-array v0, v3, [B

    .line 183
    .local v0, "cmdArray":[B
    const/16 v3, 0x5a

    aput-byte v3, v0, v5

    .line 184
    const/4 v3, 0x1

    const/16 v4, 0x17

    aput-byte v4, v0, v3

    .line 185
    const/4 v3, 0x2

    aput-byte v5, v0, v3

    .line 186
    const/4 v3, 0x3

    aput-byte v5, v0, v3

    .line 187
    const/4 v3, 0x4

    aput-byte p1, v0, v3

    .line 188
    const/4 v3, 0x5

    aput-byte p2, v0, v3

    .line 189
    invoke-static {p3}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->intToBytes(I)[B

    move-result-object v2

    .line 190
    .local v2, "paramValueByteArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 191
    add-int/lit8 v3, v1, 0x6

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-object v0
.end method

.method public createCorrectTempParamsCmd(II)[B
    .locals 6
    .param p1, "valueindex"    # I
    .param p2, "paramValue"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    const/16 v3, 0x14

    new-array v0, v3, [B

    .line 225
    .local v0, "cmdArray":[B
    const/16 v3, 0x5a

    aput-byte v3, v0, v4

    .line 226
    const/16 v3, 0x17

    aput-byte v3, v0, v5

    .line 227
    const/4 v3, 0x2

    aput-byte v4, v0, v3

    .line 228
    const/4 v3, 0x3

    aput-byte v4, v0, v3

    .line 229
    const/4 v3, 0x4

    aput-byte v5, v0, v3

    .line 230
    const/4 v3, 0x5

    aput-byte v5, v0, v3

    .line 231
    const/4 v3, 0x6

    int-to-byte v4, p1

    aput-byte v4, v0, v3

    .line 232
    invoke-static {p2}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->intToBytes(I)[B

    move-result-object v2

    .line 233
    .local v2, "paramValueByteArray":[B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 234
    add-int/lit8 v3, v1, 0x6

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return-object v0
.end method

.method public createQueryCupStateCmd()[B
    .locals 2

    .prologue
    .line 113
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 114
    .local v0, "cmdArray":[B
    return-object v0

    .line 113
    nop

    :array_0
    .array-data 1
        0x5at
        0x8t
        0x0t
        0x1t
    .end array-data
.end method

.method public createSetDrinkPlanCmd(I)[B
    .locals 4
    .param p1, "planCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 170
    const/4 v1, 0x5

    new-array v0, v1, [B

    const/16 v1, 0x5a

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 171
    .local v0, "cmdArray":[B
    return-object v0
.end method

.method public createSyncCupDrinkDataCmd(Ljava/util/Date;Ljava/util/Date;)[B
    .locals 13
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "endDate"    # Ljava/util/Date;

    .prologue
    .line 125
    const/16 v11, 0xa

    new-array v6, v11, [B

    .line 127
    .local v6, "parmasArray":[B
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 128
    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v8

    .line 129
    .local v8, "startTimeArray":[I
    invoke-static {p2}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v2

    .line 130
    .local v2, "endTimeArray":[I
    const/4 v11, 0x0

    aget v9, v8, v11

    .line 131
    .local v9, "startYear":I
    const/4 v11, 0x1

    aget v7, v8, v11

    .line 132
    .local v7, "startMonth":I
    const/4 v11, 0x2

    aget v10, v8, v11

    .line 133
    .local v10, "startdate":I
    const/4 v11, 0x0

    aget v3, v2, v11

    .line 134
    .local v3, "endYear":I
    const/4 v11, 0x1

    aget v1, v2, v11

    .line 135
    .local v1, "endMonth":I
    const/4 v11, 0x2

    aget v4, v2, v11

    .line 136
    .local v4, "enddate":I
    const/4 v11, 0x0

    add-int/lit16 v12, v9, -0x7d0

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    .line 137
    const/4 v11, 0x1

    int-to-byte v12, v7

    aput-byte v12, v6, v11

    .line 138
    const/4 v11, 0x2

    int-to-byte v12, v10

    aput-byte v12, v6, v11

    .line 139
    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 140
    const/4 v11, 0x4

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 141
    const/4 v11, 0x5

    add-int/lit16 v12, v3, -0x7d0

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    .line 142
    const/4 v11, 0x6

    int-to-byte v12, v1

    aput-byte v12, v6, v11

    .line 143
    const/4 v11, 0x7

    int-to-byte v12, v4

    aput-byte v12, v6, v11

    .line 144
    const/16 v11, 0x8

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 145
    const/16 v11, 0x9

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 154
    .end local v1    # "endMonth":I
    .end local v2    # "endTimeArray":[I
    .end local v3    # "endYear":I
    .end local v4    # "enddate":I
    .end local v7    # "startMonth":I
    .end local v8    # "startTimeArray":[I
    .end local v9    # "startYear":I
    .end local v10    # "startdate":I
    :goto_0
    const/16 v11, 0x14

    new-array v0, v11, [B

    .line 155
    .local v0, "cmdArray":[B
    const/4 v11, 0x0

    const/16 v12, 0x5a

    aput-byte v12, v0, v11

    .line 156
    const/4 v11, 0x1

    const/16 v12, 0x9

    aput-byte v12, v0, v11

    .line 157
    const/4 v11, 0x2

    const/16 v12, 0x5a

    aput-byte v12, v0, v11

    .line 158
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v11, v6

    if-ge v5, v11, :cond_1

    .line 159
    add-int/lit8 v11, v5, 0x3

    aget-byte v12, v6, v5

    aput-byte v12, v0, v11

    .line 158
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 147
    .end local v0    # "cmdArray":[B
    .end local v5    # "i":I
    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 148
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 149
    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 150
    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 151
    const/4 v11, 0x4

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 152
    const/4 v11, 0x5

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    goto :goto_0

    .line 161
    .restart local v0    # "cmdArray":[B
    .restart local v5    # "i":I
    :cond_1
    return-object v0
.end method

.method public parseDringkWaterData([B)Ljava/lang/Object;
    .locals 13
    .param p1, "value"    # [B

    .prologue
    .line 247
    array-length v7, p1

    .line 248
    .local v7, "transdatalength":I
    const/4 v8, 0x5

    if-lt v7, v8, :cond_0

    const/4 v8, 0x0

    aget-byte v8, p1, v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    aget-byte v8, p1, v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_0

    .line 250
    const/4 v8, 0x3

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    const/4 v9, 0x4

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    iput v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->totalPackDataNum:I

    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DringkWaterData totalPackDataNum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->totalPackDataNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 252
    iget v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->totalPackDataNum:I

    if-nez v8, :cond_0

    .line 253
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mOneDayDataOk:Z

    .line 254
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mAllDataOk:Z

    .line 255
    const/4 v8, 0x0

    .line 331
    :goto_0
    return-object v8

    .line 259
    :cond_0
    const/4 v8, 0x2

    aget-byte v8, p1, v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_1

    .line 260
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->isDeviceResponseError:Z

    .line 262
    :cond_1
    const/4 v1, 0x3

    .line 263
    .local v1, "dataOffset":I
    const/4 v4, 0x0

    .line 264
    .local v4, "onedayFirstPackage":Z
    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    .line 265
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->isDeviceResponseError:Z

    .line 266
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 268
    :cond_2
    const/4 v8, 0x0

    aget-byte v8, p1, v8

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_3

    const/4 v8, 0x0

    aget-byte v8, p1, v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_4

    .line 276
    :cond_3
    const/4 v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mPackageSn:I

    .line 277
    iget v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mPackageSn:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v4, 0x1

    .line 279
    :goto_1
    iget v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mPackageSn:I

    and-int/lit16 v3, v8, 0xff

    .line 281
    .local v3, "index":I
    iget-object v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mReceiveStaus:[B

    const/4 v9, 0x2

    aget-byte v9, p1, v9

    div-int/lit8 v9, v9, 0x8

    aget-byte v10, v8, v9

    const/4 v11, 0x1

    const/4 v12, 0x2

    aget-byte v12, p1, v12

    rem-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, -0x1

    shl-int/2addr v11, v12

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 282
    iget v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mPackageSn:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    .line 283
    const/4 v1, 0x3

    .line 284
    move v2, v1

    .local v2, "i":I
    :goto_2
    if-ge v2, v7, :cond_6

    .line 285
    iget-object v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByte:[B

    iget v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByteIndex:I

    aget-byte v10, p1, v2

    aput-byte v10, v8, v9

    .line 286
    iget v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByteIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByteIndex:I

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 271
    .end local v2    # "i":I
    .end local v3    # "index":I
    :cond_4
    const-string v8, "value[0]###PACKAGE_HEAD_CMD_ERROR:"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 272
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->isDeviceResponseError:Z

    .line 273
    const/16 v8, -0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 277
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 289
    .restart local v3    # "index":I
    :cond_6
    iget v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mPackageSn:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 290
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mAllDataOk:Z

    .line 291
    iget-object v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mReceiveStaus:[B

    add-int/lit8 v9, v3, 0x6

    const/4 v10, -0x2

    aput-byte v10, v8, v9

    .line 292
    iget-object v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mLengthPackageSnArray:[B

    const/4 v9, 0x0

    const/4 v10, 0x5

    aget-byte v10, p1, v10

    aput-byte v10, v8, v9

    .line 293
    iget-object v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mLengthPackageSnArray:[B

    const/4 v9, 0x1

    const/4 v10, 0x6

    aget-byte v10, p1, v10

    aput-byte v10, v8, v9

    .line 294
    const/16 v8, 0xa

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mStepDataYear:I

    .line 295
    const/16 v8, 0xb

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mStepDataMonth:I

    .line 296
    const/16 v8, 0xc

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mStepDataDate:I

    .line 297
    const/16 v8, 0xd

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->onedayDrinkDataNum:I

    .line 298
    iget v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->onedayDrinkDataNum:I

    mul-int/lit8 v8, v8, 0x4

    add-int/lit8 v8, v8, 0x11

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByte:[B

    .line 299
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByteIndex:I

    .line 300
    const/4 v8, 0x3

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    const/4 v9, 0x4

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v6, v8, v9

    .line 301
    .local v6, "totalOnePackDataNum":I
    iput v6, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->oneLongpackDataLength:I

    .line 302
    div-int/lit8 v0, v6, 0x11

    .line 303
    .local v0, "count":I
    rem-int/lit8 v8, v6, 0x11

    if-eqz v8, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 304
    :cond_7
    iput v0, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->oneLongpackSmallPackCount:I

    .line 305
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_3
    const/16 v8, 0x78

    if-ge v2, v8, :cond_9

    .line 306
    iget-object v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mReceiveStaus:[B

    div-int/lit8 v9, v2, 0x8

    aget-byte v10, v8, v9

    const/4 v11, 0x1

    rem-int/lit8 v12, v2, 0x8

    shl-int/2addr v11, v12

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 309
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v6    # "totalOnePackDataNum":I
    :cond_8
    iget v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mPackageSn:I

    const/16 v9, 0xff

    if-ne v8, v9, :cond_a

    .line 310
    const-string v8, "allday over!"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/WaterCupDevice;->converDrinkWaterData()V

    .line 313
    const/16 v8, 0x1680

    iget v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->drinkDataInterv:I

    div-int/2addr v8, v9

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByte:[B

    .line 314
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByteIndex:I

    .line 315
    const-string v8, "\u540c\u6b65\u996e\u6c34\u6570\u636e\u5b8c\u6210\uff01"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 316
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mOneDayDataOk:Z

    .line 317
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mAllDataOk:Z

    .line 331
    :cond_9
    :goto_4
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_0

    .line 321
    :cond_a
    iget v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mPackageSn:I

    const/16 v9, 0xfe

    if-ne v8, v9, :cond_9

    .line 322
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mStepDataYear:I

    add-int/lit16 v9, v9, 0x7d0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mStepDataMonth:I

    invoke-virtual {p0, v9}, Lcom/veclink/hw/bledevice/WaterCupDevice;->intToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mStepDataDate:I

    invoke-virtual {p0, v9}, Lcom/veclink/hw/bledevice/WaterCupDevice;->intToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "sportTime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " oneday over! recordNum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpSportDataArrayOfByteIndex:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/WaterCupDevice;->converDrinkWaterData()V

    .line 325
    const/16 v8, 0x1680

    iget v9, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->drinkDataInterv:I

    div-int/2addr v8, v9

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByte:[B

    .line 326
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mTmpDrinkDataArrayOfByteIndex:I

    .line 328
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mOneDayDataOk:Z

    goto :goto_4
.end method

.method public parseSetDrinkPlanResponseData([B)I
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "result":I
    iget v1, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->pareseCmdResponseType:I

    packed-switch v1, :pswitch_data_0

    .line 378
    :goto_0
    return v0

    .line 368
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/veclink/hw/bledevice/WaterCupDevice;->parseStartSetDrinkPlanResponse([B)I

    move-result v0

    .line 369
    goto :goto_0

    .line 371
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/veclink/hw/bledevice/WaterCupDevice;->parseUpgradeSendPackageResponse([B)I

    move-result v0

    .line 372
    goto :goto_0

    .line 374
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/veclink/hw/bledevice/WaterCupDevice;->parseUpgradeNextPackageResponse([B)I

    move-result v0

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x13881
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public parseStartSetDrinkPlanResponse([B)I
    .locals 3
    .param p1, "value"    # [B

    .prologue
    const/4 v0, 0x0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartSetDrinkPlanResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 384
    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 385
    :cond_0
    const/16 v0, -0x3e8

    .line 390
    :goto_0
    return v0

    .line 387
    :cond_1
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    iput v1, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mPackageSn:I

    .line 388
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mUpgradeState:I

    .line 389
    iput v0, p0, Lcom/veclink/hw/bledevice/WaterCupDevice;->mSendPackageNum:I

    goto :goto_0
.end method

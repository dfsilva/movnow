.class public Lcom/veclink/hw/bledevice/PetDevice;
.super Lcom/veclink/hw/bledevice/BraceletNewDevice;
.source "PetDevice.java"


# static fields
.field public static final CMD_QUERY_PET_DATA:B = 0x1at


# instance fields
.field public mTmpDataByteArray:[B

.field public mTmpDataByteArrayIndex:I

.field public onedaySportDataNum:I

.field public petDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/pet/PetData;",
            ">;"
        }
    .end annotation
.end field

.field public sportDataInterv:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;-><init>(Landroid/content/Context;)V

    .line 32
    iput v2, p0, Lcom/veclink/hw/bledevice/PetDevice;->onedaySportDataNum:I

    .line 37
    const/16 v0, 0x1e

    iput v0, p0, Lcom/veclink/hw/bledevice/PetDevice;->sportDataInterv:I

    .line 42
    const/16 v0, 0x1c20

    iget v1, p0, Lcom/veclink/hw/bledevice/PetDevice;->sportDataInterv:I

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArray:[B

    .line 47
    iput v2, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArrayIndex:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/hw/bledevice/PetDevice;->petDataList:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public converPetDeviceData()V
    .locals 18

    .prologue
    .line 193
    const/4 v4, 0x0

    .line 194
    .local v4, "j":I
    const/4 v3, 0x0

    .line 195
    .local v3, "i":I
    const/16 v14, 0x5a0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/veclink/hw/bledevice/PetDevice;->sportDataInterv:I

    div-int/2addr v14, v15

    const/4 v15, 0x5

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    .line 196
    .local v8, "mTemppetDataArray":[[I
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArrayIndex:I

    if-ge v3, v14, :cond_0

    .line 197
    aget-object v14, v8, v4

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArray:[B

    move-object/from16 v16, v0

    aget-byte v16, v16, v3

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aput v16, v14, v15

    .line 198
    aget-object v14, v8, v4

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArray:[B

    move-object/from16 v16, v0

    add-int/lit8 v17, v3, 0x1

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aput v16, v14, v15

    .line 199
    aget-object v14, v8, v4

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArray:[B

    move-object/from16 v16, v0

    add-int/lit8 v17, v3, 0x2

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aput v16, v14, v15

    .line 200
    aget-object v14, v8, v4

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArray:[B

    move-object/from16 v16, v0

    add-int/lit8 v17, v3, 0x3

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aput v16, v14, v15

    .line 201
    aget-object v14, v8, v4

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArray:[B

    move-object/from16 v16, v0

    add-int/lit8 v17, v3, 0x4

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aput v16, v14, v15

    .line 202
    add-int/lit8 v4, v4, 0x1

    .line 203
    add-int/lit8 v3, v3, 0x4

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/veclink/hw/bledevice/PetDevice;->onedaySportDataNum:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/veclink/hw/bledevice/PetDevice;->getHourMinute(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/hw/bledevice/PetDevice;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "deviceId":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/veclink/hw/bledevice/PetDevice;->mStepDataYear:I

    add-int/lit16 v15, v15, 0x7d0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/veclink/hw/bledevice/PetDevice;->mStepDataMonth:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/hw/bledevice/PetDevice;->intToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/veclink/hw/bledevice/PetDevice;->mStepDataDate:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/hw/bledevice/PetDevice;->intToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "dateTime":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/veclink/hw/bledevice/PetDevice;->onedaySportDataNum:I

    if-ge v5, v14, :cond_1

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/hw/bledevice/PetDevice;->mRecordDataHour:[I

    aget v14, v14, v5

    mul-int/lit8 v14, v14, 0x3c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/hw/bledevice/PetDevice;->mRecordDataMinute:[I

    aget v15, v15, v5

    add-int v12, v14, v15

    .line 211
    .local v12, "startTime":I
    aget-object v14, v8, v5

    const/4 v15, 0x0

    aget v10, v14, v15

    .line 212
    .local v10, "noSportDuration":I
    aget-object v14, v8, v5

    const/4 v15, 0x1

    aget v6, v14, v15

    .line 213
    .local v6, "lightSleepDuration":I
    aget-object v14, v8, v5

    const/4 v15, 0x2

    aget v7, v14, v15

    .line 214
    .local v7, "lightSportDuration":I
    aget-object v14, v8, v5

    const/4 v15, 0x3

    aget v9, v14, v15

    .line 215
    .local v9, "middleSportDuration":I
    aget-object v14, v8, v5

    const/4 v15, 0x4

    aget v13, v14, v15

    .line 216
    .local v13, "strongSportDuration":I
    new-instance v11, Lcom/veclink/pet/PetData;

    invoke-direct {v11}, Lcom/veclink/pet/PetData;-><init>()V

    .line 217
    .local v11, "petData":Lcom/veclink/pet/PetData;
    iput v12, v11, Lcom/veclink/pet/PetData;->startTime:I

    .line 218
    iput-object v1, v11, Lcom/veclink/pet/PetData;->dateTime:Ljava/lang/String;

    .line 219
    iput v10, v11, Lcom/veclink/pet/PetData;->noSportDuration:I

    .line 220
    iput v7, v11, Lcom/veclink/pet/PetData;->lightSportDuration:I

    .line 221
    iput v9, v11, Lcom/veclink/pet/PetData;->middleSportDuration:I

    .line 222
    iput v13, v11, Lcom/veclink/pet/PetData;->strongSportDuration:I

    .line 223
    iput-object v2, v11, Lcom/veclink/pet/PetData;->deviceId:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/hw/bledevice/PetDevice;->petDataList:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 227
    .end local v6    # "lightSleepDuration":I
    .end local v7    # "lightSportDuration":I
    .end local v9    # "middleSportDuration":I
    .end local v10    # "noSportDuration":I
    .end local v11    # "petData":Lcom/veclink/pet/PetData;
    .end local v12    # "startTime":I
    .end local v13    # "strongSportDuration":I
    :cond_1
    return-void
.end method

.method public createSyncPetDataCmdArray(Ljava/util/Date;Ljava/util/Date;)[B
    .locals 13
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "endDate"    # Ljava/util/Date;

    .prologue
    .line 62
    const/16 v11, 0xa

    new-array v6, v11, [B

    .line 64
    .local v6, "parmasArray":[B
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 65
    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v8

    .line 66
    .local v8, "startTimeArray":[I
    invoke-static {p2}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v2

    .line 67
    .local v2, "endTimeArray":[I
    const/4 v11, 0x0

    aget v9, v8, v11

    .line 68
    .local v9, "startYear":I
    const/4 v11, 0x1

    aget v7, v8, v11

    .line 69
    .local v7, "startMonth":I
    const/4 v11, 0x2

    aget v10, v8, v11

    .line 70
    .local v10, "startdate":I
    const/4 v11, 0x0

    aget v3, v2, v11

    .line 71
    .local v3, "endYear":I
    const/4 v11, 0x1

    aget v1, v2, v11

    .line 72
    .local v1, "endMonth":I
    const/4 v11, 0x2

    aget v4, v2, v11

    .line 73
    .local v4, "enddate":I
    const/4 v11, 0x0

    add-int/lit16 v12, v9, -0x7d0

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    .line 74
    const/4 v11, 0x1

    int-to-byte v12, v7

    aput-byte v12, v6, v11

    .line 75
    const/4 v11, 0x2

    int-to-byte v12, v10

    aput-byte v12, v6, v11

    .line 76
    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 77
    const/4 v11, 0x4

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 78
    const/4 v11, 0x5

    add-int/lit16 v12, v3, -0x7d0

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    .line 79
    const/4 v11, 0x6

    int-to-byte v12, v1

    aput-byte v12, v6, v11

    .line 80
    const/4 v11, 0x7

    int-to-byte v12, v4

    aput-byte v12, v6, v11

    .line 81
    const/16 v11, 0x8

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 82
    const/16 v11, 0x9

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 91
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

    .line 92
    .local v0, "cmdArray":[B
    const/4 v11, 0x0

    const/16 v12, 0x5a

    aput-byte v12, v0, v11

    .line 93
    const/4 v11, 0x1

    const/16 v12, 0x1a

    aput-byte v12, v0, v11

    .line 94
    const/4 v11, 0x2

    const/16 v12, 0x5a

    aput-byte v12, v0, v11

    .line 95
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v11, v6

    if-ge v5, v11, :cond_1

    .line 96
    add-int/lit8 v11, v5, 0x3

    aget-byte v12, v6, v5

    aput-byte v12, v0, v11

    .line 95
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    .end local v0    # "cmdArray":[B
    .end local v5    # "i":I
    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 85
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 86
    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 87
    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 88
    const/4 v11, 0x4

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 89
    const/4 v11, 0x5

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    goto :goto_0

    .line 98
    .restart local v0    # "cmdArray":[B
    .restart local v5    # "i":I
    :cond_1
    return-object v0
.end method

.method public parsePetData([B)Ljava/lang/Object;
    .locals 13
    .param p1, "value"    # [B

    .prologue
    .line 108
    array-length v7, p1

    .line 109
    .local v7, "transdatalength":I
    const/4 v8, 0x5

    if-lt v7, v8, :cond_0

    const/4 v8, 0x0

    aget-byte v8, p1, v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    aget-byte v8, p1, v8

    const/16 v9, 0x1a

    if-ne v8, v9, :cond_0

    .line 111
    const/4 v8, 0x3

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    const/4 v9, 0x4

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    iput v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->totalPackDataNum:I

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PetData totalPackDataNum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/veclink/hw/bledevice/PetDevice;->totalPackDataNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 113
    iget v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->totalPackDataNum:I

    if-nez v8, :cond_0

    .line 114
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mOneDayDataOk:Z

    .line 115
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mAllDataOk:Z

    .line 116
    const/4 v8, 0x0

    .line 189
    :goto_0
    return-object v8

    .line 121
    :cond_0
    const/4 v1, 0x3

    .line 122
    .local v1, "dataOffset":I
    const/4 v4, 0x0

    .line 123
    .local v4, "onedayFirstPackage":Z
    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    .line 124
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->isDeviceResponseError:Z

    .line 125
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 127
    :cond_1
    const/4 v8, 0x0

    aget-byte v8, p1, v8

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_2

    const/4 v8, 0x0

    aget-byte v8, p1, v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_3

    .line 135
    :cond_2
    const/4 v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mPackageSn:I

    .line 136
    iget v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mPackageSn:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v4, 0x1

    .line 138
    :goto_1
    iget v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mPackageSn:I

    and-int/lit16 v3, v8, 0xff

    .line 140
    .local v3, "index":I
    iget-object v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mReceiveStaus:[B

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

    .line 141
    iget v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mPackageSn:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 142
    const/4 v1, 0x3

    .line 143
    move v2, v1

    .local v2, "i":I
    :goto_2
    if-ge v2, v7, :cond_5

    .line 144
    iget-object v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArray:[B

    iget v9, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArrayIndex:I

    aget-byte v10, p1, v2

    aput-byte v10, v8, v9

    .line 145
    iget v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArrayIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArrayIndex:I

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 130
    .end local v2    # "i":I
    .end local v3    # "index":I
    :cond_3
    const-string v8, "value[0]###PACKAGE_HEAD_CMD_ERROR:"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 131
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->isDeviceResponseError:Z

    .line 132
    const/16 v8, -0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 136
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 148
    .restart local v3    # "index":I
    :cond_5
    iget v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mPackageSn:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 149
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mAllDataOk:Z

    .line 150
    iget-object v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mReceiveStaus:[B

    add-int/lit8 v9, v3, 0x6

    const/4 v10, -0x2

    aput-byte v10, v8, v9

    .line 151
    iget-object v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mLengthPackageSnArray:[B

    const/4 v9, 0x0

    const/4 v10, 0x5

    aget-byte v10, p1, v10

    aput-byte v10, v8, v9

    .line 152
    iget-object v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mLengthPackageSnArray:[B

    const/4 v9, 0x1

    const/4 v10, 0x6

    aget-byte v10, p1, v10

    aput-byte v10, v8, v9

    .line 153
    const/16 v8, 0xa

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mStepDataYear:I

    .line 154
    const/16 v8, 0xb

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mStepDataMonth:I

    .line 155
    const/16 v8, 0xc

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mStepDataDate:I

    .line 156
    const/16 v8, 0xd

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->onedaySportDataNum:I

    .line 157
    iget v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->onedaySportDataNum:I

    mul-int/lit8 v8, v8, 0x5

    add-int/lit8 v8, v8, 0x11

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArray:[B

    .line 158
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArrayIndex:I

    .line 159
    const/4 v8, 0x3

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    const/4 v9, 0x4

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v6, v8, v9

    .line 160
    .local v6, "totalOnePackDataNum":I
    iput v6, p0, Lcom/veclink/hw/bledevice/PetDevice;->oneLongpackDataLength:I

    .line 161
    div-int/lit8 v0, v6, 0x11

    .line 162
    .local v0, "count":I
    rem-int/lit8 v8, v6, 0x11

    if-eqz v8, :cond_6

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 164
    :cond_6
    iput v0, p0, Lcom/veclink/hw/bledevice/PetDevice;->oneLongpackSmallPackCount:I

    .line 165
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_3
    const/16 v8, 0x78

    if-ge v2, v8, :cond_8

    .line 166
    iget-object v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mReceiveStaus:[B

    div-int/lit8 v9, v2, 0x8

    aget-byte v10, v8, v9

    const/4 v11, 0x1

    rem-int/lit8 v12, v2, 0x8

    shl-int/2addr v11, v12

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 169
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v6    # "totalOnePackDataNum":I
    :cond_7
    iget v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mPackageSn:I

    const/16 v9, 0xff

    if-ne v8, v9, :cond_9

    .line 170
    const-string v8, "allday over!"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/PetDevice;->converPetDeviceData()V

    .line 173
    const/16 v8, 0x1c20

    iget v9, p0, Lcom/veclink/hw/bledevice/PetDevice;->sportDataInterv:I

    div-int/2addr v8, v9

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArray:[B

    .line 174
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArrayIndex:I

    .line 175
    const-string v8, "\u540c\u6b65\u996e\u6c34\u6570\u636e\u5b8c\u6210\uff01"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 176
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mOneDayDataOk:Z

    .line 177
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mAllDataOk:Z

    .line 189
    :cond_8
    :goto_4
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_0

    .line 179
    :cond_9
    iget v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mPackageSn:I

    const/16 v9, 0xfe

    if-ne v8, v9, :cond_8

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/veclink/hw/bledevice/PetDevice;->mStepDataYear:I

    add-int/lit16 v9, v9, 0x7d0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/veclink/hw/bledevice/PetDevice;->mStepDataMonth:I

    invoke-virtual {p0, v9}, Lcom/veclink/hw/bledevice/PetDevice;->intToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/veclink/hw/bledevice/PetDevice;->mStepDataDate:I

    invoke-virtual {p0, v9}, Lcom/veclink/hw/bledevice/PetDevice;->intToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "sportTime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " oneday over! recordNum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpSportDataArrayOfByteIndex:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/PetDevice;->converPetDeviceData()V

    .line 183
    const/16 v8, 0x1c20

    iget v9, p0, Lcom/veclink/hw/bledevice/PetDevice;->sportDataInterv:I

    div-int/2addr v8, v9

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArray:[B

    .line 184
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mTmpDataByteArrayIndex:I

    .line 186
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/hw/bledevice/PetDevice;->mOneDayDataOk:Z

    goto :goto_4
.end method

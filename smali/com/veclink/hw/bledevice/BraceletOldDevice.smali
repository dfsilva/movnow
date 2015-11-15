.class public Lcom/veclink/hw/bledevice/BraceletOldDevice;
.super Lcom/veclink/hw/bledevice/BaseBleDevice;
.source "BraceletOldDevice.java"


# static fields
.field public static final CMD_APP_SEND_UPDATE_DATA:B = 0x12t

.field public static final CMD_SEND_NEXT_PACKAGE:B = 0x13t


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/veclink/hw/bledevice/BaseBleDevice;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mContext:Landroid/content/Context;

    .line 26
    const/16 v0, 0x10e0

    iget v1, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepTimeInterval:I

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByte:[B

    .line 27
    return-void
.end method


# virtual methods
.method public convertSaveSportData()V
    .locals 26

    .prologue
    .line 91
    const/4 v6, 0x0

    .line 92
    .local v6, "j":I
    const/4 v5, 0x0

    .line 93
    .local v5, "i":I
    const/16 v21, 0x5a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepTimeInterval:I

    move/from16 v22, v0

    div-int v21, v21, v22

    const/16 v22, 0x2

    filled-new-array/range {v21 .. v22}, [I

    move-result-object v21

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    .line 94
    .local v8, "mTempSportDataArray":[[I
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "datasize"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByteIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "count":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v17, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    .line 98
    .local v20, "todaystep":I
    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByte:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_2

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByte:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v5

    shl-int/lit8 v21, v21, 0x8

    const v22, 0xff00

    and-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v23, v5, 0x1

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    or-int v18, v21, v22

    .line 101
    .local v18, "temp":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const/16 v21, 0x30

    move/from16 v0, v21

    if-ge v6, v0, :cond_0

    .line 103
    aget-object v21, v8, v6

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByte:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v5

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    aput v23, v21, v22

    .line 104
    aget-object v21, v8, v6

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByte:[B

    move-object/from16 v23, v0

    add-int/lit8 v24, v5, 0x1

    aget-byte v23, v23, v24

    shl-int/lit8 v23, v23, 0x8

    const v24, 0xff00

    and-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByte:[B

    move-object/from16 v24, v0

    add-int/lit8 v25, v5, 0x2

    aget-byte v24, v24, v25

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    or-int v23, v23, v24

    aput v23, v21, v22

    .line 106
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 108
    add-int/lit8 v5, v5, 0x1

    .line 109
    rem-int/lit8 v21, v2, 0x11

    if-nez v21, :cond_1

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v21 .. v21}, Ljava/io/PrintStream;->println()V

    .line 110
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 111
    add-int v20, v20, v18

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 114
    .end local v18    # "temp":I
    :cond_2
    const/4 v9, 0x0

    .line 115
    .local v9, "onedaydatanum":I
    const/16 v21, 0x1e

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepTimeInterval:I

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepTimeInterval:I

    move/from16 v19, v0

    .line 117
    .local v19, "timeInterval":I
    const/16 v21, 0x5a0

    div-int v9, v21, v19

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->getHourMinute(I)V

    .line 119
    const/4 v11, 0x0

    .line 120
    .local v11, "onedaytotalstep":I
    const/4 v10, 0x0

    .line 121
    .local v10, "onedaysleepstepdata":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "deviceId":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataYear:I

    move/from16 v22, v0

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataMonth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataDate:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "dateTime":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1
    if-ge v7, v9, :cond_5

    .line 124
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mRecordDataHour:[I

    move-object/from16 v22, v0

    aget v22, v22, v7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mRecordDataMinute:[I

    move-object/from16 v22, v0

    aget v22, v22, v7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, "sportTime":Ljava/lang/String;
    aget-object v21, v8, v7

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->intToString(I)Ljava/lang/String;

    move-result-object v16

    .line 126
    .local v16, "sportType":Ljava/lang/String;
    aget-object v21, v8, v7

    const/16 v22, 0x1

    aget v14, v21, v22

    .line 127
    .local v14, "sportStep":I
    if-nez v14, :cond_3

    .line 123
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 128
    :cond_3
    const-string v21, "01"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 129
    add-int/2addr v11, v14

    .line 130
    new-instance v13, Lcom/veclink/bracelet/bean/DeviceSportData;

    invoke-direct {v13}, Lcom/veclink/bracelet/bean/DeviceSportData;-><init>()V

    .line 131
    .local v13, "sportData":Lcom/veclink/bracelet/bean/DeviceSportData;
    iput-object v4, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->deviceId:Ljava/lang/String;

    .line 132
    iput v14, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->sportStep:I

    .line 133
    iput-object v15, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->sportTime:Ljava/lang/String;

    .line 134
    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->sportType:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    .end local v13    # "sportData":Lcom/veclink/bracelet/bean/DeviceSportData;
    :cond_4
    new-instance v12, Lcom/veclink/bracelet/bean/DeviceSleepData;

    invoke-direct {v12}, Lcom/veclink/bracelet/bean/DeviceSleepData;-><init>()V

    .line 138
    .local v12, "sleepData":Lcom/veclink/bracelet/bean/DeviceSleepData;
    iput-object v3, v12, Lcom/veclink/bracelet/bean/DeviceSleepData;->dateTime:Ljava/lang/String;

    .line 139
    iput-object v4, v12, Lcom/veclink/bracelet/bean/DeviceSleepData;->deviceId:Ljava/lang/String;

    .line 140
    const/16 v21, 0x1e

    move/from16 v0, v21

    iput v0, v12, Lcom/veclink/bracelet/bean/DeviceSleepData;->sleepDuration:I

    .line 141
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v12, Lcom/veclink/bracelet/bean/DeviceSleepData;->sleepState:I

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mRecordDataHour:[I

    move-object/from16 v21, v0

    aget v21, v21, v7

    mul-int/lit8 v21, v21, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mRecordDataMinute:[I

    move-object/from16 v22, v0

    aget v22, v22, v7

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v12, Lcom/veclink/bracelet/bean/DeviceSleepData;->startTime:I

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->syncSleepDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    .end local v12    # "sleepData":Lcom/veclink/bracelet/bean/DeviceSleepData;
    .end local v14    # "sportStep":I
    .end local v15    # "sportTime":Ljava/lang/String;
    .end local v16    # "sportType":Ljava/lang/String;
    :cond_5
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataYear:I

    move/from16 v22, v0

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataMonth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataDate:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 149
    .restart local v15    # "sportTime":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\u65e5\u671f\uff1a"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " \u603b\u5171\u662f "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\u6b65"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public varargs createCmdArrayOfByte([Ljava/lang/Object;)[B
    .locals 12
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/16 v11, 0x5a

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 340
    aget-object v6, p1, v8

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 341
    .local v0, "cmd":B
    const/4 v3, 0x0

    .line 342
    .local v3, "paramArrayOfByte":[B
    const/16 v6, 0x5b

    if-eq v0, v6, :cond_0

    if-eq v0, v9, :cond_0

    array-length v6, p1

    if-le v6, v7, :cond_0

    aget-object v6, p1, v7

    check-cast v6, [B

    move-object v3, v6

    check-cast v3, [B

    .line 343
    :cond_0
    const/16 v6, 0x14

    new-array v1, v6, [B

    .line 344
    .local v1, "cmdArray":[B
    aput-byte v11, v1, v8

    .line 345
    aput-byte v8, v1, v9

    .line 346
    sparse-switch v0, :sswitch_data_0

    .line 387
    :goto_0
    if-eqz v3, :cond_2

    array-length v6, v3

    if-lez v6, :cond_2

    .line 388
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 389
    add-int/lit8 v6, v2, -0x3

    array-length v7, v3

    if-ge v6, v7, :cond_1

    add-int/lit8 v6, v2, -0x3

    aget-byte v6, v3, v6

    aput-byte v6, v1, v2

    .line 388
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 348
    .end local v2    # "i":I
    :sswitch_0
    aput-byte v7, v1, v7

    goto :goto_0

    .line 352
    :sswitch_1
    aget-object v6, p1, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 353
    .local v5, "timeinterval":I
    const/4 v6, 0x4

    new-array v1, v6, [B

    .end local v1    # "cmdArray":[B
    aput-byte v11, v1, v8

    aput-byte v9, v1, v7

    aput-byte v8, v1, v9

    int-to-byte v6, v5

    aput-byte v6, v1, v10

    .line 354
    .restart local v1    # "cmdArray":[B
    goto :goto_0

    .line 357
    .end local v5    # "timeinterval":I
    :sswitch_2
    aput-byte v10, v1, v7

    goto :goto_0

    .line 361
    :sswitch_3
    const/4 v6, 0x7

    aput-byte v6, v1, v7

    goto :goto_0

    .line 365
    :sswitch_4
    new-array v1, v10, [B

    .end local v1    # "cmdArray":[B
    fill-array-data v1, :array_0

    .line 366
    .restart local v1    # "cmdArray":[B
    goto :goto_0

    .line 369
    :sswitch_5
    const/16 v6, 0x11

    aput-byte v6, v1, v7

    goto :goto_0

    .line 373
    :sswitch_6
    new-array v1, v10, [B

    .line 374
    aput-byte v11, v1, v8

    .line 375
    const/4 v6, 0x4

    aput-byte v6, v1, v7

    .line 376
    aput-byte v8, v1, v9

    goto :goto_0

    .line 380
    :sswitch_7
    new-array v1, v10, [B

    .line 381
    aget-object v6, p1, v7

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    .line 382
    .local v4, "sync_cmd":B
    const/16 v6, 0x5b

    aput-byte v6, v1, v8

    .line 383
    aput-byte v4, v1, v7

    .line 384
    iget v6, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    goto :goto_0

    .line 393
    .end local v4    # "sync_cmd":B
    :cond_2
    return-object v1

    .line 346
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_6
        0x7 -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x5b -> :sswitch_7
    .end sparse-switch

    .line 365
    :array_0
    .array-data 1
        0x5at
        0x10t
        0x0t
    .end array-data
.end method

.method public createResponseSportDataCmdArray(B)[B
    .locals 3
    .param p1, "sync_cmd"    # B

    .prologue
    .line 238
    const/4 v1, 0x3

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 239
    .local v0, "cmdArray":[B
    return-object v0
.end method

.method public getHourMinute(I)V
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "hour":I
    const/4 v3, 0x0

    .line 155
    .local v3, "minute":I
    const/4 v2, 0x0

    .line 156
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 157
    div-int/lit8 v0, v2, 0x3c

    .line 158
    rem-int/lit8 v3, v2, 0x3c

    .line 159
    iget-object v4, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mRecordDataHour:[I

    aput v0, v4, v1

    .line 160
    iget-object v4, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mRecordDataMinute:[I

    aput v3, v4, v1

    .line 161
    add-int/lit8 v2, v2, 0x1e

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public intToString(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 228
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pareseQueryFirmwareVersionResponse([B)I
    .locals 11
    .param p1, "value"    # [B

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x2

    const/4 v4, 0x0

    .line 184
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_0

    .line 185
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p1, v2

    and-int/lit16 v7, v7, 0xff

    or-int/lit16 v7, v7, -0x100

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_0
    const-string v5, ""

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 188
    aget-byte v5, p1, v4

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    const/16 v6, 0x10

    if-eq v5, v6, :cond_3

    .line 189
    :cond_1
    const/16 v4, -0x3e8

    .line 224
    :cond_2
    :goto_1
    return v4

    .line 191
    :cond_3
    aget-byte v5, p1, v9

    iput v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    .line 197
    aget-byte v5, p1, v9

    if-nez v5, :cond_2

    .line 198
    const/4 v5, 0x3

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    const/4 v6, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v3, v5, v6

    .line 199
    .local v3, "mFirmWareVersion":I
    const-string v0, ""

    .line 200
    .local v0, "deviceId":Ljava/lang/String;
    array-length v5, p1

    if-lt v5, v10, :cond_5

    .line 201
    const/4 v1, 0x5

    .local v1, "i":I
    :goto_2
    if-ge v1, v10, :cond_6

    .line 202
    const/16 v5, 0xa

    if-ne v1, v5, :cond_4

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 205
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 209
    .end local v1    # "i":I
    :cond_5
    const-string v0, ""

    .line 211
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get deviceid success :deviceId\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get deviceid mFirmWareVersion\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 213
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 214
    iget-object v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    :goto_4
    iget-object v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceRomVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    iget-object v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iget-object v6, v6, Lcom/veclink/bracelet/bean/DeviceInfo;->device_type:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceRomVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    iget-object v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput-object v0, v5, Lcom/veclink/bracelet/bean/DeviceInfo;->deviceId:Ljava/lang/String;

    .line 221
    iget-object v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput v3, v5, Lcom/veclink/bracelet/bean/DeviceInfo;->firmware_version:I

    .line 222
    iget-object v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput v4, v5, Lcom/veclink/bracelet/bean/DeviceInfo;->protocol_version:I

    goto/16 :goto_1

    .line 216
    :cond_7
    iget-object v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public parseSetTimeIntervalRespone([B)I
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseSetIntervalRespond:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 176
    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v4

    if-eq v1, v3, :cond_1

    .line 177
    :cond_0
    const/16 v0, -0x3e8

    .line 180
    :goto_0
    return v0

    .line 179
    :cond_1
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    goto :goto_0
.end method

.method public parseSportData([B)Ljava/lang/Object;
    .locals 12
    .param p1, "value"    # [B

    .prologue
    const/4 v11, 0x3

    const/16 v9, -0x3e8

    const/16 v10, 0x90

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 36
    const-string v7, "braceleQoneSyncData"

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    array-length v4, p1

    .line 38
    .local v4, "transdatalength":I
    const/4 v0, 0x3

    .line 39
    .local v0, "dataOffset":I
    const/4 v2, 0x0

    .line 40
    .local v2, "onedayFirstPackage":Z
    aget-byte v7, p1, v6

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_0

    aget-byte v7, p1, v5

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_3

    .line 46
    :cond_0
    aget-byte v7, p1, v5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    aget-byte v7, p1, v5

    if-ne v7, v11, :cond_4

    .line 52
    :cond_1
    const/4 v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    .line 53
    iget v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    if-ne v7, v5, :cond_5

    move v2, v5

    .line 55
    :goto_0
    if-eqz v2, :cond_2

    .line 56
    const/16 v0, 0x8

    .line 57
    iput-boolean v6, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mAllDataOk:Z

    .line 58
    aget-byte v7, p1, v11

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataYear:I

    .line 59
    const/4 v7, 0x4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataMonth:I

    .line 60
    const/4 v7, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataDate:I

    .line 61
    const/4 v7, 0x6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepTimeInterval:I

    .line 62
    const/4 v7, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->oneDataRecordCount:I

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataYear:I

    add-int/lit16 v8, v8, 0x7d0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataMonth:I

    invoke-virtual {p0, v8}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->intToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataDate:I

    invoke-virtual {p0, v8}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->intToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "sportTime":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u8bb0\u5f55\u6761\u6570\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->oneDataRecordCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 65
    new-array v7, v10, [B

    iput-object v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByte:[B

    .line 67
    .end local v3    # "sportTime":Ljava/lang/String;
    :cond_2
    move v1, v0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_6

    .line 68
    iget-object v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByte:[B

    iget v8, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByteIndex:I

    aget-byte v9, p1, v1

    aput-byte v9, v7, v8

    .line 69
    iget v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByteIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByteIndex:I

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    .end local v1    # "i":I
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 87
    :goto_2
    return-object v5

    .line 49
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_5
    move v2, v6

    .line 53
    goto/16 :goto_0

    .line 71
    .restart local v1    # "i":I
    :cond_6
    iget v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    const/16 v8, 0xff

    if-ne v7, v8, :cond_8

    .line 72
    const-string v7, "all sportdata ok"

    invoke-static {v7}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->convertSaveSportData()V

    .line 74
    iput-boolean v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mOneDayDataOk:Z

    .line 75
    iput-boolean v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mAllDataOk:Z

    .line 76
    iput v6, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByteIndex:I

    .line 77
    new-array v5, v10, [B

    iput-object v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByte:[B

    .line 87
    :cond_7
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    .line 78
    :cond_8
    iget v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    const/16 v8, 0xfe

    if-ne v7, v8, :cond_7

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataYear:I

    add-int/lit16 v8, v8, 0x7d0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataMonth:I

    invoke-virtual {p0, v8}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->intToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mStepDataDate:I

    invoke-virtual {p0, v8}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->intToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .restart local v3    # "sportTime":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->convertSaveSportData()V

    .line 81
    iput v6, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByteIndex:I

    .line 82
    new-array v7, v10, [B

    iput-object v7, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mTmpSportDataArrayOfByte:[B

    .line 83
    iput-boolean v5, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mOneDayDataOk:Z

    goto :goto_3
.end method

.method public parseStartUpgradeResponse([B)I
    .locals 3
    .param p1, "value"    # [B

    .prologue
    const/4 v0, 0x0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRsp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 268
    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    .line 269
    :cond_0
    const/16 v0, -0x3e8

    .line 275
    :goto_0
    return v0

    .line 271
    :cond_1
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    iput v1, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    .line 272
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mUpgradeState:I

    .line 273
    iput v0, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mSendPackageNum:I

    goto :goto_0
.end method

.method public parseSyncParamsResponse([B)I
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseSyncParameterRespond:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 167
    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v3

    if-eq v1, v3, :cond_1

    .line 168
    :cond_0
    const/16 v0, -0x3e8

    .line 171
    :goto_0
    return v0

    .line 170
    :cond_1
    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    goto :goto_0
.end method

.method public parseUpdateResponseData([B)I
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "result":I
    iget v1, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->pareseCmdResponseType:I

    packed-switch v1, :pswitch_data_0

    .line 259
    :goto_0
    return v0

    .line 250
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->parseStartUpgradeResponse([B)I

    move-result v0

    .line 251
    goto :goto_0

    .line 253
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->parseUpgradeSendPackageResponse([B)I

    move-result v0

    .line 254
    goto :goto_0

    .line 256
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->parseUpgradeNextPackageResponse([B)I

    move-result v0

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x13881
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public parseUpgradeNextPackageResponse([B)I
    .locals 10
    .param p1, "value"    # [B

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 315
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 316
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, -0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    const-string v2, ""

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 320
    aget-byte v2, p1, v1

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    aget-byte v2, p1, v6

    const/16 v3, 0x13

    if-eq v2, v3, :cond_2

    .line 321
    :cond_1
    const/16 v1, -0x3e8

    .line 334
    :goto_1
    return v1

    .line 323
    :cond_2
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    iput v2, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    .line 324
    aget-byte v2, p1, v8

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    aget-byte v3, p1, v9

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mSendPackageNum:I

    .line 326
    aget-byte v2, p1, v8

    if-ne v2, v7, :cond_3

    aget-byte v2, p1, v9

    if-ne v2, v7, :cond_3

    .line 327
    const-string v2, "---:mAllPackageReceivOver = true"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 328
    iput-boolean v6, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mAllPackageReceivOver:Z

    goto :goto_1

    .line 330
    :cond_3
    const-string v2, "---:mNextPackageRequest = true"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 331
    iput-boolean v6, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mNextPackageRequest:Z

    goto :goto_1
.end method

.method public parseUpgradeSendPackageResponse([B)I
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x0

    .line 290
    iput-boolean v1, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mReTransferDataFlag:Z

    .line 291
    aget-byte v2, p1, v1

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_1

    .line 292
    :cond_0
    const/16 v1, -0x3e8

    .line 305
    :goto_0
    return v1

    .line 294
    :cond_1
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    iput v2, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mPackageSn:I

    .line 296
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mSendPackageNum:I

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--package num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mSendPackageNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0xf

    if-ge v0, v2, :cond_2

    .line 299
    iget-object v2, p0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mReceiveStaus:[B

    add-int/lit8 v3, v0, 0x5

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->convertRetransDataPackageNum()V

    goto :goto_0
.end method

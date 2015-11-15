.class public Lcom/veclink/hw/bledevice/BraceletNewDevice;
.super Lcom/veclink/hw/bledevice/BaseBleDevice;
.source "BraceletNewDevice.java"


# static fields
.field public static final ALARM_REMIND:B = 0x3t

.field public static final CALL_REMIND_TYPE:B = 0x1t

.field public static final CLEAN_SLEEP_DATA:B = 0x4t

.field public static final CLEAN_SPORT_DATA:B = 0x3t

.field public static final CMD_APP_QUERY_REMIND:B = 0x1t

.field public static final CMD_APP_SET_REMIND:B = 0x0t

.field public static final CMD_CHARGE:B = 0x19t

.field public static final CMD_MSG_REMIND:B = 0x15t

.field public static final CMD_REBOOT_OR_RESET_DEVICE:B = 0xft

.field public static final CMD_REMIND:B = 0x14t

.field public static final DRINGK_REMIND:B = 0x1t

.field public static final LONG_MSG_REMIND_TYPE:B = -0x1t

.field public static final LONG_SITTING_REMIND:B = 0x2t

.field public static final ONLY_REBOOT:B = 0x1t

.field public static final QQ_MSG_REMIND_TYPE:B = 0x3t

.field public static final QUERY_LAST_CMD_ACITON_RESULT:B = 0x2t

.field public static final RESET_ALL_CONTENT_AND_REBOOT:B = 0x0t

.field public static final SLEEP_DATA:I = 0x2

.field public static final SMS_REMIND_TYPE:B = 0x2t

.field public static final SPORT_DATA:I = 0x1

.field public static final WEIXIN_MSG_REMIND_TYPE:B = 0x4t

.field public static final WHATSAPP_MSG_REMIND_TYPE:B = 0x5t


# instance fields
.field public dataType:I

.field public isDeviceResponseError:Z

.field private isNeedHandlerWear:Z

.field private mTmpChargeDataArrarIndex:I

.field public mTmpChargeDataArrayOfByte:[B

.field public oneLongpackDataLength:I

.field public oneLongpackSmallPackCount:I

.field private onedayrecodcount:I

.field protected totalSmallPackage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/veclink/hw/bledevice/BaseBleDevice;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->totalSmallPackage:I

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->dataType:I

    .line 148
    iput-object p1, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    .line 149
    return-void
.end method


# virtual methods
.method public converSleepData()V
    .locals 18

    .prologue
    .line 423
    const/4 v4, 0x0

    .line 424
    .local v4, "j":I
    const/4 v3, 0x0

    .line 425
    .local v3, "i":I
    const/16 v13, 0x30

    const/4 v14, 0x3

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .line 427
    .local v6, "mTempSleepDataArray":[[I
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByte:[B

    array-length v13, v13

    if-ge v3, v13, :cond_0

    .line 428
    aget-object v13, v6, v4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByte:[B

    aget-byte v15, v15, v3

    shl-int/lit8 v15, v15, 0x8

    const v16, 0xff00

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByte:[B

    move-object/from16 v16, v0

    add-int/lit8 v17, v3, 0x1

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    aput v15, v13, v14

    .line 429
    aget-object v13, v6, v4

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByte:[B

    add-int/lit8 v16, v3, 0x2

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    aput v15, v13, v14

    .line 430
    aget-object v13, v6, v4

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByte:[B

    add-int/lit8 v16, v3, 0x3

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    aput v15, v13, v14

    .line 431
    add-int/lit8 v4, v4, 0x1

    .line 432
    add-int/lit8 v3, v3, 0x3

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "deviceId":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataYear:I

    add-int/lit16 v14, v14, 0x7d0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataMonth:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->intToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataDate:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->intToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "dateTime":Ljava/lang/String;
    const/4 v11, 0x0

    .line 438
    .local v11, "zeroHourMinuteSleepDuration":I
    const/16 v12, -0xa

    .line 439
    .local v12, "zeroSleepState":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    array-length v13, v6

    if-ge v5, v13, :cond_3

    .line 440
    aget-object v13, v6, v5

    const/4 v14, 0x0

    aget v10, v13, v14

    .line 441
    .local v10, "startTime":I
    aget-object v13, v6, v5

    const/4 v14, 0x1

    aget v8, v13, v14

    .line 442
    .local v8, "sleepDuration":I
    aget-object v13, v6, v5

    const/4 v14, 0x2

    aget v9, v13, v14

    .line 443
    .local v9, "sleepState":I
    if-eqz v8, :cond_2

    if-eqz v10, :cond_2

    .line 444
    new-instance v7, Lcom/veclink/bracelet/bean/DeviceSleepData;

    invoke-direct {v7}, Lcom/veclink/bracelet/bean/DeviceSleepData;-><init>()V

    .line 445
    .local v7, "sleepData":Lcom/veclink/bracelet/bean/DeviceSleepData;
    iput-object v1, v7, Lcom/veclink/bracelet/bean/DeviceSleepData;->dateTime:Ljava/lang/String;

    .line 446
    iput-object v2, v7, Lcom/veclink/bracelet/bean/DeviceSleepData;->deviceId:Ljava/lang/String;

    .line 447
    iput v8, v7, Lcom/veclink/bracelet/bean/DeviceSleepData;->sleepDuration:I

    .line 448
    iput v9, v7, Lcom/veclink/bracelet/bean/DeviceSleepData;->sleepState:I

    .line 449
    iput v10, v7, Lcom/veclink/bracelet/bean/DeviceSleepData;->startTime:I

    .line 450
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSleepDataResult:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v7    # "sleepData":Lcom/veclink/bracelet/bean/DeviceSleepData;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 452
    :cond_2
    add-int/2addr v11, v8

    .line 453
    const/16 v13, -0xa

    if-ne v12, v13, :cond_1

    .line 454
    move v12, v9

    goto :goto_2

    .line 457
    .end local v8    # "sleepDuration":I
    .end local v9    # "sleepState":I
    .end local v10    # "startTime":I
    :cond_3
    if-eqz v11, :cond_4

    .line 458
    new-instance v7, Lcom/veclink/bracelet/bean/DeviceSleepData;

    invoke-direct {v7}, Lcom/veclink/bracelet/bean/DeviceSleepData;-><init>()V

    .line 459
    .restart local v7    # "sleepData":Lcom/veclink/bracelet/bean/DeviceSleepData;
    iput-object v1, v7, Lcom/veclink/bracelet/bean/DeviceSleepData;->dateTime:Ljava/lang/String;

    .line 460
    iput-object v2, v7, Lcom/veclink/bracelet/bean/DeviceSleepData;->deviceId:Ljava/lang/String;

    .line 461
    iput v11, v7, Lcom/veclink/bracelet/bean/DeviceSleepData;->sleepDuration:I

    .line 462
    iput v12, v7, Lcom/veclink/bracelet/bean/DeviceSleepData;->sleepState:I

    .line 463
    const/4 v13, 0x0

    iput v13, v7, Lcom/veclink/bracelet/bean/DeviceSleepData;->startTime:I

    .line 464
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSleepDataResult:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v7    # "sleepData":Lcom/veclink/bracelet/bean/DeviceSleepData;
    :cond_4
    return-void
.end method

.method public convertSaveSportData()V
    .locals 24

    .prologue
    .line 471
    const/4 v7, 0x0

    .line 472
    .local v7, "j":I
    const/4 v6, 0x0

    .line 473
    .local v6, "i":I
    const/16 v21, 0x5a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepTimeInterval:I

    move/from16 v22, v0

    div-int v21, v21, v22

    const/16 v22, 0x1

    filled-new-array/range {v21 .. v22}, [I

    move-result-object v21

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    .line 474
    .local v10, "mTempSportDataArray":[[I
    const/4 v2, 0x0

    .line 475
    .local v2, "count":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v17, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    .line 478
    .local v20, "todaystep":I
    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByte:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_2

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByte:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v6

    shl-int/lit8 v21, v21, 0x8

    const v22, 0xff00

    and-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, 0x1

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    or-int v18, v21, v22

    .line 481
    .local v18, "temp":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const/16 v21, 0x30

    move/from16 v0, v21

    if-ge v7, v0, :cond_0

    .line 483
    aget-object v21, v10, v7

    const/16 v22, 0x0

    aput v18, v21, v22

    .line 484
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 485
    add-int/lit8 v6, v6, 0x1

    .line 486
    rem-int/lit8 v21, v2, 0x11

    if-nez v21, :cond_1

    .line 487
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v21 .. v21}, Ljava/io/PrintStream;->println()V

    .line 488
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 489
    add-int v20, v20, v18

    .line 478
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 492
    .end local v18    # "temp":I
    :cond_2
    const/4 v11, 0x0

    .line 493
    .local v11, "onedaydatanum":I
    const/16 v21, 0x1e

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepTimeInterval:I

    .line 494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepTimeInterval:I

    move/from16 v19, v0

    .line 495
    .local v19, "timeInterval":I
    const/16 v21, 0x5a0

    div-int v11, v21, v19

    .line 496
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->getHourMinute(I)V

    .line 497
    const/4 v12, 0x0

    .line 498
    .local v12, "onedaytotalstep":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "deviceId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataYear:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 565
    :goto_1
    return-void

    .line 501
    :cond_3
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->onedayrecodcount:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_6

    .line 502
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataYear:I

    move/from16 v22, v0

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataMonth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataDate:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mRecordDataHour:[I

    move-object/from16 v22, v0

    aget v22, v22, v8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mRecordDataMinute:[I

    move-object/from16 v22, v0

    aget v22, v22, v8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "00"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 504
    .local v15, "sportTime":Ljava/lang/String;
    const-string v16, "1"

    .line 505
    .local v16, "sportType":Ljava/lang/String;
    aget-object v21, v10, v8

    const/16 v22, 0x0

    aget v14, v21, v22

    .line 507
    .local v14, "sportStep":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isNeedHandlerWear:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 508
    new-instance v13, Lcom/veclink/bracelet/bean/DeviceSportData;

    invoke-direct {v13}, Lcom/veclink/bracelet/bean/DeviceSportData;-><init>()V

    .line 509
    .local v13, "sportData":Lcom/veclink/bracelet/bean/DeviceSportData;
    iput-object v3, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->deviceId:Ljava/lang/String;

    .line 510
    iput v14, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->sportStep:I

    .line 511
    iput-object v15, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->sportTime:Ljava/lang/String;

    .line 512
    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->sportType:Ljava/lang/String;

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v13    # "sportData":Lcom/veclink/bracelet/bean/DeviceSportData;
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 515
    :cond_5
    if-lez v14, :cond_4

    .line 516
    add-int/2addr v12, v14

    .line 517
    new-instance v13, Lcom/veclink/bracelet/bean/DeviceSportData;

    invoke-direct {v13}, Lcom/veclink/bracelet/bean/DeviceSportData;-><init>()V

    .line 518
    .restart local v13    # "sportData":Lcom/veclink/bracelet/bean/DeviceSportData;
    iput-object v3, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->deviceId:Ljava/lang/String;

    .line 519
    iput v14, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->sportStep:I

    .line 520
    iput-object v15, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->sportTime:Ljava/lang/String;

    .line 521
    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/veclink/bracelet/bean/DeviceSportData;->sportType:Ljava/lang/String;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 526
    .end local v13    # "sportData":Lcom/veclink/bracelet/bean/DeviceSportData;
    .end local v14    # "sportStep":I
    .end local v15    # "sportTime":Ljava/lang/String;
    .end local v16    # "sportType":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isNeedHandlerWear:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 527
    const/4 v5, -0x1

    .line 528
    .local v5, "firstBigIndex":I
    const/4 v4, -0x1

    .line 529
    .local v4, "endBigIndex":I
    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_d

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/bracelet/bean/DeviceSportData;

    move-object/from16 v0, v21

    iget v14, v0, Lcom/veclink/bracelet/bean/DeviceSportData;->sportStep:I

    .line 531
    .restart local v14    # "sportStep":I
    const v21, 0xffff

    move/from16 v0, v21

    if-ne v14, v0, :cond_7

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_7

    .line 532
    move v5, v8

    .line 534
    :cond_7
    const v21, 0xffff

    move/from16 v0, v21

    if-eq v14, v0, :cond_8

    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v5, v0, :cond_8

    .line 535
    move v4, v8

    .line 537
    :cond_8
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v5, v0, :cond_c

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_c

    .line 538
    sub-int v21, v4, v5

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    .line 539
    move v9, v5

    .local v9, "m":I
    :goto_5
    if-ge v9, v4, :cond_b

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/bracelet/bean/DeviceSportData;

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/veclink/bracelet/bean/DeviceSportData;->sportStep:I

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/bracelet/bean/DeviceSportData;

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/veclink/bracelet/bean/DeviceSportData;->isWear:Z

    .line 539
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 544
    .end local v9    # "m":I
    :cond_9
    move v9, v5

    .restart local v9    # "m":I
    :goto_6
    if-ge v9, v4, :cond_b

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/bracelet/bean/DeviceSportData;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/veclink/bracelet/bean/DeviceSportData;->sportStep:I

    move/from16 v21, v0

    const v22, 0xffff

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/bracelet/bean/DeviceSportData;

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/veclink/bracelet/bean/DeviceSportData;->sportStep:I

    .line 546
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/bracelet/bean/DeviceSportData;

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/veclink/bracelet/bean/DeviceSportData;->isWear:Z

    .line 544
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 549
    :cond_b
    const/4 v5, -0x1

    .line 550
    const/4 v4, -0x1

    .line 529
    .end local v9    # "m":I
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 554
    .end local v14    # "sportStep":I
    :cond_d
    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_f

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/bracelet/bean/DeviceSportData;

    move-object/from16 v0, v21

    iget v14, v0, Lcom/veclink/bracelet/bean/DeviceSportData;->sportStep:I

    .line 556
    .restart local v14    # "sportStep":I
    const v21, 0xffff

    move/from16 v0, v21

    if-ne v14, v0, :cond_e

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/bracelet/bean/DeviceSportData;

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/veclink/bracelet/bean/DeviceSportData;->sportStep:I

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/veclink/bracelet/bean/DeviceSportData;

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/veclink/bracelet/bean/DeviceSportData;->isWear:Z

    .line 554
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 563
    .end local v4    # "endBigIndex":I
    .end local v5    # "firstBigIndex":I
    .end local v14    # "sportStep":I
    :cond_f
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataYear:I

    move/from16 v22, v0

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataMonth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataDate:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->intToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 565
    .restart local v15    # "sportTime":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public varargs createCmdArrayOfByte([Ljava/lang/Object;)[B
    .locals 11
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/16 v10, 0x5a

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 831
    aget-object v5, p1, v7

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 832
    .local v0, "cmd":B
    const/4 v3, 0x0

    .line 833
    .local v3, "paramArrayOfByte":[B
    const/16 v5, 0x5b

    if-eq v0, v5, :cond_0

    if-eq v0, v8, :cond_0

    array-length v5, p1

    if-le v5, v6, :cond_0

    .line 834
    aget-object v5, p1, v6

    check-cast v5, [B

    move-object v3, v5

    check-cast v3, [B

    .line 835
    :cond_0
    const/16 v5, 0x14

    new-array v1, v5, [B

    .line 836
    .local v1, "cmdArray":[B
    aput-byte v10, v1, v7

    .line 837
    aput-byte v7, v1, v8

    .line 838
    sparse-switch v0, :sswitch_data_0

    .line 865
    :goto_0
    if-eqz v3, :cond_2

    array-length v5, v3

    if-lez v5, :cond_2

    .line 866
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 867
    add-int/lit8 v5, v2, -0x3

    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 868
    add-int/lit8 v5, v2, -0x3

    aget-byte v5, v3, v5

    aput-byte v5, v1, v2

    .line 866
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 840
    .end local v2    # "i":I
    :sswitch_0
    aput-byte v6, v1, v6

    goto :goto_0

    .line 844
    :sswitch_1
    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 845
    .local v4, "timeinterval":I
    const/4 v5, 0x4

    new-array v1, v5, [B

    .end local v1    # "cmdArray":[B
    aput-byte v10, v1, v7

    aput-byte v8, v1, v6

    aput-byte v7, v1, v8

    int-to-byte v5, v4

    aput-byte v5, v1, v9

    .line 846
    .restart local v1    # "cmdArray":[B
    goto :goto_0

    .line 849
    .end local v4    # "timeinterval":I
    :sswitch_2
    aput-byte v9, v1, v6

    goto :goto_0

    .line 853
    :sswitch_3
    const/4 v5, 0x7

    aput-byte v5, v1, v6

    goto :goto_0

    .line 857
    :sswitch_4
    new-array v1, v9, [B

    .end local v1    # "cmdArray":[B
    fill-array-data v1, :array_0

    .line 858
    .restart local v1    # "cmdArray":[B
    goto :goto_0

    .line 861
    :sswitch_5
    const/16 v5, 0x11

    aput-byte v5, v1, v6

    goto :goto_0

    .line 872
    :cond_2
    return-object v1

    .line 838
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x7 -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
    .end sparse-switch

    .line 857
    :array_0
    .array-data 1
        0x5at
        0x10t
        0x0t
    .end array-data
.end method

.method public createQueryRemindCmdArrayOfByte(BI)[B
    .locals 5
    .param p1, "remindType"    # B
    .param p2, "remindSerialNumber"    # I

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 905
    new-array v0, v4, [B

    .line 906
    .local v0, "cmdArray":[B
    const/16 v1, 0x5a

    aput-byte v1, v0, v2

    .line 907
    aput-byte v4, v0, v3

    .line 908
    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 909
    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 910
    const/4 v1, 0x4

    aput-byte p1, v0, v1

    .line 911
    const/4 v1, 0x5

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 913
    return-object v0
.end method

.method public createSendNameCmdArray([B)[B
    .locals 5
    .param p1, "msgContentArray"    # [B

    .prologue
    const/4 v4, 0x0

    .line 942
    const/16 v2, 0x14

    new-array v0, v2, [B

    .line 943
    .local v0, "cmdArray":[B
    const/16 v2, 0x5a

    aput-byte v2, v0, v4

    .line 944
    const/4 v2, 0x1

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    .line 945
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 946
    const/4 v2, 0x3

    const/16 v3, -0x7d

    aput-byte v3, v0, v2

    .line 947
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x4

    if-ge v1, v2, :cond_1

    .line 948
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 949
    add-int/lit8 v2, v1, 0x4

    aget-byte v3, p1, v1

    aput-byte v3, v0, v2

    .line 947
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 951
    :cond_1
    return-object v0
.end method

.method public createSendShortRemindCmdArrayOfByte(B[BI)[B
    .locals 5
    .param p1, "msgRemindType"    # B
    .param p2, "msgContentArray"    # [B
    .param p3, "contentLength"    # I

    .prologue
    const/4 v4, 0x0

    .line 923
    const/16 v2, 0x14

    new-array v0, v2, [B

    .line 924
    .local v0, "cmdArray":[B
    const/16 v2, 0x5a

    aput-byte v2, v0, v4

    .line 925
    const/4 v2, 0x1

    const/16 v3, 0x15

    aput-byte v3, v0, v2

    .line 926
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 927
    const/4 v2, 0x3

    aput-byte p1, v0, v2

    .line 928
    const/4 v2, 0x4

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    .line 929
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 930
    add-int/lit8 v2, v1, 0x5

    aget-byte v3, p2, v1

    aput-byte v3, v0, v2

    .line 929
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 932
    :cond_0
    return-object v0
.end method

.method public createSetRemindCmdArrayOfByte(Lcom/veclink/bracelet/bean/BaseRemindParam;)[B
    .locals 8
    .param p1, "baseRemindParam"    # Lcom/veclink/bracelet/bean/BaseRemindParam;

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 882
    new-array v0, v7, [B

    .line 883
    .local v0, "cmdArray":[B
    const/16 v3, 0x5a

    aput-byte v3, v0, v4

    .line 884
    aput-byte v7, v0, v5

    .line 885
    const/4 v3, 0x2

    aput-byte v4, v0, v3

    .line 886
    iget v3, p1, Lcom/veclink/bracelet/bean/BaseRemindParam;->querysetflag:I

    if-nez v3, :cond_0

    .line 887
    aput-byte v4, v0, v6

    .line 891
    :goto_0
    invoke-virtual {p1}, Lcom/veclink/bracelet/bean/BaseRemindParam;->toByteArrayParam()[B

    move-result-object v2

    .line 892
    .local v2, "paramArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 893
    add-int/lit8 v3, v1, 0x4

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 892
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 889
    .end local v1    # "i":I
    .end local v2    # "paramArray":[B
    :cond_0
    aput-byte v5, v0, v6

    goto :goto_0

    .line 895
    .restart local v1    # "i":I
    .restart local v2    # "paramArray":[B
    :cond_1
    return-object v0
.end method

.method public getHourMinute(I)V
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "hour":I
    const/4 v3, 0x0

    .line 570
    .local v3, "minute":I
    const/4 v2, 0x0

    .line 571
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 572
    div-int/lit8 v0, v2, 0x3c

    .line 573
    rem-int/lit8 v3, v2, 0x3c

    .line 574
    iget-object v4, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mRecordDataHour:[I

    aput v0, v4, v1

    .line 575
    iget-object v4, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mRecordDataMinute:[I

    aput v3, v4, v1

    .line 576
    add-int/lit8 v2, v2, 0x1e

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    :cond_0
    return-void
.end method

.method public intToString(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 720
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
    .locals 14
    .param p1, "value"    # [B

    .prologue
    const v13, 0xff00

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 648
    aget-byte v8, p1, v7

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    aget-byte v8, p1, v8

    const/16 v9, 0x10

    if-eq v8, v9, :cond_2

    .line 649
    :cond_0
    const/16 v7, -0x3e8

    .line 716
    :cond_1
    :goto_0
    return v7

    .line 651
    :cond_2
    aget-byte v8, p1, v10

    iput v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    .line 655
    const-string v0, ""

    .line 657
    .local v0, "deviceId":Ljava/lang/String;
    aget-byte v8, p1, v10

    if-nez v8, :cond_1

    .line 658
    array-length v8, p1

    const/16 v9, 0x13

    if-le v8, v9, :cond_5

    .line 659
    aget-byte v8, p1, v11

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v13

    aget-byte v9, p1, v12

    and-int/lit16 v9, v9, 0xff

    or-int v5, v8, v9

    .line 660
    .local v5, "mFirmWareVersion":I
    const/16 v8, 0x8

    new-array v1, v8, [B

    .line 661
    .local v1, "deviceIdByteArray":[B
    const/4 v4, 0x5

    .local v4, "i":I
    :goto_1
    const/16 v8, 0xd

    if-ge v4, v8, :cond_3

    .line 662
    add-int/lit8 v8, v4, -0x5

    aget-byte v9, p1, v4

    aput-byte v9, v1, v8

    .line 661
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 664
    :cond_3
    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToDeviceId([B)Ljava/lang/String;

    move-result-object v0

    .line 665
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get deviceid success :deviceId\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 666
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get deviceid mFirmWareVersion\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 667
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 668
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 672
    :goto_2
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceRomVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 673
    const/4 v8, 0x5

    new-array v3, v8, [B

    .line 674
    .local v3, "device_type_array":[B
    const/16 v8, 0xf

    aget-byte v8, p1, v8

    aput-byte v8, v3, v7

    .line 675
    const/4 v8, 0x1

    const/16 v9, 0x10

    aget-byte v9, p1, v9

    aput-byte v9, v3, v8

    .line 676
    const/16 v8, 0x11

    aget-byte v8, p1, v8

    aput-byte v8, v3, v10

    .line 677
    const/16 v8, 0x12

    aget-byte v8, p1, v8

    aput-byte v8, v3, v11

    .line 678
    const/16 v8, 0x13

    aget-byte v8, p1, v8

    aput-byte v8, v3, v12

    .line 679
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 680
    .local v2, "device_type":Ljava/lang/String;
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceType(Landroid/content/Context;Ljava/lang/String;)V

    .line 681
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput-object v2, v8, Lcom/veclink/bracelet/bean/DeviceInfo;->device_type:Ljava/lang/String;

    .line 682
    const/16 v8, 0xd

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v13

    const/16 v9, 0xe

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v6, v8, v9

    .line 683
    .local v6, "protolcol_version":I
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput-object v0, v8, Lcom/veclink/bracelet/bean/DeviceInfo;->deviceId:Ljava/lang/String;

    .line 684
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput v5, v8, Lcom/veclink/bracelet/bean/DeviceInfo;->firmware_version:I

    .line 685
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput v6, v8, Lcom/veclink/bracelet/bean/DeviceInfo;->protocol_version:I

    .line 686
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/veclink/hw/bleservice/util/Keeper;->setProtocolVersion(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 670
    .end local v2    # "device_type":Ljava/lang/String;
    .end local v3    # "device_type_array":[B
    .end local v6    # "protolcol_version":I
    :cond_4
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 688
    .end local v1    # "deviceIdByteArray":[B
    .end local v4    # "i":I
    .end local v5    # "mFirmWareVersion":I
    :cond_5
    aget-byte v8, p1, v11

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v13

    aget-byte v9, p1, v12

    and-int/lit16 v9, v9, 0xff

    or-int v5, v8, v9

    .line 689
    .restart local v5    # "mFirmWareVersion":I
    array-length v8, p1

    const/16 v9, 0xb

    if-lt v8, v9, :cond_7

    .line 690
    const/4 v4, 0x5

    .restart local v4    # "i":I
    :goto_3
    const/16 v8, 0xb

    if-ge v4, v8, :cond_8

    .line 691
    const/16 v8, 0xa

    if-ne v4, v8, :cond_6

    .line 692
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 690
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 694
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 698
    .end local v4    # "i":I
    :cond_7
    const-string v0, ""

    .line 700
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get deviceid success :deviceId\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 701
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get deviceid mFirmWareVersion\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 702
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 703
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 707
    :goto_5
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput-object v0, v8, Lcom/veclink/bracelet/bean/DeviceInfo;->deviceId:Ljava/lang/String;

    .line 708
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput v5, v8, Lcom/veclink/bracelet/bean/DeviceInfo;->firmware_version:I

    .line 709
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput v7, v8, Lcom/veclink/bracelet/bean/DeviceInfo;->protocol_version:I

    .line 710
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceRomVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 711
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iget v9, v9, Lcom/veclink/bracelet/bean/DeviceInfo;->protocol_version:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/veclink/hw/bleservice/util/Keeper;->setProtocolVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 712
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iget-object v9, v9, Lcom/veclink/bracelet/bean/DeviceInfo;->device_type:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 705
    :cond_9
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public declared-synchronized parseChargeData([B)Ljava/lang/Object;
    .locals 16
    .param p1, "value"    # [B

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    array-length v10, v0

    .line 335
    .local v10, "transdatalength":I
    const/16 v11, 0xa

    if-lt v10, v11, :cond_0

    const/4 v11, 0x0

    aget-byte v11, p1, v11

    const/16 v12, 0x5a

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    aget-byte v11, p1, v11

    const/16 v12, 0x19

    if-ne v11, v12, :cond_0

    .line 337
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->totalPackDataNum:I

    .line 338
    const/4 v11, 0x4

    new-array v9, v11, [B

    const/4 v11, 0x0

    const/4 v12, 0x4

    aget-byte v12, p1, v12

    aput-byte v12, v9, v11

    const/4 v11, 0x1

    const/4 v12, 0x5

    aget-byte v12, p1, v12

    aput-byte v12, v9, v11

    const/4 v11, 0x2

    const/4 v12, 0x6

    aget-byte v12, p1, v12

    aput-byte v12, v9, v11

    const/4 v11, 0x3

    const/4 v12, 0x7

    aget-byte v12, p1, v12

    aput-byte v12, v9, v11

    .line 339
    .local v9, "totalPackLenghthByteArray":[B
    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->bytesToInt([B)I

    move-result v6

    .line 340
    .local v6, "mTmpChargeDataLength":I
    new-array v11, v6, [B

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpChargeDataArrayOfByte:[B

    .line 341
    if-nez v6, :cond_0

    .line 342
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mOneDayDataOk:Z

    .line 343
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mAllDataOk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    const/4 v11, 0x0

    .line 418
    .end local v6    # "mTmpChargeDataLength":I
    .end local v9    # "totalPackLenghthByteArray":[B
    :goto_0
    monitor-exit p0

    return-object v11

    .line 348
    :cond_0
    const/4 v11, 0x2

    :try_start_1
    aget-byte v11, p1, v11

    const/16 v12, 0xe

    if-ne v11, v12, :cond_1

    .line 349
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isDeviceResponseError:Z

    .line 351
    :cond_1
    const/4 v2, 0x3

    .line 352
    .local v2, "dataOffset":I
    const/4 v7, 0x0

    .line 353
    .local v7, "onedayFirstPackage":Z
    const/4 v11, 0x3

    if-ge v10, v11, :cond_2

    .line 354
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isDeviceResponseError:Z

    .line 355
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0

    .line 357
    :cond_2
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_3

    const/4 v11, 0x0

    aget-byte v11, p1, v11

    const/16 v12, 0x5b

    if-ne v11, v12, :cond_4

    .line 365
    :cond_3
    const/4 v11, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    move-object/from16 v0, p0

    iput v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    .line 366
    move-object/from16 v0, p0

    iget v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    if-nez v11, :cond_5

    .line 367
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0

    .line 360
    :cond_4
    const-string v11, "value[0]###PACKAGE_HEAD_CMD_ERROR:"

    invoke-static {v11}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 361
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isDeviceResponseError:Z

    .line 362
    const/16 v11, -0x3e8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0

    .line 368
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    const/4 v7, 0x1

    .line 369
    :goto_1
    if-eqz v7, :cond_6

    .line 370
    const/4 v11, 0x6

    if-le v10, v11, :cond_6

    .line 371
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mLengthPackageSnArray:[B

    const/4 v12, 0x0

    const/4 v13, 0x5

    aget-byte v13, p1, v13

    aput-byte v13, v11, v12

    .line 372
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mLengthPackageSnArray:[B

    const/4 v12, 0x1

    const/4 v13, 0x6

    aget-byte v13, p1, v13

    aput-byte v13, v11, v12

    .line 377
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    and-int/lit16 v5, v11, 0xff

    .line 379
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mReceiveStaus:[B

    const/4 v12, 0x2

    aget-byte v12, p1, v12

    div-int/lit8 v12, v12, 0x8

    aget-byte v13, v11, v12

    const/4 v14, 0x1

    const/4 v15, 0x2

    aget-byte v15, p1, v15

    rem-int/lit8 v15, v15, 0x8

    add-int/lit8 v15, v15, -0x1

    shl-int/2addr v14, v15

    xor-int/lit8 v14, v14, -0x1

    and-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 381
    move-object/from16 v0, p0

    iget v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x1

    if-le v11, v12, :cond_8

    .line 382
    const/4 v2, 0x3

    .line 383
    move v4, v2

    .local v4, "i":I
    :goto_2
    if-ge v4, v10, :cond_8

    .line 385
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpChargeDataArrayOfByte:[B

    move-object/from16 v0, p0

    iget v12, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpChargeDataArrarIndex:I

    aget-byte v13, p1, v4

    aput-byte v13, v11, v12

    .line 386
    move-object/from16 v0, p0

    iget v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpChargeDataArrarIndex:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpChargeDataArrarIndex:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 368
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 387
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    :catch_0
    move-exception v3

    .line 395
    .end local v4    # "i":I
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 396
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mAllDataOk:Z

    .line 397
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mReceiveStaus:[B

    add-int/lit8 v12, v5, 0x6

    const/4 v13, -0x2

    aput-byte v13, v11, v12

    .line 398
    const/4 v11, 0x3

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x8

    const v12, 0xff00

    and-int/2addr v11, v12

    const/4 v12, 0x4

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int v8, v11, v12

    .line 399
    .local v8, "totalOnePackDataNum":I
    move-object/from16 v0, p0

    iput v8, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->oneLongpackDataLength:I

    .line 400
    div-int/lit8 v1, v8, 0x11

    .line 401
    .local v1, "count":I
    rem-int/lit8 v11, v8, 0x11

    if-eqz v11, :cond_9

    .line 402
    add-int/lit8 v1, v1, 0x1

    .line 403
    :cond_9
    move-object/from16 v0, p0

    iput v1, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->oneLongpackSmallPackCount:I

    .line 406
    add-int/lit8 v4, v1, -0x1

    .restart local v4    # "i":I
    :goto_3
    const/16 v11, 0x78

    if-ge v4, v11, :cond_b

    .line 407
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mReceiveStaus:[B

    div-int/lit8 v12, v4, 0x8

    aget-byte v13, v11, v12

    const/4 v14, 0x1

    rem-int/lit8 v15, v4, 0x8

    shl-int/2addr v14, v15

    xor-int/lit8 v14, v14, -0x1

    and-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 406
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 410
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v8    # "totalOnePackDataNum":I
    :cond_a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    const/16 v12, 0xff

    if-ne v11, v12, :cond_c

    .line 411
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mOneDayDataOk:Z

    .line 412
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mAllDataOk:Z

    .line 418
    :cond_b
    :goto_4
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 414
    :cond_c
    move-object/from16 v0, p0

    iget v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    const/16 v12, 0xfe

    if-ne v11, v12, :cond_b

    .line 415
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mOneDayDataOk:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 334
    .end local v2    # "dataOffset":I
    .end local v5    # "index":I
    .end local v7    # "onedayFirstPackage":Z
    .end local v10    # "transdatalength":I
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public parseSetTimeIntervalRespone([B)I
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 638
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

    .line 639
    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v4

    if-eq v1, v3, :cond_1

    .line 640
    :cond_0
    const/16 v0, -0x3e8

    .line 643
    :goto_0
    return v0

    .line 642
    :cond_1
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    goto :goto_0
.end method

.method public declared-synchronized parseSportData([B)Ljava/lang/Object;
    .locals 14
    .param p1, "value"    # [B

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    array-length v8, p1

    .line 159
    .local v8, "transdatalength":I
    const/4 v9, 0x5

    if-lt v8, v9, :cond_3

    const/4 v9, 0x0

    aget-byte v9, p1, v9

    const/16 v10, 0x5b

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    const/4 v9, 0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_3

    .line 162
    :cond_0
    const/4 v9, 0x3

    aget-byte v9, p1, v9

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    const/4 v10, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->totalPackDataNum:I

    .line 163
    const/4 v9, 0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    .line 164
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sportdata totalPackDataNum:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->totalPackDataNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 165
    :cond_1
    const/4 v9, 0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_2

    .line 166
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sleepdata totalPackDataNum:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->totalPackDataNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 167
    :cond_2
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->totalPackDataNum:I

    if-nez v9, :cond_3

    .line 168
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mOneDayDataOk:Z

    .line 169
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mAllDataOk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const/4 v9, 0x0

    .line 321
    :goto_0
    monitor-exit p0

    return-object v9

    .line 174
    :cond_3
    const/4 v9, 0x2

    :try_start_1
    aget-byte v9, p1, v9

    const/16 v10, 0xe

    if-ne v9, v10, :cond_4

    .line 175
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isDeviceResponseError:Z

    .line 177
    :cond_4
    const/4 v1, 0x3

    .line 178
    .local v1, "dataOffset":I
    const/4 v5, 0x0

    .line 179
    .local v5, "onedayFirstPackage":Z
    const/4 v9, 0x3

    if-ge v8, v9, :cond_5

    .line 180
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isDeviceResponseError:Z

    .line 181
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 183
    :cond_5
    const/4 v9, 0x0

    aget-byte v9, p1, v9

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_6

    const/4 v9, 0x0

    aget-byte v9, p1, v9

    const/16 v10, 0x5b

    if-ne v9, v10, :cond_a

    .line 191
    :cond_6
    const/4 v9, 0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_7

    const/4 v9, 0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_7

    const/4 v9, 0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_b

    .line 192
    :cond_7
    const/4 v9, 0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    .line 194
    const/4 v9, 0x1

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->dataType:I

    .line 196
    :cond_8
    const/4 v9, 0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_9

    .line 198
    const/4 v9, 0x2

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->dataType:I

    .line 204
    :cond_9
    const/4 v9, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    .line 205
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    if-nez v9, :cond_c

    .line 206
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 186
    :cond_a
    const-string v9, "value[0]###PACKAGE_HEAD_CMD_ERROR:"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 187
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isDeviceResponseError:Z

    .line 188
    const/16 v9, -0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 201
    :cond_b
    const/16 v9, -0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 207
    :cond_c
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    const/4 v5, 0x1

    .line 208
    :goto_1
    if-eqz v5, :cond_12

    .line 209
    const/4 v9, 0x6

    if-le v8, v9, :cond_d

    .line 210
    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mLengthPackageSnArray:[B

    const/4 v10, 0x0

    const/4 v11, 0x5

    aget-byte v11, p1, v11

    aput-byte v11, v9, v10

    .line 211
    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mLengthPackageSnArray:[B

    const/4 v10, 0x1

    const/4 v11, 0x6

    aget-byte v11, p1, v11

    aput-byte v11, v9, v10

    .line 215
    :cond_d
    const/16 v1, 0x8

    .line 216
    const/16 v9, 0x9

    aget-byte v9, p1, v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_10

    .line 218
    const/4 v9, 0x1

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->dataType:I

    .line 219
    const/16 v9, 0xd

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepTimeInterval:I

    .line 220
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepTimeInterval:I

    if-gtz v9, :cond_e

    .line 221
    const/16 v9, 0x1e

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepTimeInterval:I

    .line 222
    :cond_e
    array-length v9, p1

    const/16 v10, 0xe

    if-le v9, v10, :cond_f

    .line 223
    const/16 v9, 0xe

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->oneDataRecordCount:I

    .line 224
    :cond_f
    const/16 v9, 0xb40

    iget v10, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepTimeInterval:I

    div-int/2addr v9, v10

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByte:[B

    .line 226
    :cond_10
    const/16 v9, 0x9

    aget-byte v9, p1, v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_12

    .line 228
    const/4 v9, 0x2

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->dataType:I

    .line 229
    array-length v9, p1

    const/16 v10, 0xd

    if-le v9, v10, :cond_11

    .line 230
    const/16 v9, 0xd

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->oneDataRecordCount:I

    .line 231
    :cond_11
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->oneDataRecordCount:I

    mul-int/lit8 v9, v9, 0x4

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByte:[B

    .line 236
    :cond_12
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    and-int/lit16 v4, v9, 0xff

    .line 238
    .local v4, "index":I
    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mReceiveStaus:[B

    const/4 v10, 0x2

    aget-byte v10, p1, v10

    div-int/lit8 v10, v10, 0x8

    aget-byte v11, v9, v10

    const/4 v12, 0x1

    const/4 v13, 0x2

    aget-byte v13, p1, v13

    rem-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, -0x1

    shl-int/2addr v12, v13

    xor-int/lit8 v12, v12, -0x1

    and-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 240
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_15

    .line 241
    const/4 v1, 0x3

    .line 242
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->dataType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    .line 243
    move v3, v1

    .local v3, "i":I
    :goto_2
    if-ge v3, v8, :cond_14

    .line 245
    :try_start_2
    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByte:[B

    iget v10, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByteIndex:I

    aget-byte v11, p1, v3

    aput-byte v11, v9, v10

    .line 246
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByteIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByteIndex:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 207
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 247
    .restart local v3    # "i":I
    .restart local v4    # "index":I
    :catch_0
    move-exception v2

    .line 254
    .end local v3    # "i":I
    :cond_14
    :try_start_3
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->dataType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_15

    .line 255
    move v3, v1

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v8, :cond_15

    .line 257
    :try_start_4
    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByte:[B

    iget v10, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByteIndex:I

    aget-byte v11, p1, v3

    aput-byte v11, v9, v10

    .line 258
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByteIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByteIndex:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 259
    :catch_1
    move-exception v2

    .line 265
    .end local v3    # "i":I
    :cond_15
    :try_start_5
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_18

    .line 266
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mAllDataOk:Z

    .line 267
    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mReceiveStaus:[B

    add-int/lit8 v10, v4, 0x6

    const/4 v11, -0x2

    aput-byte v11, v9, v10

    .line 268
    const/16 v9, 0xa

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataYear:I

    .line 269
    const/16 v9, 0xb

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataMonth:I

    .line 270
    const/16 v9, 0xc

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataDate:I

    .line 271
    const/16 v9, 0xe

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->onedayrecodcount:I

    .line 272
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isNeedHandlerWear:Z

    .line 273
    array-length v9, p1

    const/16 v10, 0x10

    if-lt v9, v10, :cond_16

    const/16 v9, 0xf

    aget-byte v9, p1, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    .line 274
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isNeedHandlerWear:Z

    .line 275
    :cond_16
    const/4 v9, 0x3

    aget-byte v9, p1, v9

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    const/4 v10, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v7, v9, v10

    .line 276
    .local v7, "totalOnePackDataNum":I
    iput v7, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->oneLongpackDataLength:I

    .line 277
    div-int/lit8 v0, v7, 0x11

    .line 278
    .local v0, "count":I
    rem-int/lit8 v9, v7, 0x11

    if-eqz v9, :cond_17

    .line 279
    add-int/lit8 v0, v0, 0x1

    .line 280
    :cond_17
    iput v0, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->oneLongpackSmallPackCount:I

    .line 283
    add-int/lit8 v3, v0, -0x1

    .restart local v3    # "i":I
    :goto_4
    const/16 v9, 0x78

    if-ge v3, v9, :cond_1b

    .line 284
    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mReceiveStaus:[B

    div-int/lit8 v10, v3, 0x8

    aget-byte v11, v9, v10

    const/4 v12, 0x1

    rem-int/lit8 v13, v3, 0x8

    shl-int/2addr v12, v13

    xor-int/lit8 v12, v12, -0x1

    and-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 287
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v7    # "totalOnePackDataNum":I
    :cond_18
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    const/16 v10, 0xff

    if-ne v9, v10, :cond_1c

    .line 288
    const-string v9, "allday over!"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 289
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->dataType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    .line 290
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->convertSaveSportData()V

    .line 291
    const/4 v9, 0x0

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByteIndex:I

    .line 292
    const/16 v9, 0xb40

    iget v10, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepTimeInterval:I

    div-int/2addr v9, v10

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByte:[B

    .line 293
    const-string v9, "\u540c\u6b65\u8ba1\u6b65\u6570\u636e\u5b8c\u6210\uff01"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 295
    :cond_19
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->dataType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1a

    .line 296
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->converSleepData()V

    .line 297
    const/16 v9, 0xc0

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByte:[B

    .line 298
    const/4 v9, 0x0

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByteIndex:I

    .line 299
    const-string v9, "\u540c\u6b65\u7761\u7720\u6570\u636e\u5b8c\u6210\uff01"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 301
    :cond_1a
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mOneDayDataOk:Z

    .line 302
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mAllDataOk:Z

    .line 321
    :cond_1b
    :goto_5
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0

    .line 304
    :cond_1c
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    const/16 v10, 0xfe

    if-ne v9, v10, :cond_1b

    .line 306
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataYear:I

    add-int/lit16 v10, v10, 0x7d0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataMonth:I

    invoke-virtual {p0, v10}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->intToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepDataDate:I

    invoke-virtual {p0, v10}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->intToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, "sportTime":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " oneday over! recordNum:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByteIndex:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 308
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->dataType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    .line 309
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->convertSaveSportData()V

    .line 310
    const/4 v9, 0x0

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByteIndex:I

    .line 311
    const/16 v9, 0xb40

    iget v10, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mStepTimeInterval:I

    div-int/2addr v9, v10

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSportDataArrayOfByte:[B

    .line 313
    :cond_1d
    iget v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->dataType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1e

    .line 314
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->converSleepData()V

    .line 315
    const/16 v9, 0xc0

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByte:[B

    .line 316
    const/4 v9, 0x0

    iput v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mTmpSleepDataArrayOfByteIndex:I

    .line 318
    :cond_1e
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mOneDayDataOk:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 158
    .end local v1    # "dataOffset":I
    .end local v4    # "index":I
    .end local v5    # "onedayFirstPackage":Z
    .end local v6    # "sportTime":Ljava/lang/String;
    .end local v8    # "transdatalength":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public parseStartUpgradeResponse([B)I
    .locals 3
    .param p1, "value"    # [B

    .prologue
    const/4 v0, 0x0

    .line 746
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

    .line 751
    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    .line 752
    :cond_0
    const/16 v0, -0x3e8

    .line 758
    :goto_0
    return v0

    .line 754
    :cond_1
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    iput v1, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    .line 755
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mUpgradeState:I

    .line 756
    iput v0, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mSendPackageNum:I

    goto :goto_0
.end method

.method public parseSyncParamsResponse([B)I
    .locals 10
    .param p1, "value"    # [B

    .prologue
    .line 581
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ParseSyncParameterRespond:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-byte v9, p1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-byte v9, p1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-byte v9, p1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 582
    const/4 v8, 0x0

    aget-byte v8, p1, v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    aget-byte v8, p1, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 583
    :cond_0
    const/16 v8, -0x3e8

    .line 634
    :goto_0
    return v8

    .line 585
    :cond_1
    const/4 v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    .line 586
    array-length v8, p1

    const/16 v9, 0x14

    if-ge v8, v9, :cond_4

    .line 587
    const/16 v8, 0x14

    new-array v7, v8, [B

    .line 588
    .local v7, "tempArray":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_3

    .line 589
    array-length v8, p1

    if-ge v4, v8, :cond_2

    .line 590
    aget-byte v8, p1, v4

    aput-byte v8, v7, v4

    .line 588
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 592
    :cond_2
    const/4 v8, 0x0

    aput-byte v8, v7, v4

    goto :goto_2

    .line 595
    :cond_3
    move-object p1, v7

    .line 598
    .end local v4    # "i":I
    .end local v7    # "tempArray":[B
    :cond_4
    const-string v0, ""

    .line 599
    .local v0, "deviceId":Ljava/lang/String;
    const/4 v8, 0x2

    aget-byte v8, p1, v8

    if-nez v8, :cond_7

    .line 600
    const/16 v8, 0xd

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    const/16 v9, 0xe

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v5, v8, v9

    .line 601
    .local v5, "mFirmWareVersion":I
    const/16 v8, 0x8

    new-array v1, v8, [B

    .line 602
    .local v1, "deviceIdByteArray":[B
    const/4 v4, 0x3

    .restart local v4    # "i":I
    :goto_3
    const/16 v8, 0xb

    if-ge v4, v8, :cond_6

    .line 603
    add-int/lit8 v8, v4, -0x3

    aget-byte v9, p1, v4

    aput-byte v9, v1, v8

    .line 604
    const/16 v8, 0xa

    if-ne v4, v8, :cond_5

    .line 605
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 607
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 610
    :cond_6
    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToDeviceId([B)Ljava/lang/String;

    move-result-object v0

    .line 611
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncParams get deviceid success :deviceId\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 612
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncParams get deviceid mFirmWareVersion\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 613
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 614
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 618
    :goto_5
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceRomVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 619
    const/16 v8, 0xb

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    const/16 v9, 0xc

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v6, v8, v9

    .line 620
    .local v6, "protolcol_version":I
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/veclink/hw/bleservice/util/Keeper;->setProtocolVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 621
    const/4 v8, 0x5

    new-array v3, v8, [B

    .line 622
    .local v3, "device_type_array":[B
    const/4 v8, 0x0

    const/16 v9, 0xf

    aget-byte v9, p1, v9

    aput-byte v9, v3, v8

    .line 623
    const/4 v8, 0x1

    const/16 v9, 0x10

    aget-byte v9, p1, v9

    aput-byte v9, v3, v8

    .line 624
    const/4 v8, 0x2

    const/16 v9, 0x11

    aget-byte v9, p1, v9

    aput-byte v9, v3, v8

    .line 625
    const/4 v8, 0x3

    const/16 v9, 0x12

    aget-byte v9, p1, v9

    aput-byte v9, v3, v8

    .line 626
    const/4 v8, 0x4

    const/16 v9, 0x13

    aget-byte v9, p1, v9

    aput-byte v9, v3, v8

    .line 627
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 628
    .local v2, "device_type":Ljava/lang/String;
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceType(Landroid/content/Context;Ljava/lang/String;)V

    .line 629
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput-object v2, v8, Lcom/veclink/bracelet/bean/DeviceInfo;->device_type:Ljava/lang/String;

    .line 630
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput-object v0, v8, Lcom/veclink/bracelet/bean/DeviceInfo;->deviceId:Ljava/lang/String;

    .line 631
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput v5, v8, Lcom/veclink/bracelet/bean/DeviceInfo;->firmware_version:I

    .line 632
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    iput v6, v8, Lcom/veclink/bracelet/bean/DeviceInfo;->protocol_version:I

    .line 634
    .end local v1    # "deviceIdByteArray":[B
    .end local v2    # "device_type":Ljava/lang/String;
    .end local v3    # "device_type_array":[B
    .end local v4    # "i":I
    .end local v5    # "mFirmWareVersion":I
    .end local v6    # "protolcol_version":I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 616
    .restart local v1    # "deviceIdByteArray":[B
    .restart local v4    # "i":I
    .restart local v5    # "mFirmWareVersion":I
    :cond_8
    iget-object v8, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public parseUpdateResponseData([B)I
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "result":I
    iget v1, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->pareseCmdResponseType:I

    packed-switch v1, :pswitch_data_0

    .line 741
    :goto_0
    return v0

    .line 731
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->parseStartUpgradeResponse([B)I

    move-result v0

    .line 732
    goto :goto_0

    .line 734
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->parseUpgradeSendPackageResponse([B)I

    move-result v0

    .line 735
    goto :goto_0

    .line 737
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->parseUpgradeNextPackageResponse([B)I

    move-result v0

    goto :goto_0

    .line 729
    :pswitch_data_0
    .packed-switch 0x13881
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public parseUpgradeNextPackageResponse([B)I
    .locals 7
    .param p1, "value"    # [B

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextPackageResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 805
    aget-byte v1, p1, v0

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 806
    :cond_0
    const/16 v0, -0x3e8

    .line 823
    :goto_0
    return v0

    .line 808
    :cond_1
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    iput v1, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    .line 809
    aget-byte v1, p1, v5

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    aget-byte v2, p1, v6

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mSendPackageNum:I

    .line 811
    iget v1, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mSendPackageNum:I

    if-nez v1, :cond_2

    .line 812
    iput-boolean v3, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mAllPackageReceivOver:Z

    goto :goto_0

    .line 815
    :cond_2
    aget-byte v1, p1, v5

    if-ne v1, v4, :cond_3

    aget-byte v1, p1, v6

    if-ne v1, v4, :cond_3

    .line 816
    const-string v1, "---:mAllPackageReceivOver = true"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 817
    iput-boolean v3, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mAllPackageReceivOver:Z

    goto :goto_0

    .line 819
    :cond_3
    const-string v1, "---:mNextPackageRequest = true"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 820
    iput-boolean v3, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mNextPackageRequest:Z

    goto :goto_0
.end method

.method public parseUpgradeSendPackageResponse([B)I
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x0

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPackageRsp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 774
    iput-boolean v1, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mReTransferDataFlag:Z

    .line 775
    aget-byte v2, p1, v1

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 776
    :cond_0
    const/16 v1, -0x3e8

    .line 792
    :goto_0
    return v1

    .line 778
    :cond_1
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    iput v2, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    .line 780
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mSendPackageNum:I

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--package num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mSendPackageNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 782
    array-length v2, p1

    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    .line 783
    const/16 v1, -0x64

    goto :goto_0

    .line 785
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0xf

    if-ge v0, v2, :cond_3

    .line 786
    iget-object v2, p0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mReceiveStaus:[B

    add-int/lit8 v3, v0, 0x5

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 790
    :cond_3
    invoke-virtual {p0}, Lcom/veclink/hw/bledevice/BraceletNewDevice;->convertRetransDataPackageNum()V

    goto :goto_0
.end method

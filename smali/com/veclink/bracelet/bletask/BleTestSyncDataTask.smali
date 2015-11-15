.class public Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleTestSyncDataTask.java"


# instance fields
.field protected braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

.field protected dataType:I

.field protected isStopTask:Z

.field protected isSyncParams:Z

.field protected parmasArray:[B

.field protected progress:I

.field protected syncparamsArray:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 53
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->progress:I

    .line 57
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    .line 59
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    aput-byte v2, v0, v2

    .line 60
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 61
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 62
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 63
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 65
    invoke-direct {p0}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->initSyncParamsArray()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "dataType"    # I

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 53
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->progress:I

    .line 94
    iput p3, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->dataType:I

    .line 95
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    .line 97
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    aput-byte v2, v0, v2

    .line 98
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 100
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 101
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    .line 102
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 103
    invoke-direct {p0}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->initSyncParamsArray()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;ILjava/util/Date;Ljava/util/Date;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "dataType"    # I
    .param p4, "startDate"    # Ljava/util/Date;
    .param p5, "endDate"    # Ljava/util/Date;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 53
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->progress:I

    .line 124
    iput p3, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->dataType:I

    .line 125
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v8, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 126
    invoke-static {p4}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v5

    .line 127
    .local v5, "startTimeArray":[I
    invoke-static/range {p5 .. p5}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v1

    .line 128
    .local v1, "endTimeArray":[I
    const/4 v8, 0x0

    aget v6, v5, v8

    .line 129
    .local v6, "startYear":I
    const/4 v8, 0x1

    aget v4, v5, v8

    .line 130
    .local v4, "startMonth":I
    const/4 v8, 0x2

    aget v7, v5, v8

    .line 131
    .local v7, "startdate":I
    const/4 v8, 0x0

    aget v2, v1, v8

    .line 132
    .local v2, "endYear":I
    const/4 v8, 0x1

    aget v0, v1, v8

    .line 133
    .local v0, "endMonth":I
    const/4 v8, 0x2

    aget v3, v1, v8

    .line 134
    .local v3, "enddate":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5f00\u59cb\u65f6\u95f4\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5e74"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u6708"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u65e5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u7ed3\u675f\u65f6\u95f4\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5e74"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u6708"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u65e5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 136
    const/4 v8, 0x6

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    .line 137
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x0

    add-int/lit16 v10, v6, -0x7d0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 138
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x1

    int-to-byte v10, v4

    aput-byte v10, v8, v9

    .line 139
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x2

    int-to-byte v10, v7

    aput-byte v10, v8, v9

    .line 140
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x3

    add-int/lit16 v10, v2, -0x7d0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 141
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x4

    int-to-byte v10, v0

    aput-byte v10, v8, v9

    .line 142
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x5

    int-to-byte v10, v3

    aput-byte v10, v8, v9

    .line 143
    invoke-direct {p0}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->initSyncParamsArray()V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/util/Date;Ljava/util/Date;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "startDate"    # Ljava/util/Date;
    .param p4, "endDate"    # Ljava/util/Date;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 53
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->progress:I

    .line 71
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v8, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 72
    invoke-static {p3}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v5

    .line 73
    .local v5, "startTimeArray":[I
    invoke-static {p4}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v1

    .line 74
    .local v1, "endTimeArray":[I
    const/4 v8, 0x0

    aget v6, v5, v8

    .line 75
    .local v6, "startYear":I
    const/4 v8, 0x1

    aget v4, v5, v8

    .line 76
    .local v4, "startMonth":I
    const/4 v8, 0x2

    aget v7, v5, v8

    .line 77
    .local v7, "startdate":I
    const/4 v8, 0x0

    aget v2, v1, v8

    .line 78
    .local v2, "endYear":I
    const/4 v8, 0x1

    aget v0, v1, v8

    .line 79
    .local v0, "endMonth":I
    const/4 v8, 0x2

    aget v3, v1, v8

    .line 80
    .local v3, "enddate":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5f00\u59cb\u65f6\u95f4\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5e74"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u6708"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u65e5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u7ed3\u675f\u65f6\u95f4\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5e74"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u6708"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u65e5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 82
    const/4 v8, 0x6

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    .line 83
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x0

    add-int/lit16 v10, v6, -0x7d0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 84
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x1

    int-to-byte v10, v4

    aput-byte v10, v8, v9

    .line 85
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x2

    int-to-byte v10, v7

    aput-byte v10, v8, v9

    .line 86
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x3

    add-int/lit16 v10, v2, -0x7d0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 87
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x4

    int-to-byte v10, v0

    aput-byte v10, v8, v9

    .line 88
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    const/4 v9, 0x5

    int-to-byte v10, v3

    aput-byte v10, v8, v9

    .line 89
    invoke-direct {p0}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->initSyncParamsArray()V

    .line 90
    return-void
.end method

.method private initSyncParamsArray()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 432
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 433
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 434
    iget v6, v7, Landroid/text/format/Time;->year:I

    .line 435
    .local v6, "systemYear":I
    iget v10, v7, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v10, 0x1

    .line 436
    .local v4, "systemMonth":I
    iget v1, v7, Landroid/text/format/Time;->monthDay:I

    .line 437
    .local v1, "systemDate":I
    iget v2, v7, Landroid/text/format/Time;->hour:I

    .line 438
    .local v2, "systemHour":I
    iget v3, v7, Landroid/text/format/Time;->minute:I

    .line 439
    .local v3, "systemMinute":I
    iget v5, v7, Landroid/text/format/Time;->second:I

    .line 440
    .local v5, "systemSecond":I
    const/16 v8, 0xc8

    .line 441
    .local v8, "targetStepNumber":I
    const/4 v9, 0x1

    .line 442
    .local v9, "wearPosition":I
    const/4 v0, 0x1

    .line 444
    .local v0, "motionMode":I
    const/16 v10, 0xd

    new-array v10, v10, [B

    iput-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    .line 445
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/16 v11, 0x5a

    aput-byte v11, v10, v13

    .line 446
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    aput-byte v12, v10, v12

    .line 447
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/4 v11, 0x2

    aput-byte v13, v10, v11

    .line 448
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/4 v11, 0x3

    add-int/lit16 v12, v6, -0x7d0

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 449
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/4 v11, 0x4

    int-to-byte v12, v4

    aput-byte v12, v10, v11

    .line 450
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/4 v11, 0x5

    int-to-byte v12, v1

    aput-byte v12, v10, v11

    .line 451
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/4 v11, 0x6

    int-to-byte v12, v2

    aput-byte v12, v10, v11

    .line 452
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/4 v11, 0x7

    int-to-byte v12, v3

    aput-byte v12, v10, v11

    .line 453
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/16 v11, 0x8

    int-to-byte v12, v5

    aput-byte v12, v10, v11

    .line 454
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/16 v11, 0x9

    int-to-byte v12, v13

    aput-byte v12, v10, v11

    .line 455
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/16 v11, 0xa

    const/16 v12, 0xc8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 456
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/16 v11, 0xb

    int-to-byte v12, v9

    aput-byte v12, v10, v11

    .line 457
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    const/16 v11, 0xc

    int-to-byte v12, v0

    aput-byte v12, v10, v11

    .line 458
    return-void
.end method

.method private onlySyncSportDataOrSleepData()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/16 v12, -0x65

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "i":I
    iput-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    .line 264
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v4

    .line 265
    .local v4, "sportCmdArray":[B
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v7, v13, [Ljava/lang/Object;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v3

    .line 266
    .local v3, "sleepCmdArray":[B
    :goto_0
    if-ge v1, v11, :cond_1

    iget-boolean v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->isStopTask:Z

    if-nez v6, :cond_1

    .line 267
    iget v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->dataType:I

    if-ne v6, v10, :cond_0

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u540c\u6b65\u8fd0\u52a8\u6570\u636e\u6307\u4ee4\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, v4}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->sendCmdToBleDevice([B)V

    .line 270
    const-string v6, "sync wait for device response sync sport data cmd"

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 276
    :goto_1
    iput-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    .line 277
    const-string v6, "sync wait for device response sync data cmd"

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 278
    const/16 v6, 0x7d0

    invoke-virtual {p0, v6}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->waitResponse(I)Z

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u540c\u6b65\u7761\u7720\u6570\u636e\u6307\u4ee4\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v3}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->sendCmdToBleDevice([B)V

    .line 274
    const-string v6, "sync wait for device response sync sleep data cmd"

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :cond_1
    if-lt v1, v11, :cond_3

    iget-boolean v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    if-nez v6, :cond_3

    .line 282
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 283
    const-string v6, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u6570\u636e\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 308
    :cond_2
    :goto_2
    return-void

    .line 286
    :cond_3
    const-string v6, " response sync data cmd ok"

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 288
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v6, v6, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    if-nez v6, :cond_4

    .line 289
    const-string v6, " response sync data totalPackDataNum is 0 finish task"

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 290
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_2

    .line 293
    :cond_4
    const/4 v2, 0x0

    .line 294
    .local v2, "progress":I
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v6, v6, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->longPackageTrasport(F)Z

    move-result v5

    .line 295
    .local v5, "transport_result":Z
    if-nez v5, :cond_5

    .line 296
    const-string v6, "\u4f20\u8f93\u6570\u636e\u8fc7\u7a0b\u5931\u8d25\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 297
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_2

    .line 300
    :cond_5
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v6, v6, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllDataOk:Z

    if-eqz v6, :cond_2

    .line 301
    const-string v6, "sync data over task finish .."

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    invoke-direct {v0}, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;-><init>()V

    .line 303
    .local v0, "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v6, v6, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSportDataResult:Ljava/util/List;

    iput-object v6, v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSportDataResult:Ljava/util/List;

    .line 304
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v6, v6, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSleepDataResult:Ljava/util/List;

    iput-object v6, v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSleepDataResult:Ljava/util/List;

    .line 305
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v6, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private syncSportAndSleepData()V
    .locals 12

    .prologue
    .line 186
    const/4 v2, 0x0

    .line 187
    .local v2, "i":I
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    .line 188
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v5

    .line 190
    .local v5, "sportCmdArray":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u540c\u6b65\u8fd0\u52a8\u6570\u636e\u6307\u4ee4\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->sendCmdToBleDevice([B)V

    .line 192
    const-string v8, "sync wait for device response sync sport data cmd"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 193
    const/16 v8, 0x7d0

    invoke-virtual {p0, v8}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->waitResponse(I)Z

    .line 195
    iget-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    if-nez v8, :cond_1

    .line 196
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v9, -0x65

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 197
    const-string v8, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u8fd0\u52a8\u6570\u636e\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const-string v8, " response sync sport data cmd ok"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 202
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v8, v8, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v3, v8

    .line 203
    .local v3, "max":F
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v8, v8, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    if-nez v8, :cond_3

    .line 204
    const-string v8, " response sync sport data totalPackDataNum is 0 "

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 215
    :cond_2
    const-wide/16 v8, 0xc8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_1
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    invoke-virtual {v8}, Lcom/veclink/hw/bledevice/BaseBleDevice;->reSetReceiveStatus()V

    .line 222
    const/4 v2, 0x0

    .line 223
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    .line 224
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->parmasArray:[B

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v4

    .line 226
    .local v4, "sleepCmdArray":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u540c\u6b65\u7761\u7720\u6570\u636e\u6307\u4ee4\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, v4}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->sendCmdToBleDevice([B)V

    .line 228
    const-string v8, "sync wait for device response sync sleep data cmd"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 229
    const/16 v8, 0x7d0

    invoke-virtual {p0, v8}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->waitResponse(I)Z

    .line 231
    iget-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    if-nez v8, :cond_4

    .line 232
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v9, -0x65

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 233
    const-string v8, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u7761\u7720\u6570\u636e\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v4    # "sleepCmdArray":[B
    :cond_3
    invoke-virtual {p0, v3}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->longPackageTrasport(F)Z

    move-result v7

    .line 207
    .local v7, "transport_sportdata_result":Z
    if-nez v7, :cond_2

    .line 208
    const-string v8, "\u4f20\u8f93\u8fd0\u52a8\u6570\u636e\u8fc7\u7a0b\u5931\u8d25\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 209
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v9, -0x65

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 216
    .end local v7    # "transport_sportdata_result":Z
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 236
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "sleepCmdArray":[B
    :cond_4
    const-string v8, " response sync sleep data cmd ok"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 237
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v3, v8

    iget-object v9, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v9, v9, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    int-to-float v9, v9

    add-float v3, v8, v9

    .line 239
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v8, v8, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    if-nez v8, :cond_5

    .line 240
    const-string v8, " response sync sleepdata totalPackDataNum is 0 finish task"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 241
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 244
    :cond_5
    invoke-virtual {p0, v3}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->longPackageTrasport(F)Z

    move-result v6

    .line 245
    .local v6, "transport_sleepdata_result":Z
    if-nez v6, :cond_6

    .line 246
    const-string v8, "\u4f20\u8f93\u7761\u7720\u6570\u636e\u8fc7\u7a0b\u5931\u8d25\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 247
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v9, -0x65

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 251
    :cond_6
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v8, v8, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllDataOk:Z

    if-eqz v8, :cond_0

    .line 252
    const-string v8, "sync data over task finish .."

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    invoke-direct {v0}, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;-><init>()V

    .line 254
    .local v0, "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v8, v8, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSportDataResult:Ljava/util/List;

    iput-object v8, v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSportDataResult:Ljava/util/List;

    .line 255
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v8, v8, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSleepDataResult:Ljava/util/List;

    iput-object v8, v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSleepDataResult:Ljava/util/List;

    .line 256
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v8, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkIsNeedRend()Z
    .locals 5

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->convertNeedResendDataPackageNum()V

    .line 389
    const/4 v2, 0x0

    .line 390
    .local v2, "renum":I
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v4, v4, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    array-length v1, v4

    .line 392
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 393
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v4, v4, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    aget v4, v4, v0

    if-eqz v4, :cond_0

    .line 394
    add-int/lit8 v2, v2, 0x1

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    if-lez v2, :cond_2

    .line 403
    const/4 v3, 0x1

    .line 407
    .local v3, "result":Z
    :goto_1
    return v3

    .line 405
    .end local v3    # "result":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "result":Z
    goto :goto_1
.end method

.method public convertNeedResendDataPackageNum()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 418
    const/4 v2, 0x0

    .line 419
    .local v2, "k":I
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/16 v4, 0x78

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    .line 420
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v3, 0xf

    if-ge v1, v3, :cond_2

    .line 421
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 422
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReceiveStaus:[B

    aget-byte v3, v3, v1

    shl-int v4, v6, v0

    and-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_0

    .line 423
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 424
    add-int/lit8 v2, v2, 0x1

    .line 425
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iput-boolean v6, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReTransferDataFlag:Z

    .line 421
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 420
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public doWork()V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncParams()V

    .line 150
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    iget v1, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->dataType:I

    if-nez v1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncSportAndSleepData()V

    .line 162
    :goto_1
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-direct {p0}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->onlySyncSportDataOrSleepData()V

    goto :goto_1
.end method

.method protected longPackageTrasport(F)Z
    .locals 14
    .param p1, "max"    # F

    .prologue
    .line 312
    const/4 v4, 0x1

    .line 313
    .local v4, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 314
    .local v8, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 315
    .local v0, "endTime":J
    :cond_0
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v10, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllDataOk:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->isStopTask:Z

    if-nez v10, :cond_2

    sub-long v10, v0, v8

    const-wide/16 v12, 0x4e20

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 317
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v10, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mOneDayDataOk:Z

    if-eqz v10, :cond_6

    .line 318
    iget v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->progress:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->progress:I

    .line 319
    iget v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->progress:I

    int-to-float v10, v10

    div-float/2addr v10, p1

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    float-to-int v6, v10

    .line 320
    .local v6, "resultprogress":I
    const/16 v10, 0x64

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sync data progress is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 322
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 323
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mOneDayDataOk:Z

    .line 324
    const/16 v10, 0x14

    new-array v7, v10, [B

    .line 325
    .local v7, "sendResendDatacmd":[B
    const/4 v10, 0x0

    const/16 v11, 0x5b

    aput-byte v11, v7, v10

    .line 326
    const/4 v10, 0x1

    const/4 v11, 0x5

    aput-byte v11, v7, v10

    .line 327
    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-byte v11, v7, v10

    .line 328
    const/4 v10, 0x3

    iget-object v11, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v11, v11, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    aput-byte v11, v7, v10

    .line 329
    const/4 v10, 0x4

    iget-object v11, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v11, v11, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v12, 0x1

    aget-byte v11, v11, v12

    aput-byte v11, v7, v10

    .line 330
    const/4 v2, 0x5

    .local v2, "j":I
    :goto_0
    const/16 v10, 0x14

    if-ge v2, v10, :cond_1

    .line 331
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v10, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReceiveStaus:[B

    add-int/lit8 v11, v2, -0x5

    aget-byte v10, v10, v11

    aput-byte v10, v7, v2

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    :cond_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    .line 335
    invoke-virtual {p0, v7}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->sendCmdToBleDevice([B)V

    .line 336
    const/16 v10, 0x7d0

    invoke-virtual {p0, v10}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->waitResponse(I)Z

    .line 337
    iget-boolean v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    if-nez v10, :cond_4

    .line 339
    const-string v10, "\u53d1\u9001\u4f4d\u57df\u540e\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u6570\u636e\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v10}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 340
    const/4 v4, 0x0

    .line 374
    .end local v2    # "j":I
    .end local v6    # "resultprogress":I
    .end local v7    # "sendResendDatacmd":[B
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-boolean v10, v10, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mAllDataOk:Z

    if-eqz v10, :cond_3

    const/4 v4, 0x1

    :cond_3
    move v5, v4

    .line 375
    .end local v4    # "result":Z
    .local v5, "result":I
    :goto_2
    return v5

    .line 343
    .end local v5    # "result":I
    .restart local v2    # "j":I
    .restart local v4    # "result":Z
    .restart local v6    # "resultprogress":I
    .restart local v7    # "sendResendDatacmd":[B
    :cond_4
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->checkIsNeedRend()Z

    move-result v10

    if-nez v10, :cond_6

    .line 344
    const-string v10, "\u957f\u5305\u65e0\u4e22\u5305\u5f04 noneed resend data "

    invoke-static {v10}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 345
    const/4 v10, 0x5

    new-array v3, v10, [B

    fill-array-data v3, :array_0

    .line 346
    .local v3, "nextLegthPackrq":[B
    const/4 v10, 0x3

    iget-object v11, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v11, v11, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    aput-byte v11, v3, v10

    .line 347
    const/4 v10, 0x4

    iget-object v11, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v11, v11, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v12, 0x1

    aget-byte v11, v11, v12

    aput-byte v11, v3, v10

    .line 350
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    .line 351
    invoke-virtual {p0, v3}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->sendCmdToBleDevice([B)V

    .line 352
    const/16 v10, 0x7d0

    invoke-virtual {p0, v10}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->waitResponse(I)Z

    .line 353
    iget-boolean v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    if-nez v10, :cond_6

    .line 355
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-boolean v10, v10, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mAllDataOk:Z

    if-eqz v10, :cond_5

    .line 356
    const-string v10, "\u540c\u6b65\u6570\u636e\u5b8c\u6210"

    invoke-static {v10}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 357
    const/4 v4, 0x1

    move v5, v4

    .line 358
    .restart local v5    # "result":I
    goto :goto_2

    .line 360
    .end local v5    # "result":I
    :cond_5
    const-string v10, "\u8bf7\u6c42\u4e0b\u4e00\u5305\u6570\u636e\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u6570\u636e\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v10}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 362
    const/4 v4, 0x0

    .line 363
    goto :goto_1

    .line 367
    .end local v2    # "j":I
    .end local v3    # "nextLegthPackrq":[B
    .end local v6    # "resultprogress":I
    .end local v7    # "sendResendDatacmd":[B
    :cond_6
    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-boolean v10, v10, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isDeviceResponseError:Z

    if-eqz v10, :cond_0

    .line 368
    const-string v10, "while transport data device response error , so sync task fail"

    invoke-static {v10}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 370
    const/4 v4, 0x0

    .line 371
    goto :goto_1

    .line 345
    :array_0
    .array-data 1
        0x5at
        0x6t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected parseData([B)I
    .locals 2
    .param p1, "byteArray"    # [B

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->isSyncParams:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/BaseBleDevice;->parseSyncParamsResponse([B)I

    move-result v0

    .line 466
    :goto_0
    return v0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/BaseBleDevice;->parseSportData([B)Ljava/lang/Object;

    .line 466
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopSyncTask()V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->isStopTask:Z

    .line 473
    return-void
.end method

.method public syncParams()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "i":I
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnStartMessage(Ljava/lang/Object;)V

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u540c\u6b65\u53c2\u6570\u6307\u4ee4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->isSyncParams:Z

    .line 171
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->syncparamsArray:[B

    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->sendCmdToBleDevice([B)V

    .line 172
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->waitResponse(I)Z

    .line 173
    const-string v1, "sync wait for device response syncparams cmd"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 176
    iget-boolean v1, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->mDeviceRespondOk:Z

    if-nez v1, :cond_0

    .line 177
    const-string v1, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u53c2\u6570\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v2, -0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 182
    :goto_0
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/BleTestSyncDataTask;->isSyncParams:Z

    .line 183
    return-void

    .line 180
    :cond_0
    const-string v1, "\u540c\u6b65\u53c2\u6570\u4efb\u52a1\u6267\u884c\u6210\u529f"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_0
.end method

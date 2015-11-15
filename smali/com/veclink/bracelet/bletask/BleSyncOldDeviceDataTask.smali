.class public Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleSyncOldDeviceDataTask.java"


# instance fields
.field private parmasArray:[B

.field private progress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/util/Date;Ljava/util/Date;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "startDate"    # Ljava/util/Date;
    .param p4, "endDate"    # Ljava/util/Date;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 64
    invoke-static {p3}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v5

    .line 65
    .local v5, "startTimeArray":[I
    invoke-static {p4}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v1

    .line 66
    .local v1, "endTimeArray":[I
    const/4 v8, 0x0

    aget v6, v5, v8

    .line 67
    .local v6, "startYear":I
    const/4 v8, 0x1

    aget v4, v5, v8

    .line 68
    .local v4, "startMonth":I
    const/4 v8, 0x2

    aget v7, v5, v8

    .line 69
    .local v7, "startdate":I
    const/4 v8, 0x0

    aget v2, v1, v8

    .line 70
    .local v2, "endYear":I
    const/4 v8, 0x1

    aget v0, v1, v8

    .line 71
    .local v0, "endMonth":I
    const/4 v8, 0x2

    aget v3, v1, v8

    .line 72
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

    .line 73
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

    .line 74
    const/4 v8, 0x6

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->parmasArray:[B

    .line 75
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x0

    add-int/lit16 v10, v6, -0x7d0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 76
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x1

    int-to-byte v10, v4

    aput-byte v10, v8, v9

    .line 77
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x2

    int-to-byte v10, v7

    aput-byte v10, v8, v9

    .line 78
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x3

    add-int/lit16 v10, v2, -0x7d0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 79
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x4

    int-to-byte v10, v0

    aput-byte v10, v8, v9

    .line 80
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x5

    int-to-byte v10, v3

    aput-byte v10, v8, v9

    .line 81
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 85
    iput-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->mDeviceRespondOk:Z

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_1

    iget-boolean v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->mDeviceRespondOk:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->isStopTask:Z

    if-nez v5, :cond_1

    .line 88
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->parmasArray:[B

    if-eqz v5, :cond_0

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u540c\u6b65\u6307\u5b9a\u65f6\u95f4\u6570\u636e\u6307\u4ee4\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->parmasArray:[B

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 90
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->parmasArray:[B

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->sendCmdToBleDevice([B)V

    .line 95
    :goto_1
    const/16 v5, 0x7d0

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->waitResponse(I)Z

    .line 96
    const-string v5, "sync wait for device response sync data cmd"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u540c\u6b65\u5168\u90e8\u6570\u636e\u6307\u4ee4\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 93
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->sendCmdToBleDevice([B)V

    goto :goto_1

    .line 99
    :cond_1
    if-lt v1, v11, :cond_3

    iget-boolean v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->mDeviceRespondOk:Z

    if-nez v5, :cond_3

    .line 100
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v6, -0x65

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 101
    const-string v5, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u6570\u636e\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 146
    :cond_2
    :goto_2
    return-void

    .line 104
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 105
    .local v3, "starttime":J
    :cond_4
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllDataOk:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->isStopTask:Z

    if-nez v5, :cond_5

    .line 106
    iput-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->mDeviceRespondOk:Z

    .line 107
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->parmasArray:[B

    if-eqz v5, :cond_6

    .line 108
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v6, v12, [Ljava/lang/Object;

    const/16 v7, 0x5b

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->sendCmdToBleDevice([B)V

    .line 112
    :goto_3
    const/16 v5, 0x7d0

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->waitResponse(I)Z

    .line 113
    iget-boolean v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->mDeviceRespondOk:Z

    if-nez v5, :cond_7

    .line 114
    const-string v5, "sync old device data fial because device no response "

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 137
    :cond_5
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllDataOk:Z

    if-eqz v5, :cond_2

    .line 138
    const-string v5, "sync data over task finish .."

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    invoke-direct {v0}, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;-><init>()V

    .line 140
    .local v0, "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSportDataResult:Ljava/util/List;

    iput-object v5, v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSportDataResult:Ljava/util/List;

    .line 141
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSleepDataResult:Ljava/util/List;

    iput-object v5, v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSleepDataResult:Ljava/util/List;

    .line 142
    iput-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->mDeviceRespondOk:Z

    .line 143
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v5, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_2

    .line 110
    .end local v0    # "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    :cond_6
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v6, v12, [Ljava/lang/Object;

    const/16 v7, 0x5b

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->sendCmdToBleDevice([B)V

    goto :goto_3

    .line 118
    :cond_7
    iget v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->progress:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->progress:I

    .line 119
    iget v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->progress:I

    const/16 v6, 0x64

    if-le v5, v6, :cond_8

    iput v10, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->progress:I

    .line 120
    :cond_8
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget v6, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->progress:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 121
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllDataOk:Z

    if-eqz v5, :cond_4

    .line 122
    const-string v5, "sync over break.."

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 123
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 124
    iput-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->mDeviceRespondOk:Z

    .line 125
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_4
    if-ge v2, v11, :cond_5

    .line 126
    const/16 v5, 0x190

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->waitResponse(I)Z

    .line 127
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 128
    const/16 v5, 0x190

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->waitResponse(I)Z

    .line 129
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 130
    const/16 v5, 0x190

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->waitResponse(I)Z

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 152
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/BaseBleDevice;->parseSportData([B)Ljava/lang/Object;

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public stopSyncTask()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/veclink/bracelet/bletask/BleTask;->stopSyncTask()V

    .line 161
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.class public Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleSyncNewDeviceDataTask.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field protected braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

.field protected dataType:I

.field protected isStopTask:Z

.field protected isSyncParams:Z

.field protected maxDayCount:F

.field protected oldProgress:I

.field protected parmasArray:[B

.field protected progress:I

.field protected progressDayCount:I

.field protected progressSmallPackage:I

.field protected syncparamsArray:[B

.field protected totalSmallPackage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 55
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressDayCount:I

    .line 59
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressSmallPackage:I

    .line 60
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->totalSmallPackage:I

    .line 61
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->oldProgress:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    .line 66
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    .line 68
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    aput-byte v2, v0, v2

    .line 69
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 70
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 71
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 72
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    .line 73
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "dataType"    # I

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 55
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressDayCount:I

    .line 59
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressSmallPackage:I

    .line 60
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->totalSmallPackage:I

    .line 61
    iput v2, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->oldProgress:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    .line 103
    iput p3, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->dataType:I

    .line 104
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 105
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    .line 106
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    aput-byte v2, v0, v2

    .line 107
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 109
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 110
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 114
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
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 55
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressDayCount:I

    .line 59
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressSmallPackage:I

    .line 60
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->totalSmallPackage:I

    .line 61
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->oldProgress:I

    .line 62
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    .line 131
    iput p3, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->dataType:I

    .line 132
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v8, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 133
    invoke-static {p4}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v5

    .line 134
    .local v5, "startTimeArray":[I
    invoke-static/range {p5 .. p5}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v1

    .line 135
    .local v1, "endTimeArray":[I
    const/4 v8, 0x0

    aget v6, v5, v8

    .line 136
    .local v6, "startYear":I
    const/4 v8, 0x1

    aget v4, v5, v8

    .line 137
    .local v4, "startMonth":I
    const/4 v8, 0x2

    aget v7, v5, v8

    .line 138
    .local v7, "startdate":I
    const/4 v8, 0x0

    aget v2, v1, v8

    .line 139
    .local v2, "endYear":I
    const/4 v8, 0x1

    aget v0, v1, v8

    .line 140
    .local v0, "endMonth":I
    const/4 v8, 0x2

    aget v3, v1, v8

    .line 141
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

    .line 142
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

    .line 143
    const/4 v8, 0x6

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    .line 144
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x0

    add-int/lit16 v10, v6, -0x7d0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 145
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x1

    int-to-byte v10, v4

    aput-byte v10, v8, v9

    .line 146
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x2

    int-to-byte v10, v7

    aput-byte v10, v8, v9

    .line 147
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x3

    add-int/lit16 v10, v2, -0x7d0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 148
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x4

    int-to-byte v10, v0

    aput-byte v10, v8, v9

    .line 149
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x5

    int-to-byte v10, v3

    aput-byte v10, v8, v9

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/util/Date;Ljava/util/Date;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "startDate"    # Ljava/util/Date;
    .param p4, "endDate"    # Ljava/util/Date;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 55
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressDayCount:I

    .line 59
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressSmallPackage:I

    .line 60
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->totalSmallPackage:I

    .line 61
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->oldProgress:I

    .line 62
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    .line 80
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v8, Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iput-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    .line 81
    invoke-static {p3}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v5

    .line 82
    .local v5, "startTimeArray":[I
    invoke-static {p4}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getYearMonthDayArrayByDate(Ljava/util/Date;)[I

    move-result-object v1

    .line 83
    .local v1, "endTimeArray":[I
    const/4 v8, 0x0

    aget v6, v5, v8

    .line 84
    .local v6, "startYear":I
    const/4 v8, 0x1

    aget v4, v5, v8

    .line 85
    .local v4, "startMonth":I
    const/4 v8, 0x2

    aget v7, v5, v8

    .line 86
    .local v7, "startdate":I
    const/4 v8, 0x0

    aget v2, v1, v8

    .line 87
    .local v2, "endYear":I
    const/4 v8, 0x1

    aget v0, v1, v8

    .line 88
    .local v0, "endMonth":I
    const/4 v8, 0x2

    aget v3, v1, v8

    .line 89
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

    .line 90
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

    .line 91
    const/4 v8, 0x6

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    .line 92
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x0

    add-int/lit16 v10, v6, -0x7d0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 93
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x1

    int-to-byte v10, v4

    aput-byte v10, v8, v9

    .line 94
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x2

    int-to-byte v10, v7

    aput-byte v10, v8, v9

    .line 95
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x3

    add-int/lit16 v10, v2, -0x7d0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 96
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x4

    int-to-byte v10, v0

    aput-byte v10, v8, v9

    .line 97
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    const/4 v9, 0x5

    int-to-byte v10, v3

    aput-byte v10, v8, v9

    .line 99
    return-void
.end method

.method private onlySyncSportDataOrSleepData()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, -0x65

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "i":I
    iput-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    .line 238
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v3

    .line 239
    .local v3, "sportCmdArray":[B
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v2

    .line 241
    .local v2, "sleepCmdArray":[B
    iget v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->dataType:I

    if-ne v5, v9, :cond_0

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u540c\u6b65\u8fd0\u52a8\u6570\u636e\u6307\u4ee4\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, v3}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->sendCmdToBleDevice([B)V

    .line 244
    const-string v5, "sync wait for device response sync sport data cmd"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 250
    :goto_0
    iput-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    .line 251
    const-string v5, "sync wait for device response sync data cmd"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 252
    const/16 v5, 0x7d0

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->waitResponse(I)Z

    .line 254
    iget-boolean v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    if-nez v5, :cond_1

    .line 255
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 256
    const-string v5, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u6570\u636e\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 287
    :goto_1
    return-void

    .line 246
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u540c\u6b65\u7761\u7720\u6570\u636e\u6307\u4ee4\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0, v2}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->sendCmdToBleDevice([B)V

    .line 248
    const-string v5, "sync wait for device response sync sleep data cmd"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    const-string v5, " response sync data cmd ok"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 261
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    if-nez v5, :cond_3

    .line 262
    const-string v5, " response sync data totalPackDataNum is 0 finish task"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 263
    iput-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    .line 264
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 265
    const/16 v5, 0x12c

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->waitResponse(I)Z

    .line 277
    :cond_2
    const-string v5, "sync data over task finish .."

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 278
    new-instance v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    invoke-direct {v0}, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;-><init>()V

    .line 279
    .local v0, "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    iget v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->dataType:I

    if-ne v5, v9, :cond_4

    .line 280
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSportDataResult:Ljava/util/List;

    iput-object v5, v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSportDataResult:Ljava/util/List;

    .line 281
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v5, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 268
    .end local v0    # "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    :cond_3
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    int-to-float v5, v5

    iput v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    .line 269
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->longPackageTrasport(F)Z

    move-result v4

    .line 270
    .local v4, "transport_result":Z
    if-nez v4, :cond_2

    .line 271
    const-string v5, "\u4f20\u8f93\u6570\u636e\u8fc7\u7a0b\u5931\u8d25\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 272
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 283
    .end local v4    # "transport_result":Z
    .restart local v0    # "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    :cond_4
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSleepDataResult:Ljava/util/List;

    iput-object v5, v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSleepDataResult:Ljava/util/List;

    .line 284
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v5, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private syncSportAndSleepData()V
    .locals 13

    .prologue
    const/16 v12, 0x7d0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, -0x65

    const/4 v8, 0x0

    .line 167
    iput-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    .line 168
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v2

    .line 170
    .local v2, "sportCmdArray":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u540c\u6b65\u8fd0\u52a8\u6570\u636e\u6307\u4ee4\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->sendCmdToBleDevice([B)V

    .line 172
    const-string v5, "sync wait for device response sync sport data cmd"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v12}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->waitResponse(I)Z

    .line 174
    iget-boolean v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    if-nez v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 176
    const-string v5, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u8fd0\u52a8\u6570\u636e\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v5, " response sync sport data cmd ok"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 181
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    .line 182
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    if-nez v5, :cond_2

    .line 183
    const-string v5, " response sync sport data totalPackDataNum is 0 "

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 192
    :cond_1
    new-instance v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    invoke-direct {v0}, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;-><init>()V

    .line 193
    .local v0, "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSportDataResult:Ljava/util/List;

    iput-object v5, v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSportDataResult:Ljava/util/List;

    .line 194
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v5, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnSyncStepDataFinish(Ljava/lang/Object;)V

    .line 195
    iput-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    .line 196
    const/16 v5, 0x1f4

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->waitResponse(I)Z

    .line 198
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    invoke-virtual {v5}, Lcom/veclink/hw/bledevice/BaseBleDevice;->reSetReceiveStatus()V

    .line 199
    iput-boolean v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    .line 200
    iput v8, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressSmallPackage:I

    .line 201
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->parmasArray:[B

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v1

    .line 203
    .local v1, "sleepCmdArray":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u540c\u6b65\u7761\u7720\u6570\u636e\u6307\u4ee4\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, v1}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->sendCmdToBleDevice([B)V

    .line 205
    const-string v5, "sync wait for device response sync sleep data cmd"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v12}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->waitResponse(I)Z

    .line 208
    iget-boolean v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    if-nez v5, :cond_3

    .line 209
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 210
    const-string v5, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u7761\u7720\u6570\u636e\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v0    # "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    .end local v1    # "sleepCmdArray":[B
    :cond_2
    iget v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->longPackageTrasport(F)Z

    move-result v4

    .line 186
    .local v4, "transport_sportdata_result":Z
    if-nez v4, :cond_1

    .line 187
    const-string v5, "\u4f20\u8f93\u8fd0\u52a8\u6570\u636e\u8fc7\u7a0b\u5931\u8d25\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 188
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 213
    .end local v4    # "transport_sportdata_result":Z
    .restart local v0    # "deviceSportAndSleepData":Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    .restart local v1    # "sleepCmdArray":[B
    :cond_3
    const-string v5, " response sync sleep data cmd ok"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 214
    iget v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v6, v6, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    .line 216
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    if-nez v5, :cond_5

    .line 217
    const-string v5, " response sync sleepdata totalPackDataNum is 0 finish task"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 218
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 229
    :cond_4
    const-string v5, "sync data over task finish .."

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 230
    iget-object v5, v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSportDataResult:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 231
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v5, v5, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSleepDataResult:Ljava/util/List;

    iput-object v5, v0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSleepDataResult:Ljava/util/List;

    .line 232
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v5, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 221
    :cond_5
    iget v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    invoke-virtual {p0, v5}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->longPackageTrasport(F)Z

    move-result v3

    .line 222
    .local v3, "transport_sleepdata_result":Z
    if-nez v3, :cond_4

    .line 223
    const-string v5, "\u4f20\u8f93\u7761\u7720\u6570\u636e\u8fc7\u7a0b\u5931\u8d25\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 224
    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkIsNeedRend()Z
    .locals 5

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->convertNeedResendDataPackageNum()V

    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, "renum":I
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v4, v4, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    array-length v1, v4

    .line 385
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 386
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v4, v4, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    aget v4, v4, v0

    if-eqz v4, :cond_0

    .line 387
    add-int/lit8 v2, v2, 0x1

    .line 385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_1
    if-lez v2, :cond_2

    .line 396
    const/4 v3, 0x1

    .line 400
    .local v3, "result":Z
    :goto_1
    return v3

    .line 398
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

    .line 411
    const/4 v2, 0x0

    .line 412
    .local v2, "k":I
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/16 v4, 0x78

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    .line 413
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v3, 0xf

    if-ge v1, v3, :cond_2

    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 415
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReceiveStaus:[B

    aget-byte v3, v3, v1

    shl-int v4, v6, v0

    and-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_0

    .line 416
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 417
    add-int/lit8 v2, v2, 0x1

    .line 418
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iput-boolean v6, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReTransferDataFlag:Z

    .line 414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public doWork()V
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->dataType:I

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->syncSportAndSleepData()V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->onlySyncSportDataOrSleepData()V

    goto :goto_0
.end method

.method protected longPackageTrasport(F)Z
    .locals 13
    .param p1, "max"    # F

    .prologue
    .line 290
    const/4 v5, 0x1

    .line 291
    .local v5, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 292
    .local v7, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 293
    .local v1, "endTime":J
    const/4 v9, 0x0

    iput v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressDayCount:I

    .line 294
    :cond_0
    iget-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->isStopTask:Z

    if-nez v9, :cond_8

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 296
    sub-long v9, v1, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x4e20

    cmp-long v9, v9, v11

    if-gtz v9, :cond_1

    iget-object v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-boolean v9, v9, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isDeviceResponseError:Z

    if-eqz v9, :cond_2

    .line 297
    :cond_1
    const-string v9, "\u957f\u5305\u4f20\u8f93\u6570\u636e\u8d85\u65f6\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 298
    const/4 v9, 0x5

    new-array v4, v9, [B

    fill-array-data v4, :array_0

    .line 299
    .local v4, "nextLegthPackrq":[B
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    .line 300
    invoke-virtual {p0, v4}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->sendCmdToBleDevice([B)V

    .line 301
    const/4 v9, 0x0

    .line 369
    .end local v4    # "nextLegthPackrq":[B
    :goto_0
    return v9

    .line 303
    :cond_2
    iget-object v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v9, v9, Lcom/veclink/hw/bledevice/BaseBleDevice;->mOneDayDataOk:Z

    if-eqz v9, :cond_7

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 305
    const/16 v9, 0x14

    new-array v6, v9, [B

    .line 306
    .local v6, "sendResendDatacmd":[B
    const/4 v9, 0x0

    const/16 v10, 0x5b

    aput-byte v10, v6, v9

    .line 307
    const/4 v9, 0x1

    const/4 v10, 0x5

    aput-byte v10, v6, v9

    .line 308
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v10, v6, v9

    .line 309
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v10, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v6, v9

    .line 310
    const/4 v9, 0x4

    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v10, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v6, v9

    .line 311
    const/4 v3, 0x5

    .local v3, "j":I
    :goto_1
    const/16 v9, 0x14

    if-ge v3, v9, :cond_3

    .line 312
    iget-object v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v9, v9, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReceiveStaus:[B

    add-int/lit8 v10, v3, -0x5

    aget-byte v9, v9, v10

    aput-byte v9, v6, v3

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 314
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u53d1\u9001\u4f4d\u57df\u8868\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 315
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    .line 316
    invoke-virtual {p0, v6}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->sendCmdToBleDevice([B)V

    .line 317
    const/16 v9, 0x7d0

    invoke-virtual {p0, v9}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->waitResponse(I)Z

    .line 318
    iget-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    if-nez v9, :cond_4

    .line 319
    const-string v9, "\u53d1\u9001\u4f4d\u57df\u8868\u540e\u65e0\u54cd\u5e94"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 321
    const/4 v5, 0x0

    move v9, v5

    .line 322
    goto :goto_0

    .line 324
    :cond_4
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->checkIsNeedRend()Z

    move-result v9

    if-nez v9, :cond_7

    .line 325
    iget v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressDayCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressDayCount:I

    .line 326
    const/4 v9, 0x0

    iput v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressSmallPackage:I

    .line 327
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u957f\u5305\u65e0\u4e22\u5305\u5f04 noneed resend data \u5df2\u540c\u6b65\u5929\u6570\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressDayCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  \u603b\u5929\u6570 \uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 328
    iget v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressDayCount:I

    int-to-float v9, v9

    div-float/2addr v9, p1

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iput v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progress:I

    .line 329
    iget v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progress:I

    const/16 v10, 0x64

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progress:I

    .line 330
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sync data progress is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progress:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 331
    iget v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progress:I

    iget v10, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->oldProgress:I

    if-le v9, v10, :cond_5

    iget-object v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget v10, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progress:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 332
    :cond_5
    iget v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progress:I

    iput v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->oldProgress:I

    .line 333
    iget-object v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/veclink/hw/bledevice/BaseBleDevice;->mOneDayDataOk:Z

    .line 335
    const-wide/16 v9, 0xc8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_2
    iget-object v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v9, v9, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllDataOk:Z

    if-eqz v9, :cond_6

    .line 341
    const-string v9, "\u540c\u6b65\u6570\u636e\u5b8c\u6210"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 342
    const/4 v9, 0x5

    new-array v4, v9, [B

    fill-array-data v4, :array_1

    .line 343
    .restart local v4    # "nextLegthPackrq":[B
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    .line 344
    invoke-virtual {p0, v4}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->sendCmdToBleDevice([B)V

    .line 345
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 336
    .end local v4    # "nextLegthPackrq":[B
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 347
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6
    const/4 v9, 0x5

    new-array v4, v9, [B

    fill-array-data v4, :array_2

    .line 348
    .restart local v4    # "nextLegthPackrq":[B
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v10, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 349
    const/4 v9, 0x4

    iget-object v10, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v10, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 350
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send request nextdate data "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 351
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    .line 352
    invoke-virtual {p0, v4}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->sendCmdToBleDevice([B)V

    .line 353
    const/16 v9, 0x1388

    invoke-virtual {p0, v9}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->waitResponse(I)Z

    .line 354
    iget-boolean v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->mDeviceRespondOk:Z

    if-nez v9, :cond_7

    .line 355
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 362
    .end local v3    # "j":I
    .end local v4    # "nextLegthPackrq":[B
    .end local v6    # "sendResendDatacmd":[B
    :cond_7
    iget-object v9, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-boolean v9, v9, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isDeviceResponseError:Z

    if-eqz v9, :cond_0

    .line 363
    const-string v9, "while transport data device response error , so sync task fail"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 365
    const/4 v5, 0x0

    :cond_8
    move v9, v5

    .line 369
    goto/16 :goto_0

    .line 298
    nop

    :array_0
    .array-data 1
        0x5at
        0x6t
        0x0t
        -0x1t
        -0x1t
    .end array-data

    .line 342
    nop

    :array_1
    .array-data 1
        0x5at
        0x6t
        0x0t
        -0x1t
        -0x1t
    .end array-data

    .line 347
    nop

    :array_2
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
    .line 427
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget-boolean v0, v0, Lcom/veclink/hw/bledevice/BraceletNewDevice;->isDeviceResponseError:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x63

    .line 433
    :goto_0
    return v0

    .line 428
    :cond_0
    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->isSyncParams:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 429
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/BaseBleDevice;->parseSyncParamsResponse([B)I

    move-result v0

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/BaseBleDevice;->parseSportData([B)Ljava/lang/Object;

    .line 432
    invoke-virtual {p0, p1}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->sendLongpackDataProgress([B)V

    .line 433
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendLongpackDataProgress([B)V
    .locals 5
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v3, 0x1

    .line 439
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget v1, v1, Lcom/veclink/hw/bledevice/BraceletNewDevice;->mPackageSn:I

    if-ne v1, v3, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget v1, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressSmallPackage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressSmallPackage:I

    .line 441
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget v1, v1, Lcom/veclink/hw/bledevice/BraceletNewDevice;->oneLongpackSmallPackCount:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 442
    iget v1, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->progressSmallPackage:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->braceletNewDevice:Lcom/veclink/hw/bledevice/BraceletNewDevice;

    iget v3, v3, Lcom/veclink/hw/bledevice/BraceletNewDevice;->oneLongpackSmallPackCount:I

    int-to-float v3, v3

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->maxDayCount:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 443
    .local v0, "tempprogress":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 446
    iget v1, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->oldProgress:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    float-to-int v2, v0

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 447
    :cond_2
    float-to-int v1, v0

    iput v1, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->oldProgress:I

    goto :goto_0
.end method

.method public stopSyncTask()V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0}, Lcom/veclink/bracelet/bletask/BleTask;->stopSyncTask()V

    .line 456
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 458
    return-void
.end method

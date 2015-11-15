.class public Lcom/veclink/pet/BleSyncPetSportDataTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleSyncPetSportDataTask.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field protected endDate:Ljava/util/Date;

.field protected maxDayCount:F

.field protected oldProgress:I

.field protected petDevice:Lcom/veclink/hw/bledevice/PetDevice;

.field protected progress:I

.field protected progressDayCount:I

.field protected progressSmallPackage:I

.field protected startDate:Ljava/util/Date;

.field protected totalSmallPackage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 34
    iput v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressDayCount:I

    .line 36
    iput v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressSmallPackage:I

    .line 37
    iput v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->totalSmallPackage:I

    .line 38
    iput v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->oldProgress:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->maxDayCount:F

    .line 43
    new-instance v0, Lcom/veclink/hw/bledevice/PetDevice;

    invoke-direct {v0, p1}, Lcom/veclink/hw/bledevice/PetDevice;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    .line 44
    iget-object v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    iput-object v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "startDate"    # Ljava/util/Date;
    .param p4, "endDate"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 34
    iput v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressDayCount:I

    .line 36
    iput v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressSmallPackage:I

    .line 37
    iput v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->totalSmallPackage:I

    .line 38
    iput v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->oldProgress:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->maxDayCount:F

    .line 51
    new-instance v0, Lcom/veclink/hw/bledevice/PetDevice;

    invoke-direct {v0, p1}, Lcom/veclink/hw/bledevice/PetDevice;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    .line 52
    iget-object v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    iput-object v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    .line 53
    iput-object p3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->startDate:Ljava/util/Date;

    .line 54
    iput-object p4, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->endDate:Ljava/util/Date;

    .line 55
    return-void
.end method

.method private syncPetData()V
    .locals 8

    .prologue
    const/16 v7, -0x65

    const/4 v6, 0x0

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "i":I
    iput-boolean v6, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->mDeviceRespondOk:Z

    .line 65
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    iget-object v4, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->startDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->endDate:Ljava/util/Date;

    invoke-virtual {v3, v4, v5}, Lcom/veclink/hw/bledevice/PetDevice;->createSyncPetDataCmdArray(Ljava/util/Date;Ljava/util/Date;)[B

    move-result-object v1

    .line 66
    .local v1, "sportCmdArray":[B
    invoke-virtual {p0, v1}, Lcom/veclink/pet/BleSyncPetSportDataTask;->sendCmdToBleDevice([B)V

    .line 67
    iput-boolean v6, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->mDeviceRespondOk:Z

    .line 68
    const-string v3, "sync wait for device response sync data cmd"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 69
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3}, Lcom/veclink/pet/BleSyncPetSportDataTask;->waitResponse(I)Z

    .line 70
    iget-boolean v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->mDeviceRespondOk:Z

    if-nez v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 72
    const-string v3, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u6570\u636e\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v3, " response sync data cmd ok"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    if-nez v3, :cond_2

    .line 78
    const-string v3, " response sync data totalPackDataNum is 0 finish task"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 79
    iput-boolean v6, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->mDeviceRespondOk:Z

    .line 80
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 81
    const/16 v3, 0x12c

    invoke-virtual {p0, v3}, Lcom/veclink/pet/BleSyncPetSportDataTask;->waitResponse(I)Z

    .line 91
    :cond_1
    const-string v3, "sync data over task finish .."

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v4, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    iget-object v4, v4, Lcom/veclink/hw/bledevice/PetDevice;->petDataList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    int-to-float v3, v3

    iput v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->maxDayCount:F

    .line 84
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/veclink/pet/BleSyncPetSportDataTask;->longPackageTrasport(F)Z

    move-result v2

    .line 85
    .local v2, "transport_result":Z
    if-nez v2, :cond_1

    .line 86
    const-string v3, "\u4f20\u8f93\u6570\u636e\u8fc7\u7a0b\u5931\u8d25\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public checkIsNeedRend()Z
    .locals 5

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/veclink/pet/BleSyncPetSportDataTask;->convertNeedResendDataPackageNum()V

    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, "renum":I
    iget-object v4, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v4, v4, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    array-length v1, v4

    .line 194
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 195
    iget-object v4, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v4, v4, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    aget v4, v4, v0

    if-eqz v4, :cond_0

    .line 196
    add-int/lit8 v2, v2, 0x1

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    if-lez v2, :cond_2

    .line 205
    const/4 v3, 0x1

    .line 209
    .local v3, "result":Z
    :goto_1
    return v3

    .line 207
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

    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, "k":I
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/16 v4, 0x78

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    .line 222
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v3, 0xf

    if-ge v1, v3, :cond_2

    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReceiveStaus:[B

    aget-byte v3, v3, v1

    shl-int v4, v6, v0

    and-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v3, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 226
    add-int/lit8 v2, v2, 0x1

    .line 227
    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iput-boolean v6, v3, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReTransferDataFlag:Z

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public doWork()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/veclink/pet/BleSyncPetSportDataTask;->syncPetData()V

    .line 60
    return-void
.end method

.method protected longPackageTrasport(F)Z
    .locals 13
    .param p1, "max"    # F

    .prologue
    .line 99
    const/4 v5, 0x1

    .line 100
    .local v5, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 101
    .local v7, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 102
    .local v1, "endTime":J
    const/4 v9, 0x0

    iput v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressDayCount:I

    .line 103
    :cond_0
    iget-boolean v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->isStopTask:Z

    if-nez v9, :cond_8

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 105
    sub-long v9, v1, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0x9c40

    cmp-long v9, v9, v11

    if-gtz v9, :cond_1

    iget-object v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    iget-boolean v9, v9, Lcom/veclink/hw/bledevice/PetDevice;->isDeviceResponseError:Z

    if-eqz v9, :cond_2

    .line 106
    :cond_1
    const-string v9, "\u957f\u5305\u4f20\u8f93\u6570\u636e\u8d85\u65f6\uff0c\u4efb\u52a1\u5931\u8d25"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 107
    const/4 v9, 0x5

    new-array v4, v9, [B

    fill-array-data v4, :array_0

    .line 108
    .local v4, "nextLegthPackrq":[B
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->mDeviceRespondOk:Z

    .line 109
    invoke-virtual {p0, v4}, Lcom/veclink/pet/BleSyncPetSportDataTask;->sendCmdToBleDevice([B)V

    .line 110
    const/4 v9, 0x0

    .line 178
    .end local v4    # "nextLegthPackrq":[B
    :goto_0
    return v9

    .line 112
    :cond_2
    iget-object v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v9, v9, Lcom/veclink/hw/bledevice/BaseBleDevice;->mOneDayDataOk:Z

    if-eqz v9, :cond_7

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 114
    const/16 v9, 0x14

    new-array v6, v9, [B

    .line 115
    .local v6, "sendResendDatacmd":[B
    const/4 v9, 0x0

    const/16 v10, 0x5b

    aput-byte v10, v6, v9

    .line 116
    const/4 v9, 0x1

    const/4 v10, 0x5

    aput-byte v10, v6, v9

    .line 117
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v10, v6, v9

    .line 118
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v10, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v6, v9

    .line 119
    const/4 v9, 0x4

    iget-object v10, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v10, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v6, v9

    .line 120
    const/4 v3, 0x5

    .local v3, "j":I
    :goto_1
    const/16 v9, 0x14

    if-ge v3, v9, :cond_3

    .line 121
    iget-object v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v9, v9, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReceiveStaus:[B

    add-int/lit8 v10, v3, -0x5

    aget-byte v9, v9, v10

    aput-byte v9, v6, v3

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
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

    .line 124
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->mDeviceRespondOk:Z

    .line 125
    invoke-virtual {p0, v6}, Lcom/veclink/pet/BleSyncPetSportDataTask;->sendCmdToBleDevice([B)V

    .line 126
    const/16 v9, 0x7d0

    invoke-virtual {p0, v9}, Lcom/veclink/pet/BleSyncPetSportDataTask;->waitResponse(I)Z

    .line 127
    iget-boolean v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->mDeviceRespondOk:Z

    if-nez v9, :cond_4

    .line 128
    const-string v9, "\u53d1\u9001\u4f4d\u57df\u8868\u540e\u65e0\u54cd\u5e94"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 130
    const/4 v5, 0x0

    move v9, v5

    .line 131
    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p0}, Lcom/veclink/pet/BleSyncPetSportDataTask;->checkIsNeedRend()Z

    move-result v9

    if-nez v9, :cond_7

    .line 134
    iget v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressDayCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressDayCount:I

    .line 135
    const/4 v9, 0x0

    iput v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressSmallPackage:I

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u957f\u5305\u65e0\u4e22\u5305\u5f04 noneed resend data \u5df2\u540c\u6b65\u5929\u6570\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressDayCount:I

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

    .line 137
    iget v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressDayCount:I

    int-to-float v9, v9

    div-float/2addr v9, p1

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iput v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progress:I

    .line 138
    iget v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progress:I

    const/16 v10, 0x64

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progress:I

    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sync data progress is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progress:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 140
    iget v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progress:I

    iget v10, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->oldProgress:I

    if-le v9, v10, :cond_5

    iget-object v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget v10, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progress:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 141
    :cond_5
    iget v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progress:I

    iput v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->oldProgress:I

    .line 142
    iget-object v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/veclink/hw/bledevice/BaseBleDevice;->mOneDayDataOk:Z

    .line 143
    iget-object v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-boolean v9, v9, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllDataOk:Z

    if-eqz v9, :cond_6

    .line 144
    const-string v9, "\u540c\u6b65\u6570\u636e\u5b8c\u6210"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 145
    const/4 v9, 0x5

    new-array v4, v9, [B

    fill-array-data v4, :array_1

    .line 146
    .restart local v4    # "nextLegthPackrq":[B
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->mDeviceRespondOk:Z

    .line 147
    invoke-virtual {p0, v4}, Lcom/veclink/pet/BleSyncPetSportDataTask;->sendCmdToBleDevice([B)V

    .line 148
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 151
    .end local v4    # "nextLegthPackrq":[B
    :cond_6
    const-wide/16 v9, 0xc8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_2
    const/4 v9, 0x5

    new-array v4, v9, [B

    fill-array-data v4, :array_2

    .line 157
    .restart local v4    # "nextLegthPackrq":[B
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v10, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 158
    const/4 v9, 0x4

    iget-object v10, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v10, v10, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v4, v9

    .line 159
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

    .line 160
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->mDeviceRespondOk:Z

    .line 161
    invoke-virtual {p0, v4}, Lcom/veclink/pet/BleSyncPetSportDataTask;->sendCmdToBleDevice([B)V

    .line 162
    const/16 v9, 0x1388

    invoke-virtual {p0, v9}, Lcom/veclink/pet/BleSyncPetSportDataTask;->waitResponse(I)Z

    .line 163
    iget-boolean v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->mDeviceRespondOk:Z

    if-nez v9, :cond_7

    .line 164
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 152
    .end local v4    # "nextLegthPackrq":[B
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 171
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "j":I
    .end local v6    # "sendResendDatacmd":[B
    :cond_7
    iget-object v9, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    iget-boolean v9, v9, Lcom/veclink/hw/bledevice/PetDevice;->isDeviceResponseError:Z

    if-eqz v9, :cond_0

    .line 172
    const-string v9, "while transport data device response error , so sync task fail"

    invoke-static {v9}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 174
    const/4 v5, 0x0

    :cond_8
    move v9, v5

    .line 178
    goto/16 :goto_0

    .line 107
    :array_0
    .array-data 1
        0x5at
        0x6t
        0x0t
        -0x1t
        -0x1t
    .end array-data

    .line 145
    nop

    :array_1
    .array-data 1
        0x5at
        0x6t
        0x0t
        -0x1t
        -0x1t
    .end array-data

    .line 156
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
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 236
    iget-object v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    iget-boolean v0, v0, Lcom/veclink/hw/bledevice/PetDevice;->isDeviceResponseError:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x63

    .line 239
    :goto_0
    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/PetDevice;->parsePetData([B)Ljava/lang/Object;

    .line 238
    invoke-virtual {p0, p1}, Lcom/veclink/pet/BleSyncPetSportDataTask;->sendLongpackDataProgress([B)V

    .line 239
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendLongpackDataProgress([B)V
    .locals 5
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v3, 0x1

    .line 244
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    iget v1, v1, Lcom/veclink/hw/bledevice/PetDevice;->mPackageSn:I

    if-ne v1, v3, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget v1, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressSmallPackage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressSmallPackage:I

    .line 246
    iget-object v1, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    iget v1, v1, Lcom/veclink/hw/bledevice/PetDevice;->oneLongpackSmallPackCount:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->maxDayCount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 247
    iget v1, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->progressSmallPackage:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->petDevice:Lcom/veclink/hw/bledevice/PetDevice;

    iget v3, v3, Lcom/veclink/hw/bledevice/PetDevice;->oneLongpackSmallPackCount:I

    int-to-float v3, v3

    iget v4, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->maxDayCount:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 248
    .local v0, "tempprogress":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 251
    iget v1, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->oldProgress:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    float-to-int v2, v0

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 252
    :cond_2
    float-to-int v1, v0

    iput v1, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->oldProgress:I

    goto :goto_0
.end method

.method public stopSyncTask()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Lcom/veclink/bracelet/bletask/BleTask;->stopSyncTask()V

    .line 261
    iget-object v0, p0, Lcom/veclink/pet/BleSyncPetSportDataTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

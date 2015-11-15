.class public Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleSetDrinkPlanTask.java"


# instance fields
.field public FIRST_TRANSFER_PACKAGE_DATA_LENGTH:I

.field public FIRST_TRANSFER_PACKAGE_DATA_OFFSET:I

.field public TRANSFER_PACKAGE_DATA_LENGTH:I

.field public TRANSFER_PACKAGE_DATA_OFFSET:I

.field private UPGRADE_DATA_PACKAGE_LENTH:I

.field private drinkPlanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/watercup/bean/DrinkWaterData;",
            ">;"
        }
    .end annotation
.end field

.field private mEndDataLength:I

.field private mEndPackageLength:I

.field mFirmwareBuffer:[B

.field mPackageBuffer:[B

.field private mSendCmd:[B

.field private mStartDataLength:I

.field private mTotalDataNumber:I

.field private mTotalPackageNumber:I

.field mTransferBuffer:[B

.field private mUpgradeFileLenth:I

.field private progress:I

.field private waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/veclink/bracelet/bletask/BleCallBack;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/watercup/bean/DrinkWaterData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "drinkPlanList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/watercup/bean/DrinkWaterData;>;"
    const/16 v2, 0x400

    const/16 v1, 0x14

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 45
    iput v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mUpgradeFileLenth:I

    .line 46
    iput v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalPackageNumber:I

    .line 47
    iput v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    .line 48
    iput v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalDataNumber:I

    .line 49
    iput v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mStartDataLength:I

    .line 50
    iput v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndDataLength:I

    .line 53
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTransferBuffer:[B

    .line 54
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mPackageBuffer:[B

    .line 55
    const/16 v0, 0x9

    iput v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->FIRST_TRANSFER_PACKAGE_DATA_LENGTH:I

    .line 56
    const/16 v0, 0x11

    iput v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->TRANSFER_PACKAGE_DATA_LENGTH:I

    .line 57
    const/16 v0, 0xb

    iput v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->FIRST_TRANSFER_PACKAGE_DATA_OFFSET:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->TRANSFER_PACKAGE_DATA_OFFSET:I

    .line 60
    iput v2, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    .line 61
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    .line 67
    iput-object p3, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->drinkPlanList:Ljava/util/List;

    .line 68
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/WaterCupDevice;

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    .line 69
    return-void
.end method


# virtual methods
.method public clearUpgradeSendCmd()V
    .locals 3

    .prologue
    .line 397
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    .line 398
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    .line 399
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 400
    return-void
.end method

.method public doWork()V
    .locals 27

    .prologue
    .line 73
    const/16 v20, 0x0

    .line 74
    .local v20, "ret":Z
    monitor-enter p0

    .line 75
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v16, v0

    .line 76
    .local v16, "packageLenth":I
    const/16 v21, 0x8

    .line 77
    .local v21, "timeOut":I
    const/16 v22, 0x0

    .line 78
    .local v22, "timesOfRetransfer":I
    const/4 v3, 0x0

    .line 79
    .local v3, "canUpgrade":Z
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->readFirmwareFile()Z

    move-result v20

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mFirmwareBuffer:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mUpgradeFileLenth:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/veclink/hw/bledevice/BaseBleDevice;->crc_ccitt([BI)I

    move-result v5

    .line 82
    .local v5, "fileCrc":I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "fileCrc:0x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    const v24, 0x13881

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/veclink/hw/bledevice/BaseBleDevice;->pareseCmdResponseType:I

    .line 84
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mDeviceRespondOk:Z

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalPackageNumber:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/hw/bledevice/WaterCupDevice;->createSetDrinkPlanCmd(I)[B

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    .line 90
    const-string v23, "BleSetDrinkPlanTask cmd is "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mDeviceRespondOk:Z

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->sendCmdToBleDevice([B)V

    .line 93
    const-string v23, "wait for device response  BleSetDrinkPlanTask cmd"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 94
    const/16 v23, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->waitResponse(I)Z

    .line 95
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mDeviceRespondOk:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 96
    const-string v23, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u5347\u7ea7\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 98
    monitor-exit p0

    .line 357
    :goto_0
    return-void

    .line 100
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mUpgradeState:I

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 101
    const/4 v3, 0x1

    .line 108
    if-eqz v3, :cond_14

    .line 109
    const-string v23, "device response  BleSetDrinkPlanTask cmd can begin..."

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnStartMessage(Ljava/lang/Object;)V

    .line 111
    const/16 v17, 0x0

    .line 112
    .local v17, "packageSequenceNumber":I
    const/4 v11, 0x0

    .local v11, "m":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalPackageNumber:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_13

    .line 113
    int-to-float v0, v11

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalPackageNumber:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    const/high16 v24, 0x42c80000    # 100.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->progress:I

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->progress:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 115
    const/4 v15, 0x0

    .line 116
    .local v15, "onepackagelength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->progress:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 117
    const/4 v8, 0x1

    .line 118
    .local v8, "isStartDataNumber":Z
    const/4 v7, 0x0

    .line 119
    .local v7, "isEndDataNumber":Z
    const/4 v12, 0x0

    .line 120
    .local v12, "mIsLastPackage":Z
    const/4 v14, 0x1

    .line 121
    .local v14, "num":B
    const/4 v6, 0x0

    .line 122
    .local v6, "fileReadOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalPackageNumber:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 123
    const/16 v17, 0x0

    .line 127
    :goto_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "send packageSequenceNumber is:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->clearUpgradeSendCmd()V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/veclink/hw/bledevice/BaseBleDevice;->clearNextPackageRequest()V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    const v24, 0x13882

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/veclink/hw/bledevice/BaseBleDevice;->pareseCmdResponseType:I

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalPackageNumber:I

    move/from16 v23, v0

    sub-int v23, v23, v11

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 133
    const/4 v12, 0x1

    .line 135
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    move/from16 v23, v0

    rem-int/lit8 v23, v23, 0x11

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x11

    add-int/lit8 v23, v23, 0x2

    :goto_3
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalDataNumber:I

    .line 136
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mStartDataLength:I

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    move/from16 v23, v0

    rem-int/lit8 v23, v23, 0x11

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndDataLength:I

    .line 139
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_4

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mPackageBuffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mFirmwareBuffer:[B

    move-object/from16 v24, v0

    mul-int v25, v16, v11

    add-int v25, v25, v13

    aget-byte v24, v24, v25

    aput-byte v24, v23, v13

    .line 139
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 103
    .end local v6    # "fileReadOffset":I
    .end local v7    # "isEndDataNumber":Z
    .end local v8    # "isStartDataNumber":Z
    .end local v11    # "m":I
    .end local v12    # "mIsLastPackage":Z
    .end local v13    # "n":I
    .end local v14    # "num":B
    .end local v15    # "onepackagelength":I
    .end local v17    # "packageSequenceNumber":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 104
    monitor-exit p0

    goto/16 :goto_0

    .line 351
    .end local v3    # "canUpgrade":Z
    .end local v5    # "fileCrc":I
    .end local v16    # "packageLenth":I
    .end local v21    # "timeOut":I
    .end local v22    # "timesOfRetransfer":I
    :catchall_0
    move-exception v23

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 125
    .restart local v3    # "canUpgrade":Z
    .restart local v5    # "fileCrc":I
    .restart local v6    # "fileReadOffset":I
    .restart local v7    # "isEndDataNumber":Z
    .restart local v8    # "isStartDataNumber":Z
    .restart local v11    # "m":I
    .restart local v12    # "mIsLastPackage":Z
    .restart local v14    # "num":B
    .restart local v15    # "onepackagelength":I
    .restart local v16    # "packageLenth":I
    .restart local v17    # "packageSequenceNumber":I
    .restart local v21    # "timeOut":I
    .restart local v22    # "timesOfRetransfer":I
    :cond_2
    add-int/lit8 v17, v11, 0x1

    goto/16 :goto_2

    .line 135
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x11

    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 142
    .restart local v13    # "n":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mPackageBuffer:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/veclink/hw/bledevice/BaseBleDevice;->crc_ccitt([BI)I

    move-result v5

    .line 143
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "last package fileCrc:0x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 160
    :goto_5
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mDeviceRespondOk:Z

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndDataLength:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mStartDataLength:I

    move/from16 v24, v0

    sub-int v15, v23, v24

    .line 162
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalDataNumber:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_10

    .line 163
    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalDataNumber:I

    move/from16 v23, v0

    sub-int v23, v23, v9

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 164
    const/4 v14, -0x2

    .line 165
    const/4 v7, 0x1

    .line 166
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "last trans:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, -0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 173
    :cond_5
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->clearUpgradeSendCmd()V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aput-byte v14, v23, v24

    .line 176
    if-eqz v8, :cond_d

    .line 177
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " isStartDataNumber start package:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 178
    if-eqz v12, :cond_c

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 185
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x5

    shr-int/lit8 v25, v17, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x7

    shr-int/lit8 v25, v5, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x8

    and-int/lit16 v0, v5, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    move-object/from16 v25, v0

    const/16 v25, 0xa

    aput-byte v25, v23, v24

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->drinkPlanList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 196
    const/4 v8, 0x0

    .line 211
    :cond_6
    :goto_9
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mDeviceRespondOk:Z

    .line 212
    if-eqz v12, :cond_7

    .line 213
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "last longpackage lastsmallpack content is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 215
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->sendCmdToBleDevice([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    const-wide/16 v23, 0x32

    :try_start_2
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :goto_a
    add-int/lit8 v23, v14, 0x1

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 162
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 146
    .end local v9    # "j":I
    .end local v13    # "n":I
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v23, v0

    rem-int/lit8 v23, v23, 0x11

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x11

    add-int/lit8 v23, v23, 0x2

    :goto_b
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalDataNumber:I

    .line 148
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mStartDataLength:I

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v23, v0

    rem-int/lit8 v23, v23, 0x11

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndDataLength:I

    .line 151
    const/4 v13, 0x0

    .restart local v13    # "n":I
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_a

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mPackageBuffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mFirmwareBuffer:[B

    move-object/from16 v24, v0

    mul-int v25, v16, v11

    add-int v25, v25, v13

    aget-byte v24, v24, v25

    aput-byte v24, v23, v13

    .line 151
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 146
    .end local v13    # "n":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x11

    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 154
    .restart local v13    # "n":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mPackageBuffer:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/veclink/hw/bledevice/BaseBleDevice;->crc_ccitt([BI)I

    move-result v5

    goto/16 :goto_5

    .line 167
    .restart local v9    # "j":I
    :cond_b
    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalDataNumber:I

    move/from16 v23, v0

    sub-int v23, v23, v9

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 168
    const/4 v14, -0x1

    .line 169
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "last pack last trans:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 170
    const/4 v7, 0x1

    goto/16 :goto_7

    .line 182
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    goto/16 :goto_8

    .line 197
    :cond_d
    if-eqz v7, :cond_f

    .line 198
    add-int/lit8 v23, v9, -0x1

    mul-int/lit8 v6, v23, 0x11

    .line 199
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndDataLength:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_e

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    add-int/lit8 v24, v10, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mPackageBuffer:[B

    move-object/from16 v25, v0

    add-int v26, v10, v6

    aget-byte v25, v25, v26

    aput-byte v25, v23, v24

    .line 199
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 203
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 205
    .end local v10    # "k":I
    :cond_f
    add-int/lit8 v23, v9, -0x1

    mul-int/lit8 v6, v23, 0x11

    .line 206
    const/4 v10, 0x0

    .restart local v10    # "k":I
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->TRANSFER_PACKAGE_DATA_LENGTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_6

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    add-int/lit8 v24, v10, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mPackageBuffer:[B

    move-object/from16 v25, v0

    add-int v26, v10, v6

    aget-byte v25, v25, v26

    aput-byte v25, v23, v24

    .line 206
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 219
    .end local v10    # "k":I
    :catch_0
    move-exception v4

    .line 220
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 228
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_10
    const/16 v23, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->waitResponse(I)Z

    .line 229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mDeviceRespondOk:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    .line 230
    const-string v23, "send data respond ok!!!"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 239
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/veclink/hw/bledevice/BaseBleDevice;->getReTransferDataFlag()Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 243
    const/16 v18, 0x0

    .line 244
    .local v18, "reTotalDataNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/veclink/hw/bledevice/BaseBleDevice;->getRetransData()I

    move-result v18

    .line 245
    const/16 v19, 0x0

    .line 246
    .local v19, "renum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v24, v0

    const v24, 0x13882

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/veclink/hw/bledevice/BaseBleDevice;->pareseCmdResponseType:I

    .line 247
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mDeviceRespondOk:Z

    .line 248
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "needreSend data reTotalDataNumber is:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 249
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "data num:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalDataNumber:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalDataNumber:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    or-int/lit16 v0, v0, -0x100

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 250
    const/4 v9, 0x0

    :goto_10
    move/from16 v0, v18

    if-ge v9, v0, :cond_19

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    move-object/from16 v23, v0

    aget v19, v23, v9

    .line 253
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " renum is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    or-int/lit16 v0, v0, -0x100

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->clearUpgradeSendCmd()V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 258
    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 259
    const-string v23, "cma---*****"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 291
    :cond_11
    :goto_11
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mDeviceRespondOk:Z

    .line 292
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "do resend data conteent is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->sendCmdToBleDevice([B)V

    .line 250
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_10

    .line 232
    .end local v18    # "reTotalDataNumber":I
    .end local v19    # "renum":I
    :cond_12
    const-string v23, "send data respond timeout!"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 233
    const-string v23, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u5347\u7ea7\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 341
    .end local v6    # "fileReadOffset":I
    .end local v7    # "isEndDataNumber":Z
    .end local v8    # "isStartDataNumber":Z
    .end local v9    # "j":I
    .end local v12    # "mIsLastPackage":Z
    .end local v13    # "n":I
    .end local v14    # "num":B
    .end local v15    # "onepackagelength":I
    :cond_13
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/veclink/hw/bledevice/BaseBleDevice;->getAllPackageReceivOver()Z

    move-result v23

    if-eqz v23, :cond_20

    .line 342
    const-string v23, "send drink plan ok!"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 351
    .end local v11    # "m":I
    .end local v17    # "packageSequenceNumber":I
    :cond_14
    :goto_13
    monitor-exit p0

    goto/16 :goto_0

    .line 260
    .restart local v6    # "fileReadOffset":I
    .restart local v7    # "isEndDataNumber":Z
    .restart local v8    # "isStartDataNumber":Z
    .restart local v9    # "j":I
    .restart local v11    # "m":I
    .restart local v12    # "mIsLastPackage":Z
    .restart local v13    # "n":I
    .restart local v14    # "num":B
    .restart local v15    # "onepackagelength":I
    .restart local v17    # "packageSequenceNumber":I
    .restart local v18    # "reTotalDataNumber":I
    .restart local v19    # "renum":I
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalDataNumber:I

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 262
    const-string v23, "do resend data!"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, -0x2

    aput-byte v25, v23, v24

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalDataNumber:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    mul-int/lit8 v6, v23, 0x11

    .line 265
    const/4 v10, 0x0

    .restart local v10    # "k":I
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndDataLength:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_11

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    add-int/lit8 v24, v10, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mPackageBuffer:[B

    move-object/from16 v25, v0

    add-int v26, v10, v6

    aget-byte v25, v25, v26

    aput-byte v25, v23, v24

    .line 265
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 268
    .end local v10    # "k":I
    :cond_16
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 269
    if-eqz v12, :cond_17

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 276
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x5

    shr-int/lit8 v25, v17, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x7

    shr-int/lit8 v25, v5, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x8

    and-int/lit16 v0, v5, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    move-object/from16 v25, v0

    const/16 v25, 0xa

    aput-byte v25, v23, v24

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->drinkPlanList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    goto/16 :goto_11

    .line 273
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    goto/16 :goto_15

    .line 285
    :cond_18
    add-int/lit8 v23, v19, -0x2

    mul-int/lit8 v6, v23, 0x11

    .line 286
    const/4 v10, 0x0

    .restart local v10    # "k":I
    :goto_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->TRANSFER_PACKAGE_DATA_LENGTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_11

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mSendCmd:[B

    move-object/from16 v23, v0

    add-int/lit8 v24, v10, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mPackageBuffer:[B

    move-object/from16 v25, v0

    add-int v26, v10, v6

    aget-byte v25, v25, v26

    aput-byte v25, v23, v24

    .line 286
    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    .line 295
    .end local v10    # "k":I
    :cond_19
    const/16 v23, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->waitResponse(I)Z

    .line 296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mDeviceRespondOk:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 297
    const-string v23, "retransfer respond ok!!!"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 299
    :cond_1a
    const-string v23, "retransfer respond timeout!"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 301
    monitor-exit p0

    goto/16 :goto_0

    .line 304
    .end local v18    # "reTotalDataNumber":I
    .end local v19    # "renum":I
    :cond_1b
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mDeviceRespondOk:Z

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v24, v0

    const v24, 0x13883

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/veclink/hw/bledevice/BaseBleDevice;->pareseCmdResponseType:I

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->clearUpgradeSendCmd()V

    .line 307
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v2, v0, [B

    .line 308
    .local v2, "affirm":[B
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v24, v0

    const/16 v24, 0x5a

    aput-byte v24, v2, v23

    .line 309
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v24, v0

    const/16 v24, 0x5

    aput-byte v24, v2, v23

    .line 310
    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v24, v0

    const/16 v24, 0x0

    aput-byte v24, v2, v23

    .line 311
    const/16 v23, 0x3

    shr-int/lit8 v24, v17, 0x8

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v2, v23

    .line 312
    const/16 v23, 0x4

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v2, v23

    .line 314
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->sendCmdToBleDevice([B)V

    .line 315
    const/16 v23, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->waitResponse(I)Z

    .line 316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mDeviceRespondOk:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 317
    const-string v23, "next package---respond ok!!!"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 326
    :cond_1c
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/veclink/hw/bledevice/BaseBleDevice;->getAllPackageReceivOver()Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 328
    const-string v23, "getAllPackageReceivOver ok!"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 329
    const/16 v23, 0x64

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->progress:I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v23, v0

    const/16 v24, 0x64

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 320
    :cond_1d
    if-nez v12, :cond_1c

    .line 321
    const-string v23, "next package---respond error!"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_17

    .line 334
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/veclink/hw/bledevice/BaseBleDevice;->getNextPackageRequest()Z

    move-result v23

    if-nez v23, :cond_1f

    .line 336
    const-string v23, "getNextPackageRequest is false"

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v23, v0

    const/16 v24, 0x64

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 112
    :cond_1f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 346
    .end local v2    # "affirm":[B
    .end local v6    # "fileReadOffset":I
    .end local v7    # "isEndDataNumber":Z
    .end local v8    # "isStartDataNumber":Z
    .end local v9    # "j":I
    .end local v12    # "mIsLastPackage":Z
    .end local v13    # "n":I
    .end local v14    # "num":B
    .end local v15    # "onepackagelength":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_13
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 421
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/WaterCupDevice;->parseSetDrinkPlanResponseData([B)I

    move-result v0

    return v0
.end method

.method public readFirmwareFile()Z
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 364
    const/4 v2, 0x0

    .line 365
    .local v2, "len":I
    iget-object v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->drinkPlanList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mFirmwareBuffer:[B

    .line 366
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->drinkPlanList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 367
    iget-object v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->drinkPlanList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/veclink/watercup/bean/DrinkWaterData;

    .line 368
    .local v0, "drinkData":Lcom/veclink/watercup/bean/DrinkWaterData;
    iget v3, v0, Lcom/veclink/watercup/bean/DrinkWaterData;->startTime:I

    .line 369
    .local v3, "startTime":I
    iget v5, v0, Lcom/veclink/watercup/bean/DrinkWaterData;->drinkWaterCount:I

    .line 370
    .local v5, "waterCount":I
    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->intToBytes(I)[B

    move-result-object v4

    .line 371
    .local v4, "startTimeArray":[B
    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->intToBytes(I)[B

    move-result-object v6

    .line 372
    .local v6, "waterCountArray":[B
    iget-object v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mFirmwareBuffer:[B

    mul-int/lit8 v8, v1, 0x4

    aget-byte v9, v4, v10

    aput-byte v9, v7, v8

    .line 373
    iget-object v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mFirmwareBuffer:[B

    mul-int/lit8 v8, v1, 0x4

    add-int/lit8 v8, v8, 0x1

    aget-byte v9, v4, v11

    aput-byte v9, v7, v8

    .line 374
    iget-object v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mFirmwareBuffer:[B

    mul-int/lit8 v8, v1, 0x4

    add-int/lit8 v8, v8, 0x2

    aget-byte v9, v6, v10

    aput-byte v9, v7, v8

    .line 375
    iget-object v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mFirmwareBuffer:[B

    mul-int/lit8 v8, v1, 0x4

    add-int/lit8 v8, v8, 0x3

    aget-byte v9, v6, v11

    aput-byte v9, v7, v8

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "drinkData":Lcom/veclink/watercup/bean/DrinkWaterData;
    .end local v3    # "startTime":I
    .end local v4    # "startTimeArray":[B
    .end local v5    # "waterCount":I
    .end local v6    # "waterCountArray":[B
    :cond_0
    iget-object v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mFirmwareBuffer:[B

    array-length v7, v7

    iput v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mUpgradeFileLenth:I

    .line 378
    iget v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mUpgradeFileLenth:I

    iget v8, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    rem-int/2addr v7, v8

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mUpgradeFileLenth:I

    iget v8, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    :goto_1
    iput v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalPackageNumber:I

    .line 381
    iget v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mUpgradeFileLenth:I

    iget v8, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    rem-int/2addr v7, v8

    iput v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mEndPackageLength:I

    .line 383
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTotalPackageNumber:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mTotalPackageNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 384
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUpgradeFileLenth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mUpgradeFileLenth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mUpgradeFileLenth:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 385
    const/4 v7, 0x1

    return v7

    .line 378
    :cond_1
    iget v7, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->mUpgradeFileLenth:I

    iget v8, p0, Lcom/veclink/watercup/bletask/BleSetDrinkPlanTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    div-int/2addr v7, v8

    goto :goto_1
.end method

.method public sendCmdToBleDevice([B)V
    .locals 0
    .param p1, "cmdParamArrayOfByte"    # [B

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/veclink/bracelet/bletask/BleTask;->sendCmdToBleDevice([B)V

    .line 410
    return-void
.end method

.class public Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleUpdateFirmWareTask.java"


# instance fields
.field public FIRST_TRANSFER_PACKAGE_DATA_LENGTH:I

.field public FIRST_TRANSFER_PACKAGE_DATA_OFFSET:I

.field public TRANSFER_PACKAGE_DATA_LENGTH:I

.field public TRANSFER_PACKAGE_DATA_OFFSET:I

.field private UPGRADE_DATA_PACKAGE_LENTH:I

.field private filePath:Ljava/lang/String;

.field private mEndDataLength:I

.field private mEndPackageLength:I

.field private mFileIn:Ljava/io/FileInputStream;

.field mFirmwareBuffer:[B

.field mPackageBuffer:[B

.field private mSendCmd:[B

.field private mStartDataLength:I

.field private mTotalDataNumber:I

.field private mTotalPackageNumber:I

.field mTransferBuffer:[B

.field private mUpgradeFileLenth:I

.field private progress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "filepath"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x400

    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mFileIn:Ljava/io/FileInputStream;

    .line 39
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    .line 40
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalPackageNumber:I

    .line 41
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    .line 42
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalDataNumber:I

    .line 43
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mStartDataLength:I

    .line 44
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndDataLength:I

    .line 47
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTransferBuffer:[B

    .line 48
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mPackageBuffer:[B

    .line 49
    const/16 v0, 0x9

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->FIRST_TRANSFER_PACKAGE_DATA_LENGTH:I

    .line 50
    const/16 v0, 0x11

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->TRANSFER_PACKAGE_DATA_LENGTH:I

    .line 51
    const/16 v0, 0xb

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->FIRST_TRANSFER_PACKAGE_DATA_OFFSET:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->TRANSFER_PACKAGE_DATA_OFFSET:I

    .line 54
    iput v3, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    .line 55
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    .line 59
    iput-object p3, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->filePath:Ljava/lang/String;

    .line 64
    const-string v0, "BleUpdateFirmWareTask veclink update way"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public clearUpgradeSendCmd()V
    .locals 3

    .prologue
    .line 418
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    .line 419
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    .line 420
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 421
    return-void
.end method

.method public doWork()V
    .locals 29

    .prologue
    .line 69
    const/16 v21, 0x0

    .line 70
    .local v21, "ret":Z
    monitor-enter p0

    .line 71
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v17, v0

    .line 72
    .local v17, "packageLenth":I
    const/16 v23, 0x14

    .line 73
    .local v23, "timeOut":I
    const/16 v24, 0x5

    .line 74
    .local v24, "timesOfRetransfer":I
    const/4 v3, 0x0

    .line 75
    .local v3, "canUpgrade":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->readFirmwareFile(Ljava/lang/String;)Z

    move-result v21

    .line 76
    if-nez v21, :cond_0

    .line 77
    const-string v25, "readFirmwareFile fail"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 79
    monitor-exit p0

    .line 357
    :goto_0
    return-void

    .line 82
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mFirmwareBuffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/veclink/hw/bledevice/BaseBleDevice;->crc_ccitt([BI)I

    move-result v5

    .line 83
    .local v5, "fileCrc":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "fileCrc:0x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 84
    const/16 v25, 0xa

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 85
    .local v22, "startUpdateParmasArray":[B
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    move/from16 v26, v0

    shr-int/lit8 v26, v26, 0x18

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 86
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    move/from16 v26, v0

    shr-int/lit8 v26, v26, 0x10

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 87
    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    move/from16 v26, v0

    shr-int/lit8 v26, v26, 0x8

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 88
    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 89
    const/16 v25, 0x4

    shr-int/lit8 v26, v5, 0x8

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 90
    const/16 v25, 0x5

    and-int/lit16 v0, v5, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 91
    const/16 v25, 0x6

    shr-int/lit8 v26, v17, 0x8

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 92
    const/16 v25, 0x7

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 93
    const/16 v25, 0x8

    const/16 v26, 0x14

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 94
    const/16 v25, 0x9

    const/16 v26, 0x5

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    const v26, 0x13881

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/hw/bledevice/BaseBleDevice;->pareseCmdResponseType:I

    .line 96
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 97
    const/4 v7, 0x0

    .line 98
    .local v7, "i":I
    :goto_1
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v7, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v28, v0

    const/16 v28, 0x11

    invoke-static/range {v28 .. v28}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    aput-object v22, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/hw/bledevice/BaseBleDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    .line 100
    const-string v25, "updatecmd is "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->sendCmdToBleDevice([B)V

    .line 103
    const-string v25, "wait for device response  update cmd"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 104
    const/16 v25, 0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->waitResponse(I)Z

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 107
    :cond_1
    const/16 v25, 0x3

    move/from16 v0, v25

    if-lt v7, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    .line 108
    const-string v25, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u5347\u7ea7\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 110
    monitor-exit p0

    goto/16 :goto_0

    .line 351
    .end local v3    # "canUpgrade":Z
    .end local v5    # "fileCrc":I
    .end local v7    # "i":I
    .end local v17    # "packageLenth":I
    .end local v22    # "startUpdateParmasArray":[B
    .end local v23    # "timeOut":I
    .end local v24    # "timesOfRetransfer":I
    :catchall_0
    move-exception v25

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 112
    .restart local v3    # "canUpgrade":Z
    .restart local v5    # "fileCrc":I
    .restart local v7    # "i":I
    .restart local v17    # "packageLenth":I
    .restart local v22    # "startUpdateParmasArray":[B
    .restart local v23    # "timeOut":I
    .restart local v24    # "timesOfRetransfer":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mUpgradeState:I

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 113
    const/4 v3, 0x1

    .line 120
    if-eqz v3, :cond_16

    .line 121
    const-string v25, "device response  update cmd can startUpgrade..."

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnStartMessage(Ljava/lang/Object;)V

    .line 123
    const/16 v18, 0x0

    .line 124
    .local v18, "packageSequenceNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalPackageNumber:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    const/16 v18, 0x1

    .line 125
    :cond_3
    const/4 v12, 0x0

    .local v12, "m":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalPackageNumber:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v12, v0, :cond_15

    .line 126
    int-to-float v0, v12

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalPackageNumber:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    const/high16 v26, 0x42c80000    # 100.0f

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->progress:I

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->progress:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 128
    const/16 v16, 0x0

    .line 129
    .local v16, "onepackagelength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->progress:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 130
    const/4 v9, 0x1

    .line 131
    .local v9, "isStartDataNumber":Z
    const/4 v8, 0x0

    .line 132
    .local v8, "isEndDataNumber":Z
    const/4 v13, 0x0

    .line 133
    .local v13, "mIsLastPackage":Z
    const/4 v15, 0x1

    .line 134
    .local v15, "num":B
    const/4 v6, 0x0

    .line 135
    .local v6, "fileReadOffset":I
    add-int/lit8 v18, v12, 0x1

    .line 136
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "send packageSequenceNumber is:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->clearUpgradeSendCmd()V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/veclink/hw/bledevice/BaseBleDevice;->clearNextPackageRequest()V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    const v26, 0x13882

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/hw/bledevice/BaseBleDevice;->pareseCmdResponseType:I

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalPackageNumber:I

    move/from16 v25, v0

    sub-int v25, v25, v12

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 142
    const/4 v13, 0x1

    .line 144
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    rem-int/lit8 v25, v25, 0x11

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x11

    add-int/lit8 v25, v25, 0x2

    :goto_3
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalDataNumber:I

    .line 145
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mStartDataLength:I

    .line 146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    rem-int/lit8 v25, v25, 0x11

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndDataLength:I

    .line 148
    const/4 v14, 0x0

    .local v14, "n":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_6

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mFirmwareBuffer:[B

    move-object/from16 v26, v0

    mul-int v27, v17, v12

    add-int v27, v27, v14

    aget-byte v26, v26, v27

    aput-byte v26, v25, v14

    .line 148
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 115
    .end local v6    # "fileReadOffset":I
    .end local v8    # "isEndDataNumber":Z
    .end local v9    # "isStartDataNumber":Z
    .end local v12    # "m":I
    .end local v13    # "mIsLastPackage":Z
    .end local v14    # "n":I
    .end local v15    # "num":B
    .end local v16    # "onepackagelength":I
    .end local v18    # "packageSequenceNumber":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 116
    monitor-exit p0

    goto/16 :goto_0

    .line 144
    .restart local v6    # "fileReadOffset":I
    .restart local v8    # "isEndDataNumber":Z
    .restart local v9    # "isStartDataNumber":Z
    .restart local v12    # "m":I
    .restart local v13    # "mIsLastPackage":Z
    .restart local v15    # "num":B
    .restart local v16    # "onepackagelength":I
    .restart local v18    # "packageSequenceNumber":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x11

    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 151
    .restart local v14    # "n":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/veclink/hw/bledevice/BaseBleDevice;->crc_ccitt([BI)I

    move-result v5

    .line 152
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "last package fileCrc:0x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 169
    :goto_5
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndDataLength:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mStartDataLength:I

    move/from16 v26, v0

    sub-int v16, v25, v26

    .line 171
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_12

    .line 172
    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v25, v0

    sub-int v25, v25, v10

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 173
    const/4 v15, -0x2

    .line 174
    const/4 v8, 0x1

    .line 175
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "last trans:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, -0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x6

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 182
    :cond_7
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->clearUpgradeSendCmd()V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aput-byte v15, v25, v26

    .line 185
    if-eqz v9, :cond_f

    .line 186
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " isStartDataNumber start package:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 187
    if-eqz v13, :cond_e

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 194
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x5

    shr-int/lit8 v27, v18, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x7

    shr-int/lit8 v27, v5, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x8

    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v27, v0

    const/16 v27, 0x11

    aput-byte v27, v25, v26

    .line 199
    const/4 v9, 0x0

    .line 214
    :cond_8
    :goto_9
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 215
    if-eqz v13, :cond_9

    .line 216
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "last longpackage lastsmallpack content is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 218
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->sendCmdToBleDevice([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    const-wide/16 v25, 0x32

    :try_start_2
    invoke-static/range {v25 .. v26}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :goto_a
    add-int/lit8 v25, v15, 0x1

    move/from16 v0, v25

    int-to-byte v15, v0

    .line 171
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 155
    .end local v10    # "j":I
    .end local v14    # "n":I
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    rem-int/lit8 v25, v25, 0x11

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x11

    add-int/lit8 v25, v25, 0x2

    :goto_b
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalDataNumber:I

    .line 157
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mStartDataLength:I

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    rem-int/lit8 v25, v25, 0x11

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndDataLength:I

    .line 160
    const/4 v14, 0x0

    .restart local v14    # "n":I
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_c

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mFirmwareBuffer:[B

    move-object/from16 v26, v0

    mul-int v27, v17, v12

    add-int v27, v27, v14

    aget-byte v26, v26, v27

    aput-byte v26, v25, v14

    .line 160
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 155
    .end local v14    # "n":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x11

    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 163
    .restart local v14    # "n":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/veclink/hw/bledevice/BaseBleDevice;->crc_ccitt([BI)I

    move-result v5

    goto/16 :goto_5

    .line 176
    .restart local v10    # "j":I
    :cond_d
    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v25, v0

    sub-int v25, v25, v10

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 177
    const/4 v15, -0x1

    .line 178
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "last pack last trans:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, -0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x6

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 179
    const/4 v8, 0x1

    goto/16 :goto_7

    .line 191
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    goto/16 :goto_8

    .line 200
    :cond_f
    if-eqz v8, :cond_11

    .line 201
    add-int/lit8 v25, v10, -0x1

    mul-int/lit8 v6, v25, 0x11

    .line 202
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndDataLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_10

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v27, v0

    add-int v28, v11, v6

    aget-byte v27, v27, v28

    aput-byte v27, v25, v26

    .line 202
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 206
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 208
    .end local v11    # "k":I
    :cond_11
    add-int/lit8 v25, v10, -0x1

    mul-int/lit8 v6, v25, 0x11

    .line 209
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->TRANSFER_PACKAGE_DATA_LENGTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_8

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v27, v0

    add-int v28, v11, v6

    aget-byte v27, v27, v28

    aput-byte v27, v25, v26

    .line 209
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 222
    .end local v11    # "k":I
    :catch_0
    move-exception v4

    .line 223
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 231
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_12
    const/16 v25, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->waitResponse(I)Z

    .line 232
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    move/from16 v25, v0

    if-eqz v25, :cond_14

    .line 233
    const-string v25, "send data respond ok!!!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 242
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/veclink/hw/bledevice/BaseBleDevice;->getReTransferDataFlag()Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 246
    const/16 v19, 0x0

    .line 247
    .local v19, "reTotalDataNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/veclink/hw/bledevice/BaseBleDevice;->getRetransData()I

    move-result v19

    .line 248
    const/16 v20, 0x0

    .line 249
    .local v20, "renum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v26, v0

    const v26, 0x13882

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/hw/bledevice/BaseBleDevice;->pareseCmdResponseType:I

    .line 250
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 251
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "needreSend data reTotalDataNumber is:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 252
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "data num:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    or-int/lit16 v0, v0, -0x100

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x6

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 253
    const/4 v10, 0x0

    :goto_10
    move/from16 v0, v19

    if-ge v10, v0, :cond_1b

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    move-object/from16 v25, v0

    aget v20, v25, v10

    .line 256
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " renum is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    or-int/lit16 v0, v0, -0x100

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x6

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->clearUpgradeSendCmd()V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 261
    const/16 v25, -0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 262
    const-string v25, "cma---*****"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 292
    :cond_13
    :goto_11
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 293
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "do resend data conteent is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->sendCmdToBleDevice([B)V

    .line 253
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_10

    .line 235
    .end local v19    # "reTotalDataNumber":I
    .end local v20    # "renum":I
    :cond_14
    const-string v25, "send data respond timeout!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 236
    const-string v25, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u5347\u7ea7\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 341
    .end local v6    # "fileReadOffset":I
    .end local v8    # "isEndDataNumber":Z
    .end local v9    # "isStartDataNumber":Z
    .end local v10    # "j":I
    .end local v13    # "mIsLastPackage":Z
    .end local v14    # "n":I
    .end local v15    # "num":B
    .end local v16    # "onepackagelength":I
    :cond_15
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/veclink/hw/bledevice/BaseBleDevice;->getAllPackageReceivOver()Z

    move-result v25

    if-eqz v25, :cond_22

    .line 342
    const-string v25, "upgrade ok!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 351
    .end local v12    # "m":I
    .end local v18    # "packageSequenceNumber":I
    :cond_16
    :goto_13
    monitor-exit p0

    goto/16 :goto_0

    .line 263
    .restart local v6    # "fileReadOffset":I
    .restart local v8    # "isEndDataNumber":Z
    .restart local v9    # "isStartDataNumber":Z
    .restart local v10    # "j":I
    .restart local v12    # "m":I
    .restart local v13    # "mIsLastPackage":Z
    .restart local v14    # "n":I
    .restart local v15    # "num":B
    .restart local v16    # "onepackagelength":I
    .restart local v18    # "packageSequenceNumber":I
    .restart local v19    # "reTotalDataNumber":I
    .restart local v20    # "renum":I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v25, v0

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 265
    const-string v25, "do resend data!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    const/16 v27, -0x2

    aput-byte v27, v25, v26

    .line 267
    add-int/lit8 v25, v20, -0x2

    mul-int/lit8 v6, v25, 0x11

    .line 268
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndDataLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_13

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v27, v0

    add-int v28, v11, v6

    aget-byte v27, v27, v28

    aput-byte v27, v25, v26

    .line 268
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 271
    .end local v11    # "k":I
    :cond_18
    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    .line 272
    if-eqz v13, :cond_19

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 279
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x5

    shr-int/lit8 v27, v18, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x7

    shr-int/lit8 v27, v5, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x8

    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v27, v0

    const/16 v27, 0x11

    aput-byte v27, v25, v26

    goto/16 :goto_11

    .line 276
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    goto/16 :goto_15

    .line 286
    :cond_1a
    add-int/lit8 v25, v20, -0x2

    mul-int/lit8 v6, v25, 0x11

    .line 287
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->TRANSFER_PACKAGE_DATA_LENGTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_13

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v27, v0

    add-int v28, v11, v6

    aget-byte v27, v27, v28

    aput-byte v27, v25, v26

    .line 287
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 296
    .end local v11    # "k":I
    :cond_1b
    const/16 v25, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->waitResponse(I)Z

    .line 297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1c

    .line 298
    const-string v25, "retransfer respond ok!!!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 300
    :cond_1c
    const-string v25, "retransfer respond timeout!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 302
    monitor-exit p0

    goto/16 :goto_0

    .line 305
    .end local v19    # "reTotalDataNumber":I
    .end local v20    # "renum":I
    :cond_1d
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v26, v0

    const v26, 0x13883

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/hw/bledevice/BaseBleDevice;->pareseCmdResponseType:I

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->clearUpgradeSendCmd()V

    .line 308
    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v2, v0, [B

    .line 309
    .local v2, "affirm":[B
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v26, v0

    const/16 v26, 0x5a

    aput-byte v26, v2, v25

    .line 310
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v26, v0

    const/16 v26, 0x5

    aput-byte v26, v2, v25

    .line 311
    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v26, v0

    const/16 v26, 0x0

    aput-byte v26, v2, v25

    .line 312
    const/16 v25, 0x3

    shr-int/lit8 v26, v18, 0x8

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v2, v25

    .line 313
    const/16 v25, 0x4

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v2, v25

    .line 315
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->sendCmdToBleDevice([B)V

    .line 316
    const/16 v25, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->waitResponse(I)Z

    .line 317
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mDeviceRespondOk:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1f

    .line 318
    const-string v25, "next package---respond ok!!!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 326
    :cond_1e
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/veclink/hw/bledevice/BaseBleDevice;->getAllPackageReceivOver()Z

    move-result v25

    if-eqz v25, :cond_20

    .line 328
    const-string v25, "getAllPackageReceivOver ok!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 329
    const/16 v25, 0x64

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->progress:I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    const/16 v26, 0x64

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 320
    :cond_1f
    if-nez v13, :cond_1e

    .line 321
    const-string v25, "next package---respond error!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_17

    .line 334
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/veclink/hw/bledevice/BaseBleDevice;->getNextPackageRequest()Z

    move-result v25

    if-nez v25, :cond_21

    .line 336
    const-string v25, "getNextPackageRequest is false"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    const/16 v26, 0x64

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 125
    :cond_21
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 346
    .end local v2    # "affirm":[B
    .end local v6    # "fileReadOffset":I
    .end local v8    # "isEndDataNumber":Z
    .end local v9    # "isStartDataNumber":Z
    .end local v10    # "j":I
    .end local v13    # "mIsLastPackage":Z
    .end local v14    # "n":I
    .end local v15    # "num":B
    .end local v16    # "onepackagelength":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_13
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 442
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/BaseBleDevice;->parseUpdateResponseData([B)I

    move-result v0

    return v0
.end method

.method public readFirmwareFile(Ljava/lang/String;)Z
    .locals 8
    .param p1, "mUpgradeFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 364
    const/4 v2, 0x0

    .line 365
    .local v2, "len":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 367
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error:this file not exist("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 406
    :cond_1
    :goto_0
    return v3

    .line 372
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mFileIn:Ljava/io/FileInputStream;

    .line 373
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mFileIn:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v4

    iput v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 379
    :goto_1
    iget v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    if-lez v4, :cond_3

    .line 380
    iget v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mFirmwareBuffer:[B

    .line 384
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mFileIn:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mFirmwareBuffer:[B

    const/4 v6, 0x0

    iget v7, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 385
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 391
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mFileIn:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 396
    :goto_3
    iget v3, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    if-eq v2, v3, :cond_4

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error----len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 399
    :cond_4
    iget v3, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    :goto_4
    iput v3, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalPackageNumber:I

    .line 402
    iget v3, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mEndPackageLength:I

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTotalPackageNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mTotalPackageNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUpgradeFileLenth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 406
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 376
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 377
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 387
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 388
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 392
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 393
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 399
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    iget v3, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->mUpgradeFileLenth:I

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    div-int/2addr v3, v4

    goto :goto_4
.end method

.method public sendCmdToBleDevice([B)V
    .locals 0
    .param p1, "cmdParamArrayOfByte"    # [B

    .prologue
    .line 429
    invoke-super {p0, p1}, Lcom/veclink/bracelet/bletask/BleTask;->sendCmdToBleDevice([B)V

    .line 431
    return-void
.end method

.class public Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleOldUpdateFirmWareTask.java"


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

.field private oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;


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

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mFileIn:Ljava/io/FileInputStream;

    .line 40
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    .line 41
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalPackageNumber:I

    .line 42
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndPackageLength:I

    .line 43
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalDataNumber:I

    .line 44
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mStartDataLength:I

    .line 45
    iput v1, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndDataLength:I

    .line 48
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTransferBuffer:[B

    .line 49
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mPackageBuffer:[B

    .line 50
    const/16 v0, 0x9

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->FIRST_TRANSFER_PACKAGE_DATA_LENGTH:I

    .line 51
    const/16 v0, 0x11

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->TRANSFER_PACKAGE_DATA_LENGTH:I

    .line 52
    const/16 v0, 0xb

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->FIRST_TRANSFER_PACKAGE_DATA_OFFSET:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->TRANSFER_PACKAGE_DATA_OFFSET:I

    .line 55
    iput v3, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    .line 56
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    .line 60
    iput-object p3, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->filePath:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    .line 67
    return-void
.end method


# virtual methods
.method public clearUpgradeSendCmd()V
    .locals 3

    .prologue
    .line 416
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    .line 417
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    .line 418
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    .line 419
    return-void
.end method

.method public doWork()V
    .locals 29

    .prologue
    .line 71
    const/16 v21, 0x0

    .line 72
    .local v21, "ret":Z
    monitor-enter p0

    .line 73
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v16, v0

    .line 74
    .local v16, "packageLenth":I
    const/16 v23, 0x8

    .line 75
    .local v23, "timeOut":I
    const/16 v24, 0x0

    .line 76
    .local v24, "timesOfRetransfer":I
    const/4 v3, 0x0

    .line 77
    .local v3, "canUpgrade":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->readFirmwareFile(Ljava/lang/String;)Z

    move-result v21

    .line 78
    if-nez v21, :cond_0

    .line 79
    const-string v25, "readFirmwareFile fail"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 81
    monitor-exit p0

    .line 355
    :goto_0
    return-void

    .line 84
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mFirmwareBuffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->crc_ccitt([BI)I

    move-result v5

    .line 85
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

    .line 86
    const/16 v25, 0xa

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 87
    .local v22, "startUpdateParmasArray":[B
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    move/from16 v26, v0

    shr-int/lit8 v26, v26, 0x18

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 88
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    move/from16 v26, v0

    shr-int/lit8 v26, v26, 0x10

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 89
    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    move/from16 v26, v0

    shr-int/lit8 v26, v26, 0x8

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 90
    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 91
    const/16 v25, 0x4

    shr-int/lit8 v26, v5, 0x8

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 92
    const/16 v25, 0x5

    and-int/lit16 v0, v5, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 93
    const/16 v25, 0x6

    shr-int/lit8 v26, v16, 0x8

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 94
    const/16 v25, 0x7

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 95
    const/16 v25, 0x8

    const/16 v26, 0x8

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 96
    const/16 v25, 0x9

    const/16 v26, 0x0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v22, v25

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    const v26, 0x13881

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/hw/bledevice/BraceletOldDevice;->pareseCmdResponseType:I

    .line 98
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 99
    const/4 v7, 0x0

    .line 100
    .local v7, "i":I
    :goto_1
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v7, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x11

    invoke-static/range {v28 .. v28}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    aput-object v22, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->createCmdArrayOfByte([Ljava/lang/Object;)[B

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    .line 102
    const-string v25, "updatecmd is "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->sendCmdToBleDevice([B)V

    .line 105
    const-string v25, "wait for device response  update cmd"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 106
    const/16 v25, 0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->waitResponse(I)Z

    .line 107
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 109
    :cond_1
    const/16 v25, 0x3

    move/from16 v0, v25

    if-lt v7, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    .line 110
    const-string v25, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u5347\u7ea7\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 112
    monitor-exit p0

    goto/16 :goto_0

    .line 349
    .end local v3    # "canUpgrade":Z
    .end local v5    # "fileCrc":I
    .end local v7    # "i":I
    .end local v16    # "packageLenth":I
    .end local v22    # "startUpdateParmasArray":[B
    .end local v23    # "timeOut":I
    .end local v24    # "timesOfRetransfer":I
    :catchall_0
    move-exception v25

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 114
    .restart local v3    # "canUpgrade":Z
    .restart local v5    # "fileCrc":I
    .restart local v7    # "i":I
    .restart local v16    # "packageLenth":I
    .restart local v22    # "startUpdateParmasArray":[B
    .restart local v23    # "timeOut":I
    .restart local v24    # "timesOfRetransfer":I
    :cond_2
    const/4 v3, 0x1

    .line 117
    if-eqz v3, :cond_1b

    .line 118
    :try_start_1
    const-string v25, "device response  update cmd can startUpgrade..."

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnStartMessage(Ljava/lang/Object;)V

    .line 120
    const/16 v17, 0x0

    .line 121
    .local v17, "packageSequenceNumber":I
    const/4 v12, 0x0

    .local v12, "m":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalPackageNumber:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v12, v0, :cond_1a

    .line 122
    const/4 v9, 0x1

    .line 123
    .local v9, "isStartDataNumber":Z
    const/4 v8, 0x0

    .line 124
    .local v8, "isEndDataNumber":Z
    const/4 v13, 0x0

    .line 125
    .local v13, "mIsLastPackage":Z
    const/4 v15, 0x1

    .line 126
    .local v15, "num":B
    const/4 v6, 0x0

    .line 127
    .local v6, "fileReadOffset":I
    move/from16 v17, v12

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->clearUpgradeSendCmd()V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->clearNextPackageRequest()V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    const v26, 0x13882

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/hw/bledevice/BraceletOldDevice;->pareseCmdResponseType:I

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalPackageNumber:I

    move/from16 v25, v0

    sub-int v25, v25, v12

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 132
    const/4 v13, 0x1

    .line 133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x9

    if-lez v25, :cond_4

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x9

    rem-int/lit8 v25, v25, 0x11

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x9

    div-int/lit8 v25, v25, 0x11

    add-int/lit8 v25, v25, 0x2

    :goto_3
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalDataNumber:I

    .line 135
    const/16 v25, 0x9

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mStartDataLength:I

    .line 136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x9

    rem-int/lit8 v25, v25, 0x11

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndDataLength:I

    .line 143
    :goto_4
    const/4 v14, 0x0

    .local v14, "n":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_5

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mFirmwareBuffer:[B

    move-object/from16 v26, v0

    mul-int v27, v16, v12

    add-int v27, v27, v14

    aget-byte v26, v26, v27

    aput-byte v26, v25, v14

    .line 143
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 134
    .end local v14    # "n":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x9

    div-int/lit8 v25, v25, 0x11

    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 138
    :cond_4
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalDataNumber:I

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mStartDataLength:I

    .line 140
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndDataLength:I

    goto :goto_4

    .line 146
    .restart local v14    # "n":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndPackageLength:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->crc_ccitt([BI)I

    move-result v5

    .line 147
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

    .line 165
    :goto_6
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 167
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_10

    .line 168
    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v25, v0

    sub-int v25, v25, v10

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 169
    const/4 v15, -0x2

    .line 170
    const/4 v8, 0x1

    .line 177
    :cond_6
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->clearUpgradeSendCmd()V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aput-byte v15, v25, v26

    .line 180
    if-eqz v9, :cond_d

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x3

    shr-int/lit8 v27, v17, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x5

    shr-int/lit8 v27, v5, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x6

    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 186
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mStartDataLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_b

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v27, v0

    aget-byte v27, v27, v11

    aput-byte v27, v25, v26

    .line 186
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 150
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v14    # "n":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x9

    rem-int/lit8 v25, v25, 0x11

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x9

    div-int/lit8 v25, v25, 0x11

    add-int/lit8 v25, v25, 0x2

    :goto_a
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalDataNumber:I

    .line 152
    const/16 v25, 0x9

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mStartDataLength:I

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x9

    rem-int/lit8 v25, v25, 0x11

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndDataLength:I

    .line 155
    const/4 v14, 0x0

    .restart local v14    # "n":I
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_9

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mFirmwareBuffer:[B

    move-object/from16 v26, v0

    mul-int v27, v16, v12

    add-int v27, v27, v14

    aget-byte v26, v26, v27

    aput-byte v26, v25, v14

    .line 155
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 150
    .end local v14    # "n":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x9

    div-int/lit8 v25, v25, 0x11

    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    .line 158
    .restart local v14    # "n":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->crc_ccitt([BI)I

    move-result v5

    goto/16 :goto_6

    .line 172
    .restart local v10    # "j":I
    :cond_a
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v25, v0

    sub-int v25, v25, v10

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 173
    const/4 v15, -0x1

    .line 174
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

    .line 175
    const/4 v8, 0x1

    goto/16 :goto_8

    .line 190
    .restart local v11    # "k":I
    :cond_b
    const/4 v9, 0x0

    .line 205
    :cond_c
    :goto_c
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->sendCmdToBleDevice([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    const-wide/16 v25, 0x32

    :try_start_2
    invoke-static/range {v25 .. v26}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :goto_d
    add-int/lit8 v25, v15, 0x1

    move/from16 v0, v25

    int-to-byte v15, v0

    .line 167
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    .line 191
    .end local v11    # "k":I
    :cond_d
    if-eqz v8, :cond_f

    .line 192
    add-int/lit8 v25, v10, -0x1

    mul-int/lit8 v25, v25, 0x11

    add-int/lit8 v6, v25, 0x9

    .line 193
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_e
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndDataLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_e

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v27, v0

    add-int v28, v11, v6

    aget-byte v27, v27, v28

    aput-byte v27, v25, v26

    .line 193
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 197
    :cond_e
    const/4 v8, 0x0

    goto :goto_c

    .line 199
    .end local v11    # "k":I
    :cond_f
    add-int/lit8 v25, v10, -0x1

    mul-int/lit8 v25, v25, 0x11

    add-int/lit8 v6, v25, 0x9

    .line 200
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->TRANSFER_PACKAGE_DATA_LENGTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_c

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v27, v0

    add-int v28, v11, v6

    aget-byte v27, v27, v28

    aput-byte v27, v25, v26

    .line 200
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 210
    :catch_0
    move-exception v4

    .line 211
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_d

    .line 219
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "k":I
    :cond_10
    const/16 v25, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->waitResponse(I)Z

    .line 220
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    move/from16 v25, v0

    if-eqz v25, :cond_12

    .line 221
    const-string v25, "send data respond ok!!!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 230
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->getReTransferDataFlag()Z

    move-result v25

    if-eqz v25, :cond_18

    .line 234
    const/16 v19, 0x0

    .line 235
    .local v19, "reTotalDataNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->getRetransData()I

    move-result v19

    .line 236
    const/16 v20, 0x0

    .line 237
    .local v20, "renum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v26, v0

    const v26, 0x13882

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/hw/bledevice/BraceletOldDevice;->pareseCmdResponseType:I

    .line 238
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 239
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "reSend data reTotalDataNumber:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 240
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "data num:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalDataNumber:I

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

    .line 242
    const/4 v10, 0x0

    :goto_11
    move/from16 v0, v19

    if-ge v10, v0, :cond_16

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/veclink/hw/bledevice/BraceletOldDevice;->mRetransData:[I

    move-object/from16 v25, v0

    aget v20, v25, v10

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->clearUpgradeSendCmd()V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 249
    const/16 v25, -0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 250
    const-string v25, "cma---*****"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 281
    :cond_11
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->sendCmdToBleDevice([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    const-wide/16 v25, 0x32

    :try_start_4
    invoke-static/range {v25 .. v26}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 223
    .end local v19    # "reTotalDataNumber":I
    .end local v20    # "renum":I
    :cond_12
    :try_start_5
    const-string v25, "send data respond timeout!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 224
    const-string v25, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u5347\u7ea7\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 226
    monitor-exit p0

    goto/16 :goto_0

    .line 251
    .restart local v19    # "reTotalDataNumber":I
    .restart local v20    # "renum":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v25, v0

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 253
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

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

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x2

    const/16 v27, -0x2

    aput-byte v27, v25, v26

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalDataNumber:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x2

    mul-int/lit8 v25, v25, 0x11

    add-int/lit8 v6, v25, 0x9

    .line 256
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndDataLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_16

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v27, v0

    add-int v28, v11, v6

    aget-byte v27, v27, v28

    aput-byte v27, v25, v26

    .line 256
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 261
    .end local v11    # "k":I
    :cond_14
    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 263
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

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

    .line 264
    const/4 v6, 0x0

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x3

    shr-int/lit8 v27, v17, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x5

    shr-int/lit8 v27, v5, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    const/16 v26, 0x6

    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v25, v26

    .line 269
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mStartDataLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_11

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v27, v0

    aget-byte v27, v27, v11

    aput-byte v27, v25, v26

    .line 269
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 275
    .end local v11    # "k":I
    :cond_15
    add-int/lit8 v25, v20, -0x2

    mul-int/lit8 v25, v25, 0x11

    add-int/lit8 v6, v25, 0x9

    .line 276
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->TRANSFER_PACKAGE_DATA_LENGTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_11

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mSendCmd:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v11, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mPackageBuffer:[B

    move-object/from16 v27, v0

    add-int v28, v11, v6

    aget-byte v27, v27, v28

    aput-byte v27, v25, v26

    .line 276
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 286
    .end local v11    # "k":I
    :catch_1
    move-exception v4

    .line 287
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_12

    .line 291
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_16
    const-wide/16 v25, 0x1f4

    :try_start_6
    invoke-static/range {v25 .. v26}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 296
    :goto_16
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    .line 297
    const-string v25, "retransfer respond ok!!!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 292
    :catch_2
    move-exception v4

    .line 293
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_16

    .line 299
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_17
    const-string v25, "retransfer respond timeout!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 300
    monitor-exit p0

    goto/16 :goto_0

    .line 303
    .end local v19    # "reTotalDataNumber":I
    .end local v20    # "renum":I
    :cond_18
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v26, v0

    const v26, 0x13883

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/hw/bledevice/BraceletOldDevice;->pareseCmdResponseType:I

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->clearUpgradeSendCmd()V

    .line 306
    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v2, v0, [B

    .line 307
    .local v2, "affirm":[B
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v26, v0

    const/16 v26, 0x5a

    aput-byte v26, v2, v25

    .line 308
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v26, v0

    const/16 v26, 0x12

    aput-byte v26, v2, v25

    .line 309
    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v26, v0

    const/16 v26, 0x0

    aput-byte v26, v2, v25

    .line 310
    const/16 v25, 0x3

    shr-int/lit8 v26, v17, 0x8

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v2, v25

    .line 311
    const/16 v25, 0x4

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v2, v25

    .line 312
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalPackageNumber:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    const/high16 v26, 0x42c80000    # 100.0f

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v18, v0

    .line 313
    .local v18, "progress":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "send packagert and persent is:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 316
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->sendCmdToBleDevice([B)V

    .line 317
    const/16 v25, 0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->waitResponse(I)Z

    .line 318
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1c

    .line 319
    const-string v25, "next package---respond ok!!!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 327
    :cond_19
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->getAllPackageReceivOver()Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 329
    const-string v25, "getAllPackageReceivOver ok!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    const/16 v26, 0x64

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 341
    .end local v2    # "affirm":[B
    .end local v6    # "fileReadOffset":I
    .end local v8    # "isEndDataNumber":Z
    .end local v9    # "isStartDataNumber":Z
    .end local v10    # "j":I
    .end local v13    # "mIsLastPackage":Z
    .end local v14    # "n":I
    .end local v15    # "num":B
    .end local v18    # "progress":I
    :cond_1a
    :goto_18
    const-string v25, "upgrade ok!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    const/16 v26, 0x64

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 343
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mDeviceRespondOk:Z

    .line 344
    const/16 v25, 0x1f4

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->waitResponse(I)Z

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->filePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 349
    .end local v12    # "m":I
    .end local v17    # "packageSequenceNumber":I
    :cond_1b
    monitor-exit p0

    goto/16 :goto_0

    .line 321
    .restart local v2    # "affirm":[B
    .restart local v6    # "fileReadOffset":I
    .restart local v8    # "isEndDataNumber":Z
    .restart local v9    # "isStartDataNumber":Z
    .restart local v10    # "j":I
    .restart local v12    # "m":I
    .restart local v13    # "mIsLastPackage":Z
    .restart local v14    # "n":I
    .restart local v15    # "num":B
    .restart local v17    # "packageSequenceNumber":I
    .restart local v18    # "progress":I
    :cond_1c
    if-nez v13, :cond_19

    .line 322
    const-string v25, "next package---respond error!"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    goto :goto_17

    .line 334
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->getNextPackageRequest()Z

    move-result v25

    if-nez v25, :cond_1e

    .line 336
    const-string v25, "getNextPackageRequest is false"

    invoke-static/range {v25 .. v25}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v25, v0

    const/16 v26, 0x64

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_18

    .line 121
    :cond_1e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2
.end method

.method protected parseData([B)I
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 431
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->oldBraceletProfile:Lcom/veclink/hw/bledevice/BraceletOldDevice;

    invoke-virtual {v0, p1}, Lcom/veclink/hw/bledevice/BraceletOldDevice;->parseUpdateResponseData([B)I

    move-result v0

    return v0
.end method

.method public readFirmwareFile(Ljava/lang/String;)Z
    .locals 8
    .param p1, "mUpgradeFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "len":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 365
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

    .line 404
    :cond_1
    :goto_0
    return v3

    .line 370
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mFileIn:Ljava/io/FileInputStream;

    .line 371
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mFileIn:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v4

    iput v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    :goto_1
    iget v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    if-lez v4, :cond_3

    .line 378
    iget v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mFirmwareBuffer:[B

    .line 382
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mFileIn:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mFirmwareBuffer:[B

    const/4 v6, 0x0

    iget v7, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 383
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 389
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mFileIn:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 394
    :goto_3
    iget v3, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    if-eq v2, v3, :cond_4

    .line 395
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

    .line 397
    :cond_4
    iget v3, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    :goto_4
    iput v3, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalPackageNumber:I

    .line 400
    iget v3, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mEndPackageLength:I

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTotalPackageNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mTotalPackageNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUpgradeFileLenth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

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

    .line 404
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 374
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 375
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 385
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 386
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 390
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 391
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 397
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    iget v3, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->mUpgradeFileLenth:I

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleOldUpdateFirmWareTask;->UPGRADE_DATA_PACKAGE_LENTH:I

    div-int/2addr v3, v4

    goto :goto_4
.end method

.class public abstract Lcom/veclink/hw/bledevice/BaseBleDevice;
.super Ljava/lang/Object;
.source "BaseBleDevice.java"


# static fields
.field public static final CMD_APP_SEND_UPDATE_DATA:B = 0x5t

.field public static final CMD_BACK_SEND_HEAD:B = 0x5bt

.field public static final CMD_QUERY_FIRMWARE_VERSION:B = 0x10t

.field public static final CMD_SEND_HEAD:B = 0x5at

.field public static final CMD_SEND_NEXT_PACKAGE:B = 0x6t

.field public static final CMD_SYNC_ALLSPORTDATA:B = 0x4t

.field public static final CMD_SYNC_PARAMS:B = 0x1t

.field public static final CMD_SYNC_TIMERANGE_SLEEPTDATA:B = 0x7t

.field public static final CMD_SYNC_TIMERANGE_SPORTDATA:B = 0x3t

.field public static final CMD_THIRD:B = 0x0t

.field public static final CMD_TIMERINTERVAL:B = 0x2t

.field public static final CMD_UPDATE_FIRMWARE_VERSION:B = 0x11t

.field public static final PACKAGE_HEAD_CMD_ERROR:I = -0x3e8

.field public static final PARSE_SUCCESS:I = 0x0

.field public static final SEND_START_UPGRADE_CMD:I = 0x13881

.field public static final SEND_UPGRADE_NEXT_PACKAGE_CMD:I = 0x13883

.field public static final SEND_UPGRADE_START_PACKAGE_CMD:I = 0x13882

.field public static ccitt_table:[I


# instance fields
.field public deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

.field public mAllDataOk:Z

.field public mAllPackageReceivOver:Z

.field public mContext:Landroid/content/Context;

.field public mLengthPackageSnArray:[B

.field public mNextPackageRequest:Z

.field public mOneDayDataOk:Z

.field public mPackageSn:I

.field public mReTransferDataFlag:Z

.field public mReceiveStaus:[B

.field public mRecordDataHour:[I

.field public mRecordDataMinute:[I

.field public mRequestNextPackage:Z

.field public mRetransData:[I

.field mSendPackageNum:I

.field public mStepDataDate:I

.field public mStepDataMonth:I

.field public mStepDataYear:I

.field public mStepTimeInterval:I

.field public mTmpSleepDataArrayOfByte:[B

.field public mTmpSleepDataArrayOfByteIndex:I

.field public mTmpSportDataArrayOfByte:[B

.field public mTmpSportDataArrayOfByteIndex:I

.field public mUpgradeState:I

.field public mttRetransData:[I

.field public oneDataRecordCount:I

.field public pareseCmdResponseType:I

.field public syncSleepDataResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/bracelet/bean/DeviceSleepData;",
            ">;"
        }
    .end annotation
.end field

.field public syncSportDataResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/bracelet/bean/DeviceSportData;",
            ">;"
        }
    .end annotation
.end field

.field public totalPackDataNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/veclink/hw/bledevice/BaseBleDevice;->ccitt_table:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1021
        0x2042
        0x3063
        0x4084
        0x50a5
        0x60c6
        0x70e7
        0x8108
        0x9129
        0xa14a
        0xb16b
        0xc18c
        0xd1ad
        0xe1ce
        0xf1ef
        0x1231
        0x210
        0x3273
        0x2252
        0x52b5
        0x4294
        0x72f7
        0x62d6
        0x9339
        0x8318
        0xb37b
        0xa35a
        0xd3bd
        0xc39c
        0xf3ff
        0xe3de
        0x2462
        0x3443
        0x420
        0x1401
        0x64e6
        0x74c7
        0x44a4
        0x5485
        0xa56a
        0xb54b
        0x8528
        0x9509
        0xe5ee
        0xf5cf
        0xc5ac
        0xd58d
        0x3653
        0x2672
        0x1611
        0x630
        0x76d7
        0x66f6
        0x5695
        0x46b4
        0xb75b
        0xa77a
        0x9719
        0x8738
        0xf7df
        0xe7fe
        0xd79d
        0xc7bc
        0x48c4
        0x58e5
        0x6886
        0x78a7
        0x840
        0x1861
        0x2802
        0x3823
        0xc9cc
        0xd9ed
        0xe98e
        0xf9af
        0x8948
        0x9969
        0xa90a
        0xb92b
        0x5af5
        0x4ad4
        0x7ab7
        0x6a96
        0x1a71
        0xa50
        0x3a33
        0x2a12
        0xdbfd
        0xcbdc
        0xfbbf
        0xeb9e
        0x9b79
        0x8b58
        0xbb3b
        0xab1a
        0x6ca6
        0x7c87
        0x4ce4
        0x5cc5
        0x2c22
        0x3c03
        0xc60
        0x1c41
        0xedae
        0xfd8f
        0xcdec
        0xddcd
        0xad2a
        0xbd0b
        0x8d68
        0x9d49
        0x7e97
        0x6eb6
        0x5ed5
        0x4ef4
        0x3e13
        0x2e32
        0x1e51
        0xe70
        0xff9f
        0xefbe
        0xdfdd
        0xcffc
        0xbf1b
        0xaf3a
        0x9f59
        0x8f78
        0x9188
        0x81a9
        0xb1ca
        0xa1eb
        0xd10c
        0xc12d
        0xf14e
        0xe16f
        0x1080
        0xa1
        0x30c2
        0x20e3
        0x5004
        0x4025
        0x7046
        0x6067
        0x83b9
        0x9398
        0xa3fb
        0xb3da
        0xc33d
        0xd31c
        0xe37f
        0xf35e
        0x2b1
        0x1290
        0x22f3
        0x32d2
        0x4235
        0x5214
        0x6277
        0x7256
        0xb5ea
        0xa5cb
        0x95a8
        0x8589
        0xf56e
        0xe54f
        0xd52c
        0xc50d
        0x34e2
        0x24c3
        0x14a0
        0x481
        0x7466
        0x6447
        0x5424
        0x4405
        0xa7db
        0xb7fa
        0x8799
        0x97b8
        0xe75f    # 8.3E-41f
        0xf77e
        0xc71d
        0xd73c
        0x26d3
        0x36f2
        0x691
        0x16b0
        0x6657
        0x7676
        0x4615
        0x5634
        0xd94c
        0xc96d
        0xf90e
        0xe92f
        0x99c8
        0x89e9
        0xb98a
        0xa9ab
        0x5844
        0x4865
        0x7806
        0x6827
        0x18c0
        0x8e1
        0x3882
        0x28a3
        0xcb7d
        0xdb5c
        0xeb3f
        0xfb1e
        0x8bf9
        0x9bd8
        0xabbb
        0xbb9a
        0x4a75
        0x5a54
        0x6a37
        0x7a16
        0xaf1
        0x1ad0
        0x2ab3
        0x3a92
        0xfd2e
        0xed0f
        0xdd6c
        0xcd4d
        0xbdaa
        0xad8b
        0x9de8
        0x8dc9
        0x7c26
        0x6c07
        0x5c64
        0x4c45
        0x3ca2
        0x2c83
        0x1ce0
        0xcc1
        0xef1f
        0xff3e
        0xcf5d
        0xdf7c
        0xaf9b
        0xbfba
        0x8fd9
        0x9ff8
        0x6e17
        0x7e36
        0x4e55
        0x5e74
        0x2e93
        0x3eb2
        0xed1
        0x1ef0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x5a0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x1e

    iput v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mStepTimeInterval:I

    .line 44
    const/16 v0, 0x30

    iput v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->oneDataRecordCount:I

    .line 49
    const/16 v0, 0xb40

    iget v1, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mStepTimeInterval:I

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mTmpSportDataArrayOfByte:[B

    .line 54
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mTmpSleepDataArrayOfByte:[B

    .line 59
    iget v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mStepTimeInterval:I

    div-int v0, v3, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRecordDataHour:[I

    .line 63
    iget v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mStepTimeInterval:I

    div-int v0, v3, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRecordDataMinute:[I

    .line 68
    iput v2, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mTmpSportDataArrayOfByteIndex:I

    .line 73
    iput v2, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mTmpSleepDataArrayOfByteIndex:I

    .line 77
    iput-boolean v2, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllDataOk:Z

    .line 81
    iput-boolean v2, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mOneDayDataOk:Z

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->totalPackDataNum:I

    .line 168
    iput v2, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mUpgradeState:I

    .line 172
    iput v2, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mSendPackageNum:I

    .line 176
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReceiveStaus:[B

    .line 180
    const/16 v0, 0x78

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    .line 181
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mttRetransData:[I

    .line 185
    iput-boolean v2, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRequestNextPackage:Z

    .line 189
    iput-boolean v2, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllPackageReceivOver:Z

    .line 193
    iput-boolean v2, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mNextPackageRequest:Z

    .line 198
    iput-boolean v2, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReTransferDataFlag:Z

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSportDataResult:Ljava/util/List;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->syncSleepDataResult:Ljava/util/List;

    .line 217
    new-instance v0, Lcom/veclink/bracelet/bean/DeviceInfo;

    invoke-direct {v0}, Lcom/veclink/bracelet/bean/DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    return-void

    .line 181
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
    .end array-data
.end method


# virtual methods
.method public clearNextPackageRequest()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mNextPackageRequest:Z

    .line 344
    return-void
.end method

.method public convertRetransDataPackageNum()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 307
    const/4 v2, 0x0

    .line 308
    .local v2, "k":I
    const/16 v3, 0x78

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    .line 309
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v3, 0xf

    if-ge v1, v3, :cond_2

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReceiveStaus:[B

    aget-byte v3, v3, v1

    shl-int v4, v6, v0

    and-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_0

    .line 312
    iget-object v3, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 313
    add-int/lit8 v2, v2, 0x1

    .line 314
    iput-boolean v6, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReTransferDataFlag:Z

    .line 310
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public crc_ccitt([BI)I
    .locals 6
    .param p1, "q"    # [B
    .param p2, "len"    # I

    .prologue
    const v5, 0xffff

    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, "crc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 284
    sget-object v2, Lcom/veclink/hw/bledevice/BaseBleDevice;->ccitt_table:[I

    and-int v3, v0, v5

    shr-int/lit8 v3, v3, 0x8

    aget-byte v4, p1, v1

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    and-int/2addr v2, v5

    and-int v3, v0, v5

    shl-int/lit8 v3, v3, 0x8

    xor-int v0, v2, v3

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v2, v5

    return v2
.end method

.method public varargs abstract createCmdArrayOfByte([Ljava/lang/Object;)[B
.end method

.method public getAllPackageReceivOver()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllPackageReceivOver:Z

    return v0
.end method

.method public getNextPackageRequest()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mNextPackageRequest:Z

    return v0
.end method

.method public getReTransferDataFlag()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReTransferDataFlag:Z

    return v0
.end method

.method public getRetransData()I
    .locals 4

    .prologue
    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, "renum":I
    iget-object v3, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    array-length v1, v3

    .line 324
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 325
    iget-object v3, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    aget v3, v3, v0

    if-eqz v3, :cond_0

    .line 326
    add-int/lit8 v2, v2, 0x1

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    return v2
.end method

.method public getSendPackageNum()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mSendPackageNum:I

    return v0
.end method

.method public abstract pareseQueryFirmwareVersionResponse([B)I
.end method

.method public abstract parseSetTimeIntervalRespone([B)I
.end method

.method public abstract parseSportData([B)Ljava/lang/Object;
.end method

.method public abstract parseSyncParamsResponse([B)I
.end method

.method public abstract parseUpdateResponseData([B)I
.end method

.method public reSetReceiveStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReceiveStaus:[B

    .line 265
    const/16 v0, 0x78

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRetransData:[I

    .line 266
    iput v1, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mSendPackageNum:I

    .line 267
    iput-boolean v1, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mRequestNextPackage:Z

    .line 268
    iput-boolean v1, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllPackageReceivOver:Z

    .line 269
    iput-boolean v1, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mNextPackageRequest:Z

    .line 270
    iput-boolean v1, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mReTransferDataFlag:Z

    .line 271
    iput v1, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mTmpSportDataArrayOfByteIndex:I

    .line 272
    iput v1, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mTmpSleepDataArrayOfByteIndex:I

    .line 273
    iput-boolean v1, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mAllDataOk:Z

    .line 274
    iput-boolean v1, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mOneDayDataOk:Z

    .line 275
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/hw/bledevice/BaseBleDevice;->mLengthPackageSnArray:[B

    .line 277
    return-void
.end method

.class public Lcom/veclink/bracelet/bletask/BleSyncParamsTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleSyncParamsTask.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field date:Ljava/sql/Date;

.field syncparamsArray:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 36
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 37
    .local v6, "t":Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 38
    iget v5, v6, Landroid/text/format/Time;->year:I

    .line 39
    .local v5, "systemYear":I
    iget v7, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v7, 0x1

    .line 40
    .local v3, "systemMonth":I
    iget v0, v6, Landroid/text/format/Time;->monthDay:I

    .line 41
    .local v0, "systemDate":I
    iget v1, v6, Landroid/text/format/Time;->hour:I

    .line 42
    .local v1, "systemHour":I
    iget v2, v6, Landroid/text/format/Time;->minute:I

    .line 43
    .local v2, "systemMinute":I
    iget v4, v6, Landroid/text/format/Time;->second:I

    .line 44
    .local v4, "systemSecond":I
    const/16 v7, 0x14

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    .line 45
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v8, 0x5a

    aput-byte v8, v7, v9

    .line 46
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    aput-byte v10, v7, v10

    .line 47
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x2

    aput-byte v9, v7, v8

    .line 48
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x3

    add-int/lit16 v9, v5, -0x7d0

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 49
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x4

    int-to-byte v9, v3

    aput-byte v9, v7, v8

    .line 50
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x5

    int-to-byte v9, v0

    aput-byte v9, v7, v8

    .line 51
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x6

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    .line 52
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x7

    int-to-byte v9, v2

    aput-byte v9, v7, v8

    .line 53
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v8, 0x8

    int-to-byte v9, v4

    aput-byte v9, v7, v8

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;III)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "targetStepNumber"    # I
    .param p4, "wearPosition"    # I
    .param p5, "motionMode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 67
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 68
    .local v6, "t":Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 69
    iget v5, v6, Landroid/text/format/Time;->year:I

    .line 70
    .local v5, "systemYear":I
    iget v7, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v7, 0x1

    .line 71
    .local v3, "systemMonth":I
    iget v0, v6, Landroid/text/format/Time;->monthDay:I

    .line 72
    .local v0, "systemDate":I
    iget v1, v6, Landroid/text/format/Time;->hour:I

    .line 73
    .local v1, "systemHour":I
    iget v2, v6, Landroid/text/format/Time;->minute:I

    .line 74
    .local v2, "systemMinute":I
    iget v4, v6, Landroid/text/format/Time;->second:I

    .line 75
    .local v4, "systemSecond":I
    const/16 v7, 0x14

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    .line 76
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x0

    const/16 v9, 0x5a

    aput-byte v9, v7, v8

    .line 77
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x1

    const/4 v9, 0x1

    aput-byte v9, v7, v8

    .line 78
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-byte v9, v7, v8

    .line 79
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x3

    add-int/lit16 v9, v5, -0x7d0

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 80
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x4

    int-to-byte v9, v3

    aput-byte v9, v7, v8

    .line 81
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x5

    int-to-byte v9, v0

    aput-byte v9, v7, v8

    .line 82
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x6

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    .line 83
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v8, 0x7

    int-to-byte v9, v2

    aput-byte v9, v7, v8

    .line 84
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v8, 0x8

    int-to-byte v9, v4

    aput-byte v9, v7, v8

    .line 85
    div-int/lit8 p3, p3, 0x64

    .line 86
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v8, 0x9

    shr-int/lit8 v9, p3, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 87
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v8, 0xa

    and-int/lit16 v9, p3, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 88
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v8, 0xb

    int-to-byte v9, p4

    aput-byte v9, v7, v8

    .line 89
    iget-object v7, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v8, 0xc

    int-to-byte v9, p5

    aput-byte v9, v7, v8

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Lcom/veclink/bracelet/bean/BleUserInfoBean;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "userInfoBean"    # Lcom/veclink/bracelet/bean/BleUserInfoBean;

    .prologue
    .line 93
    invoke-direct/range {p0 .. p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 94
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 95
    .local v11, "t":Landroid/text/format/Time;
    invoke-virtual {v11}, Landroid/text/format/Time;->setToNow()V

    .line 96
    iget v10, v11, Landroid/text/format/Time;->year:I

    .line 97
    .local v10, "systemYear":I
    iget v12, v11, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v12, 0x1

    .line 98
    .local v8, "systemMonth":I
    iget v5, v11, Landroid/text/format/Time;->monthDay:I

    .line 99
    .local v5, "systemDate":I
    iget v6, v11, Landroid/text/format/Time;->hour:I

    .line 100
    .local v6, "systemHour":I
    iget v7, v11, Landroid/text/format/Time;->minute:I

    .line 101
    .local v7, "systemMinute":I
    iget v9, v11, Landroid/text/format/Time;->second:I

    .line 103
    .local v9, "systemSecond":I
    const/16 v12, 0x14

    new-array v12, v12, [B

    iput-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    .line 104
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v13, 0x0

    const/16 v14, 0x5a

    aput-byte v14, v12, v13

    .line 105
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v13, 0x1

    const/4 v14, 0x1

    aput-byte v14, v12, v13

    .line 106
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput-byte v14, v12, v13

    .line 107
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v13, 0x3

    add-int/lit16 v14, v10, -0x7d0

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 108
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v13, 0x4

    int-to-byte v14, v8

    aput-byte v14, v12, v13

    .line 109
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v13, 0x5

    int-to-byte v14, v5

    aput-byte v14, v12, v13

    .line 110
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v13, 0x6

    int-to-byte v14, v6

    aput-byte v14, v12, v13

    .line 111
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/4 v13, 0x7

    int-to-byte v14, v7

    aput-byte v14, v12, v13

    .line 112
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v13, 0x8

    int-to-byte v14, v9

    aput-byte v14, v12, v13

    .line 113
    move-object/from16 v0, p3

    iget v12, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->targetStepNumber:I

    div-int/lit8 v12, v12, 0x64

    move-object/from16 v0, p3

    iput v12, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->targetStepNumber:I

    .line 114
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v13, 0x9

    move-object/from16 v0, p3

    iget v14, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->targetStepNumber:I

    shr-int/lit8 v14, v14, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 115
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v13, 0xa

    move-object/from16 v0, p3

    iget v14, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->targetStepNumber:I

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 116
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v13, 0xb

    move-object/from16 v0, p3

    iget v14, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->wearPosition:I

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 117
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v13, 0xc

    move-object/from16 v0, p3

    iget v14, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->motionMode:I

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 118
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget v13, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->sex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    iget v13, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->age:I

    invoke-static {v13}, Lcom/veclink/hw/bleservice/util/ByteUtil;->ageChangeToBinaryString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "ageSexString":Ljava/lang/String;
    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/ByteUtil;->decodeBinaryStringToBit(Ljava/lang/String;)B

    move-result v1

    .line 120
    .local v1, "ageSexByte":B
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v13, 0xe

    const/4 v14, 0x0

    aput-byte v14, v12, v13

    .line 121
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v13, 0xf

    const/4 v14, 0x2

    aput-byte v14, v12, v13

    .line 122
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v13, 0x10

    aput-byte v1, v12, v13

    .line 123
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v13, 0x11

    move-object/from16 v0, p3

    iget v14, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->weight:F

    float-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 124
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v13, 0x12

    move-object/from16 v0, p3

    iget v14, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->height:F

    float-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 125
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    iget v13, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->distanceUnit:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    iget v13, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->keptOnOff:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    iget v13, v0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->keptOnOff:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "0000"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "funtionByteString":Ljava/lang/String;
    invoke-static {v4}, Lcom/veclink/hw/bleservice/util/ByteUtil;->decodeBinaryStringToBit(Ljava/lang/String;)B

    move-result v3

    .line 127
    .local v3, "funtionByte":B
    iget-object v12, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    const/16 v13, 0x13

    aput-byte v3, v12, v13

    .line 128
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->mDeviceRespondOk:Z

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u540c\u6b65\u53c2\u6570\u6307\u4ee4\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->syncparamsArray:[B

    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->sendCmdToBleDevice([B)V

    .line 135
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->waitResponse(I)Z

    .line 136
    const-string v0, "sync wait for device response syncparams cmd"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 137
    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->mDeviceRespondOk:Z

    if-nez v0, :cond_0

    .line 138
    const-string v0, "\u8bbe\u5907\u65e0\u76f8\u5e94\uff0c\u540c\u6b65\u53c2\u6570\u4efb\u52a1\u6267\u884c\u5931\u8d25"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v1, -0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v0, "\u540c\u6b65\u53c2\u6570\u4efb\u52a1\u6267\u884c\u6210\u529f"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    iget-object v1, v1, Lcom/veclink/hw/bledevice/BaseBleDevice;->deviceInfo:Lcom/veclink/bracelet/bean/DeviceInfo;

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 2
    .param p1, "byteArray"    # [B

    .prologue
    .line 148
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    invoke-virtual {v1, p1}, Lcom/veclink/hw/bledevice/BaseBleDevice;->parseSyncParamsResponse([B)I

    move-result v0

    .line 149
    .local v0, "result":I
    return v0
.end method

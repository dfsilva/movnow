.class public Lcom/veclink/watercup/bletask/BleCorrectParamsTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleCorrectParamsTask.java"


# static fields
.field public static final SET_CORRECT_VALUE:B = 0x1t

.field public static final SET_SAMPLE_TO＿ZERO:B = 0x10t

.field public static final START_CORRECT:B


# instance fields
.field public final SET_CURRENT_SAMPLE_VALUE:B

.field private correctCmdArray:[B

.field private correctType:B

.field private isCorrectZero:Z

.field private mainParams:I

.field private mainParams2:I

.field private mainParams3:I

.field private mainParamsIndex:I

.field private operationstep:B

.field private resultArray:[B

.field private startCorrect:Z

.field private waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;BI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "correctType"    # B
    .param p4, "mainParams"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 25
    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->SET_CURRENT_SAMPLE_VALUE:B

    .line 32
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    .line 44
    iput p4, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mainParams:I

    .line 45
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/WaterCupDevice;

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    .line 46
    iput-byte p3, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctType:B

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;BII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "correctType"    # B
    .param p4, "mainParams"    # I
    .param p5, "mainParamsIndex"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 25
    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->SET_CURRENT_SAMPLE_VALUE:B

    .line 32
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    .line 68
    iput p4, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mainParams:I

    .line 69
    iput p5, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mainParamsIndex:I

    .line 70
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/WaterCupDevice;

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    .line 71
    iput-byte p3, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctType:B

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;BLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "correctType"    # B
    .param p4, "startCorrect"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 25
    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->SET_CURRENT_SAMPLE_VALUE:B

    .line 32
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    .line 83
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/WaterCupDevice;

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    .line 84
    iput-byte p3, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctType:B

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->startCorrect:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;BZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "correctType"    # B
    .param p4, "isCorrectZero"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 25
    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->SET_CURRENT_SAMPLE_VALUE:B

    .line 32
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    .line 76
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    check-cast v0, Lcom/veclink/hw/bledevice/WaterCupDevice;

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    .line 77
    iput-byte p3, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctType:B

    .line 78
    iput-boolean p4, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->isCorrectZero:Z

    .line 79
    return-void
.end method

.method private correctOffSetZero()V
    .locals 5

    .prologue
    const/16 v4, 0x1388

    const/4 v3, 0x0

    .line 142
    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    .line 143
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    iget-byte v1, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctType:B

    iget-byte v2, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    invoke-virtual {v0, v1, v2}, Lcom/veclink/hw/bledevice/WaterCupDevice;->createCorrectOffsetZeroParamsCmd(BB)[B

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    .line 144
    iput-boolean v3, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    .line 145
    invoke-virtual {p0, v4}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waitResponse(I)Z

    .line 146
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    invoke-virtual {p0, v0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->sendCmdToBleDevice([B)V

    .line 147
    invoke-virtual {p0, v4}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waitResponse(I)Z

    .line 148
    iget-boolean v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private correctTemp()V
    .locals 5

    .prologue
    const/16 v4, 0x1388

    const/4 v3, 0x0

    .line 213
    iput-byte v3, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    .line 214
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    iget-byte v1, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctType:B

    iget-byte v2, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    invoke-virtual {v0, v1, v2, v3}, Lcom/veclink/hw/bledevice/WaterCupDevice;->createCorrectParamsCmd(BBI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    .line 215
    iput-boolean v3, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    .line 216
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    invoke-virtual {p0, v0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->sendCmdToBleDevice([B)V

    .line 217
    invoke-virtual {p0, v4}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waitResponse(I)Z

    .line 218
    iget-boolean v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    if-eqz v0, :cond_1

    .line 219
    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    .line 220
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    iget v1, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mainParamsIndex:I

    iget v2, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mainParams:I

    invoke-virtual {v0, v1, v2}, Lcom/veclink/hw/bledevice/WaterCupDevice;->createCorrectTempParamsCmd(II)[B

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    .line 221
    iput-boolean v3, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    .line 222
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    invoke-virtual {p0, v0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->sendCmdToBleDevice([B)V

    .line 223
    invoke-virtual {p0, v4}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waitResponse(I)Z

    .line 224
    iget-boolean v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 233
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private correctWeight()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 158
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    .line 159
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    iget-byte v1, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctType:B

    iget-byte v2, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    iget v3, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mainParams:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/veclink/hw/bledevice/WaterCupDevice;->createCorrectParamsCmd(BBI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    .line 160
    iput-boolean v4, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    .line 161
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    invoke-virtual {p0, v0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->sendCmdToBleDevice([B)V

    .line 162
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waitResponse(I)Z

    .line 163
    iget-boolean v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private correctZero()V
    .locals 6

    .prologue
    const/16 v5, 0x1388

    const/4 v4, 0x0

    .line 126
    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    .line 127
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    iget-byte v1, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctType:B

    iget-byte v2, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/veclink/hw/bledevice/WaterCupDevice;->createCorrectParamsCmd(BBI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    .line 128
    iput-boolean v4, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    .line 129
    invoke-virtual {p0, v5}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waitResponse(I)Z

    .line 130
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    invoke-virtual {p0, v0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->sendCmdToBleDevice([B)V

    .line 131
    invoke-virtual {p0, v5}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waitResponse(I)Z

    .line 132
    iget-boolean v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startCorrect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iput-byte v3, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    .line 111
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    iget-byte v1, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctType:B

    iget-byte v2, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->operationstep:B

    invoke-virtual {v0, v1, v2, v3}, Lcom/veclink/hw/bledevice/WaterCupDevice;->createCorrectParamsCmd(BBI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    .line 112
    iput-boolean v3, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    .line 113
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctCmdArray:[B

    invoke-virtual {p0, v0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->sendCmdToBleDevice([B)V

    .line 114
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waitResponse(I)Z

    .line 115
    iget-boolean v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->mDeviceRespondOk:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public doWork()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->startCorrect:Z

    if-eqz v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->startCorrect()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-boolean v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->isCorrectZero:Z

    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctOffSetZero()V

    goto :goto_0

    .line 98
    :cond_2
    iget-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctWeight()V

    goto :goto_0

    .line 100
    :cond_3
    iget-byte v0, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->correctTemp()V

    goto :goto_0
.end method

.method protected parseData([B)I
    .locals 4
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 245
    array-length v1, p1

    if-lt v1, v3, :cond_0

    aget-byte v1, p1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    iget-object v2, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->waterCupDevice:Lcom/veclink/hw/bledevice/WaterCupDevice;

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    .line 246
    aget-byte v1, p1, v3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 247
    iput-object p1, p0, Lcom/veclink/watercup/bletask/BleCorrectParamsTask;->resultArray:[B

    .line 252
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x63

    goto :goto_0
.end method

.method public sendCmdToBleDevice([B)V
    .locals 2
    .param p1, "cmdParamArrayOfByte"    # [B

    .prologue
    .line 239
    const-string v0, "BleCorrectParamsTask"

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-super {p0, p1}, Lcom/veclink/bracelet/bletask/BleTask;->sendCmdToBleDevice([B)V

    .line 241
    return-void
.end method

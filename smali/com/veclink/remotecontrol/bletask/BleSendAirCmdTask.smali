.class public Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "BleSendAirCmdTask.java"


# instance fields
.field private defaultByteSize:I

.field private firstByte:[B

.field private final headone:B

.field private final headtwo:B

.field isReSend:Z

.field mRetransData:[I

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private receiveByte:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;[B)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "receiveByte"    # [B

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 24
    const/16 v0, 0x30

    iput-byte v0, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->headone:B

    .line 26
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->headtwo:B

    .line 28
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    .line 32
    const/16 v0, 0x11

    iput v0, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->defaultByteSize:I

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->map:Ljava/util/Map;

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->isReSend:Z

    .line 47
    iput-object p3, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    .line 48
    return-void
.end method

.method public static byteMerger([B[B)[B
    .locals 4
    .param p0, "byte_1"    # [B
    .param p1, "byte_2"    # [B

    .prologue
    const/4 v3, 0x0

    .line 187
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 188
    .local v0, "byte_3":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    return-object v0
.end method


# virtual methods
.method public convertRetransDataPackageNum([B)V
    .locals 7
    .param p1, "mReceiveStaus"    # [B

    .prologue
    const/4 v6, 0x1

    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, "k":I
    const/16 v3, 0x78

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->mRetransData:[I

    .line 209
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v3, 0xf

    if-ge v1, v3, :cond_2

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 211
    add-int/lit8 v3, v1, 0x5

    aget-byte v3, p1, v3

    shl-int v4, v6, v0

    and-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->mRetransData:[I

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 213
    add-int/lit8 v2, v2, 0x1

    .line 214
    iput-boolean v6, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->isReSend:Z

    .line 215
    const-string v3, "lzf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isReSend="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->isReSend:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public doSendLongByte()V
    .locals 26

    .prologue
    .line 77
    const/4 v11, 0x0

    .local v11, "j":I
    const/4 v5, 0x0

    .line 79
    .local v5, "b":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v3, v0, [B

    .line 80
    .local v3, "allByte":[B
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .local v12, "j":I
    const/16 v22, 0x30

    aput-byte v22, v3, v11

    .line 81
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    const/16 v22, 0x1

    aput-byte v22, v3, v12

    .line 83
    const/4 v6, 0x0

    .line 84
    .local v6, "checksum":B
    const/16 v22, 0x30

    move/from16 v0, v22

    int-to-byte v6, v0

    .line 85
    add-int/lit8 v22, v6, 0x1

    move/from16 v0, v22

    int-to-byte v6, v0

    .line 86
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_0

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v10

    add-int v22, v22, v6

    move/from16 v0, v22

    int-to-byte v6, v0

    .line 88
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v10

    aput-byte v22, v3, v11

    .line 86
    add-int/lit8 v10, v10, 0x1

    move v11, v12

    .end local v12    # "j":I
    .restart local v11    # "j":I
    goto :goto_0

    .line 90
    :cond_0
    add-int/lit8 v22, v6, -0x1

    move/from16 v0, v22

    int-to-byte v6, v0

    .line 91
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    const/16 v22, -0x1

    aput-byte v22, v3, v11

    .line 92
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    aput-byte v6, v3, v12

    .line 95
    const/4 v11, 0x0

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    const/16 v23, 0x5a

    aput-byte v23, v22, v11

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    const/16 v23, 0x20

    aput-byte v23, v22, v12

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    add-int/lit8 v5, v5, 0x1

    int-to-byte v0, v5

    move/from16 v23, v0

    aput-byte v23, v22, v11

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v15, v0

    .line 101
    .local v15, "len":I
    const-string v22, "-- lzf \u5305\u957f\u5ea6:"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    const v23, 0xff00

    and-int v23, v23, v15

    shr-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v12

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    and-int/lit16 v0, v15, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v11

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    const/16 v23, 0x0

    aput-byte v23, v22, v12

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    const/16 v23, 0x0

    aput-byte v23, v22, v11

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->bleDeviceProfile:Lcom/veclink/hw/bledevice/BaseBleDevice;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/veclink/hw/bledevice/BaseBleDevice;->crc_ccitt([BI)I

    move-result v9

    .line 110
    .local v9, "fileCrc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    const v23, 0xff00

    and-int v23, v23, v9

    shr-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v12

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    and-int/lit16 v0, v9, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v11

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    const/16 v23, 0x20

    aput-byte v23, v22, v12

    .line 115
    const-string v22, "-- lzf firstByte"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->firstByte:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->sendCmdToBleDevice([B)V

    .line 120
    array-length v4, v3

    .line 121
    .local v4, "arcLeng":I
    const/16 v17, 0x0

    .line 122
    .local v17, "remain":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->defaultByteSize:I

    move/from16 v22, v0

    div-int v13, v4, v22

    .line 123
    .local v13, "k":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->defaultByteSize:I

    move/from16 v22, v0

    rem-int v22, v4, v22

    if-eqz v22, :cond_1

    .line 124
    add-int/lit8 v13, v13, 0x1

    .line 125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->defaultByteSize:I

    move/from16 v22, v0

    rem-int v17, v4, v22

    .line 127
    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_4

    .line 128
    const/16 v18, 0x0

    .line 129
    .local v18, "sendByte":[B
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_2

    .line 130
    add-int/lit8 v22, v17, 0x3

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 131
    const/16 v22, 0x0

    const/16 v23, 0x5a

    aput-byte v23, v18, v22

    .line 132
    const/16 v22, 0x1

    const/16 v23, 0x20

    aput-byte v23, v18, v22

    .line 133
    const/16 v22, 0x2

    const/16 v23, -0x2

    aput-byte v23, v18, v22

    .line 140
    :goto_2
    const/16 v16, 0x0

    .line 141
    .local v16, "m":I
    const/4 v14, 0x3

    .local v14, "l":I
    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v14, v0, :cond_3

    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->defaultByteSize:I

    move/from16 v22, v0

    mul-int v22, v22, v10

    add-int v22, v22, v14

    add-int/lit8 v16, v22, -0x3

    .line 143
    aget-byte v22, v3, v16

    aput-byte v22, v18, v14

    .line 141
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 135
    .end local v14    # "l":I
    .end local v16    # "m":I
    :cond_2
    const/16 v22, 0x14

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 136
    const/16 v22, 0x0

    const/16 v23, 0x5a

    aput-byte v23, v18, v22

    .line 137
    const/16 v22, 0x1

    const/16 v23, 0x20

    aput-byte v23, v18, v22

    .line 138
    const/16 v22, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-byte v0, v5

    move/from16 v23, v0

    aput-byte v23, v18, v22

    goto :goto_2

    .line 145
    .restart local v14    # "l":I
    .restart local v16    # "m":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->map:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "-- lzf --\u5f53\u524d\u6b21\u6570i"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "--\u603b\u6b21\u6570k--"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v18 .. v18}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\u9996\u6b21\u53d1\u9001\u7684\u957f\u5305\u5206\u5305\u5305\u5b57\u8282\u7801\uff1a"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v18 .. v18}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->sendCmdToBleDevice([B)V

    .line 127
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 151
    .end local v14    # "l":I
    .end local v16    # "m":I
    .end local v18    # "sendByte":[B
    :cond_4
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->waitResponse(I)Z

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 153
    .local v19, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 154
    .local v7, "endTime":J
    :cond_5
    :goto_4
    sub-long v22, v7, v19

    const-wide/16 v24, 0xbb8

    cmp-long v22, v22, v24

    if-gez v22, :cond_9

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 156
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->mDeviceRespondOk:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 157
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->isReSend:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->getRetransData()I

    move-result v21

    .line 159
    .local v21, "totalReSendPac":I
    const/4 v10, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v10, v0, :cond_7

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->map:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->mRetransData:[I

    move-object/from16 v23, v0

    aget v23, v23, v10

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    .line 161
    .restart local v18    # "sendByte":[B
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\u91cd\u53d1\u53d1\u9001\u7684\u957f\u5305\u5206\u5305\u5305\u5b57\u8282\u7801\uff1a"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v18 .. v18}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    if-eqz v18, :cond_6

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->map:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->mRetransData:[I

    move-object/from16 v23, v0

    aget v23, v23, v10

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->sendCmdToBleDevice([B)V

    .line 159
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 166
    .end local v18    # "sendByte":[B
    :cond_7
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->waitResponse(I)Z

    goto/16 :goto_4

    .line 168
    .end local v21    # "totalReSendPac":I
    :cond_8
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v23, "\u53d1\u9001\u7a7a\u8c03\u7b80\u7801\u5b8c\u6210"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    :cond_9
    return-void
.end method

.method public doSendShortByte()V
    .locals 8

    .prologue
    const/16 v6, 0x30

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "j":I
    iget-object v5, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x4

    new-array v4, v5, [B

    .line 55
    .local v4, "shortByte":[B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    aput-byte v6, v4, v2

    .line 56
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    const/4 v5, 0x1

    aput-byte v5, v4, v3

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "checksum":B
    int-to-byte v0, v6

    .line 59
    add-int/lit8 v5, v0, 0x1

    int-to-byte v0, v5

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 62
    iget-object v5, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    aget-byte v5, v5, v1

    add-int/2addr v5, v0

    int-to-byte v0, v5

    .line 63
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    iget-object v5, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v2

    .line 61
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 65
    :cond_0
    add-int/lit8 v5, v0, -0x1

    int-to-byte v0, v5

    .line 66
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    const/4 v5, -0x1

    aput-byte v5, v4, v2

    .line 67
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aput-byte v0, v4, v3

    .line 68
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53d1\u9001\u7684\u77ed\u5305\u5b57\u8282\u7801\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v4}, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->sendCmdToBleDevice([B)V

    .line 70
    return-void
.end method

.method public doWork()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->receiveByte:[B

    array-length v0, v0

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->doSendShortByte()V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->doSendLongByte()V

    goto :goto_0
.end method

.method public getRetransData()I
    .locals 4

    .prologue
    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "renum":I
    iget-object v3, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->mRetransData:[I

    array-length v1, v3

    .line 224
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 225
    iget-object v3, p0, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->mRetransData:[I

    aget v3, v3, v0

    if-eqz v3, :cond_0

    .line 226
    add-int/lit8 v2, v2, 0x1

    .line 224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    return v2
.end method

.method protected parseData([B)I
    .locals 3
    .param p1, "byteArray"    # [B

    .prologue
    .line 196
    const-string v0, "lzf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u53d1\u8fd4\u56de\u8282\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0, p1}, Lcom/veclink/remotecontrol/bletask/BleSendAirCmdTask;->convertRetransDataPackageNum([B)V

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/quintic/libota/otaManager;
.super Ljava/lang/Object;
.source "otaManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mByteRate:I

.field mElapsedTime:I

.field mFilePath:Ljava/lang/String;

.field mOtaIntf:Lcom/quintic/libota/BluetoothLeInterface;

.field private final mPacketSize:I

.field private mPercent:I

.field mRetValue:Lcom/quintic/libota/bleGlobalVariables$otaResult;

.field private mShouldStop:Z

.field private mStartOffset:I

.field private final mTimeout:I

.field private semp:Ljava/util/concurrent/Semaphore;

.field updateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic $SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/quintic/libota/otaManager;->$SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->values()[Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_BRICK_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-virtual {v1}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_DATA_VERIFY:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-virtual {v1}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_EXECUTION_NEW_CODE:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-virtual {v1}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_META_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-virtual {v1}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/quintic/libota/otaManager;->$SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/quintic/libota/otaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/quintic/libota/otaManager;->mStartOffset:I

    .line 22
    iput v1, p0, Lcom/quintic/libota/otaManager;->mPercent:I

    .line 23
    iput-object v2, p0, Lcom/quintic/libota/otaManager;->semp:Ljava/util/concurrent/Semaphore;

    .line 24
    const/16 v0, 0xc

    iput v0, p0, Lcom/quintic/libota/otaManager;->mTimeout:I

    .line 25
    const/16 v0, 0x100

    iput v0, p0, Lcom/quintic/libota/otaManager;->mPacketSize:I

    .line 26
    iput-boolean v1, p0, Lcom/quintic/libota/otaManager;->mShouldStop:Z

    .line 27
    iput-object v2, p0, Lcom/quintic/libota/otaManager;->mFilePath:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/quintic/libota/otaManager;->mByteRate:I

    .line 29
    iput v1, p0, Lcom/quintic/libota/otaManager;->mElapsedTime:I

    .line 30
    sget-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SUCCESS:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    iput-object v0, p0, Lcom/quintic/libota/otaManager;->mRetValue:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 328
    new-instance v0, Lcom/quintic/libota/otaManager$1;

    invoke-direct {v0, p0}, Lcom/quintic/libota/otaManager$1;-><init>(Lcom/quintic/libota/otaManager;)V

    iput-object v0, p0, Lcom/quintic/libota/otaManager;->updateRunnable:Ljava/lang/Runnable;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/quintic/libota/otaManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/quintic/libota/otaManager;->otaUpdateProcess(Ljava/lang/String;)V

    return-void
.end method

.method private cmdToValue(Lcom/quintic/libota/bleGlobalVariables$otaCmd;)B
    .locals 2
    .param p1, "cmd"    # Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    .prologue
    .line 42
    invoke-static {}, Lcom/quintic/libota/otaManager;->$SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 44
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 46
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 47
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getOffset()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/quintic/libota/otaManager;->semp:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, v0}, Lcom/quintic/libota/otaManager;->waitSemaphore(Ljava/util/concurrent/Semaphore;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget v0, p0, Lcom/quintic/libota/otaManager;->mStartOffset:I

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private notifyReadDataCompleted()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/quintic/libota/otaManager;->semp:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, v0}, Lcom/quintic/libota/otaManager;->releaseSemaphore(Ljava/util/concurrent/Semaphore;)V

    .line 256
    return-void
.end method

.method private notifyVerifyCmdDone()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/quintic/libota/otaManager;->semp:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, v0}, Lcom/quintic/libota/otaManager;->releaseSemaphore(Ljava/util/concurrent/Semaphore;)V

    .line 240
    return-void
.end method

.method private otaSendBrickData(Ljava/io/FileInputStream;I)I
    .locals 6
    .param p1, "fin"    # Ljava/io/FileInputStream;
    .param p2, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v3, -0x1

    .line 163
    .local v3, "ret":I
    new-array v1, p2, [B

    .line 164
    .local v1, "data":[B
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 165
    if-gtz v3, :cond_1

    .line 167
    sget-object v4, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v5, "otaSendBrickData:No data read from file"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v3, -0x1

    .line 180
    .end local v3    # "ret":I
    :cond_0
    :goto_0
    return v3

    .line 170
    .restart local v3    # "ret":I
    :cond_1
    if-ge v3, p2, :cond_2

    .line 171
    move p2, v3

    .line 172
    :cond_2
    sget-object v4, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_BRICK_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-direct {p0, v4}, Lcom/quintic/libota/otaManager;->cmdToValue(Lcom/quintic/libota/bleGlobalVariables$otaCmd;)B

    move-result v0

    .line 173
    .local v0, "checksum":S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, p2, :cond_3

    .line 176
    sget-object v4, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_BRICK_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-direct {p0, v4, v0, v1, p2}, Lcom/quintic/libota/otaManager;->otaSendPacket(Lcom/quintic/libota/bleGlobalVariables$otaCmd;S[BI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    sget-object v4, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v5, "otaSendBrickData:failed to send packet"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v3, -0x2

    goto :goto_0

    .line 174
    :cond_3
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v0

    int-to-short v0, v4

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private otaSendMetaData(Ljava/io/FileInputStream;)I
    .locals 9
    .param p1, "fin"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 140
    const/4 v5, -0x1

    .line 142
    .local v5, "ret":I
    const/4 v7, 0x2

    new-array v4, v7, [B

    .line 144
    .local v4, "metaLen":[B
    invoke-virtual {p1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 145
    const/4 v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-short v2, v7

    .line 146
    .local v2, "dataLength":S
    new-array v1, v2, [B

    .line 147
    .local v1, "data":[B
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 148
    if-gez v5, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v6

    .line 150
    :cond_1
    sget-object v7, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_META_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-direct {p0, v7}, Lcom/quintic/libota/otaManager;->cmdToValue(Lcom/quintic/libota/bleGlobalVariables$otaCmd;)B

    move-result v0

    .line 151
    .local v0, "checksum":S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v5, :cond_2

    .line 154
    sget-object v7, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_META_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/quintic/libota/otaManager;->otaSendPacket(Lcom/quintic/libota/bleGlobalVariables$otaCmd;S[BI)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 155
    add-int/lit8 v6, v5, 0x2

    goto :goto_0

    .line 152
    :cond_2
    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v7, v0

    int-to-short v0, v7

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private otaSendPacket(Lcom/quintic/libota/bleGlobalVariables$otaCmd;S[BI)Z
    .locals 15
    .param p1, "cmd"    # Lcom/quintic/libota/bleGlobalVariables$otaCmd;
    .param p2, "checksum"    # S
    .param p3, "data"    # [B
    .param p4, "dataLength"    # I

    .prologue
    .line 79
    invoke-direct/range {p0 .. p1}, Lcom/quintic/libota/otaManager;->cmdToValue(Lcom/quintic/libota/bleGlobalVariables$otaCmd;)B

    move-result v4

    .line 82
    .local v4, "cmdVal":B
    const/4 v12, 0x2

    new-array v3, v12, [B

    .line 83
    .local v3, "checksumBytes":[B
    const/4 v12, 0x0

    move/from16 v0, p2

    int-to-byte v13, v0

    aput-byte v13, v3, v12

    .line 84
    const/4 v12, 0x1

    shr-int/lit8 v13, p2, 0x8

    int-to-byte v13, v13

    aput-byte v13, v3, v12

    .line 85
    const/4 v12, 0x3

    new-array v7, v12, [B

    .line 87
    .local v7, "head":[B
    invoke-static {}, Lcom/quintic/libota/otaManager;->$SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd()[I

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 111
    sget-object v12, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v13, "otaSendPacket:unknown cmd type"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v12, 0x0

    .line 136
    :goto_0
    return v12

    .line 91
    :pswitch_0
    const/4 v12, 0x0

    add-int/lit8 v13, p4, 0x1

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    .line 92
    const/4 v12, 0x1

    add-int/lit8 v13, p4, 0x1

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    .line 93
    const/4 v12, 0x2

    aput-byte v4, v7, v12

    .line 94
    array-length v12, v7

    add-int v12, v12, p4

    array-length v13, v3

    add-int v9, v12, v13

    .line 95
    .local v9, "packetLength":I
    new-array v5, v9, [B

    .line 96
    .local v5, "dataPacket":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v7

    invoke-static {v7, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    const/4 v12, 0x0

    array-length v13, v7

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v12, v5, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/4 v12, 0x0

    array-length v13, v7

    add-int v13, v13, p4

    array-length v14, v3

    invoke-static {v3, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    :goto_1
    move v8, v9

    .line 117
    .local v8, "left":I
    const/16 v2, 0x14

    .line 118
    .local v2, "BytesEachTime":I
    :goto_2
    if-gtz v8, :cond_0

    .line 136
    const/4 v12, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "BytesEachTime":I
    .end local v5    # "dataPacket":[B
    .end local v8    # "left":I
    .end local v9    # "packetLength":I
    :pswitch_1
    array-length v12, v7

    array-length v13, v3

    add-int v9, v12, v13

    .line 103
    .restart local v9    # "packetLength":I
    new-array v5, v9, [B

    .line 104
    .restart local v5    # "dataPacket":[B
    const/4 v12, 0x0

    const/4 v13, 0x1

    aput-byte v13, v5, v12

    .line 105
    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-byte v13, v5, v12

    .line 106
    const/4 v12, 0x2

    aput-byte v4, v5, v12

    .line 107
    const/4 v12, 0x3

    const/4 v13, 0x0

    aget-byte v13, v3, v13

    aput-byte v13, v5, v12

    .line 108
    const/4 v12, 0x4

    const/4 v13, 0x1

    aget-byte v13, v3, v13

    aput-byte v13, v5, v12

    goto :goto_1

    .line 120
    .restart local v2    # "BytesEachTime":I
    .restart local v8    # "left":I
    :cond_0
    if-le v8, v2, :cond_1

    .line 121
    move v10, v2

    .line 124
    .local v10, "tempLen":I
    :goto_3
    new-array v11, v10, [B

    .line 125
    .local v11, "tempPacket":[B
    sub-int v12, v9, v8

    const/4 v13, 0x0

    invoke-static {v5, v12, v11, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    :try_start_0
    invoke-direct {p0, v11}, Lcom/quintic/libota/otaManager;->otaWrite([B)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_2

    .line 128
    const/4 v12, 0x0

    goto :goto_0

    .line 123
    .end local v10    # "tempLen":I
    .end local v11    # "tempPacket":[B
    :cond_1
    move v10, v8

    .restart local v10    # "tempLen":I
    goto :goto_3

    .line 130
    .restart local v11    # "tempPacket":[B
    :catch_0
    move-exception v6

    .line 132
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 134
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_2
    sub-int/2addr v8, v10

    goto :goto_2

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private otaSendResetCmd()V
    .locals 4

    .prologue
    .line 196
    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_EXECUTION_NEW_CODE:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-direct {p0, v1}, Lcom/quintic/libota/otaManager;->cmdToValue(Lcom/quintic/libota/bleGlobalVariables$otaCmd;)B

    move-result v0

    .line 197
    .local v0, "checksum":S
    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_EXECUTION_NEW_CODE:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/quintic/libota/otaManager;->otaSendPacket(Lcom/quintic/libota/bleGlobalVariables$otaCmd;S[BI)Z

    .line 198
    return-void
.end method

.method private otaSendVerifyCmd()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 185
    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_DATA_VERIFY:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    invoke-direct {p0, v2}, Lcom/quintic/libota/otaManager;->cmdToValue(Lcom/quintic/libota/bleGlobalVariables$otaCmd;)B

    move-result v0

    .line 186
    .local v0, "checksum":S
    sget-object v2, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_DATA_VERIFY:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/quintic/libota/otaManager;->otaSendPacket(Lcom/quintic/libota/bleGlobalVariables$otaCmd;S[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/quintic/libota/otaManager;->waitVerifyCmdDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/4 v1, 0x1

    .line 191
    :cond_0
    return v1
.end method

.method private otaUpdateProcess(Ljava/lang/String;)V
    .locals 17
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v10, 0x0

    .line 361
    .local v10, "offset":I
    const/4 v11, 0x0

    .line 363
    .local v11, "ret":I
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 364
    .local v6, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 365
    .local v5, "fileSize":I
    if-nez v5, :cond_0

    .line 367
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 368
    sget-object v13, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_FW_SIZE_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    .line 434
    .end local v5    # "fileSize":I
    .end local v6    # "fin":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 371
    .restart local v5    # "fileSize":I
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/quintic/libota/otaManager;->otaSendMetaData(Ljava/io/FileInputStream;)I

    move-result v7

    .line 372
    .local v7, "metaSize":I
    if-gez v7, :cond_1

    .line 374
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 375
    sget-object v13, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SEND_META_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    .end local v5    # "fileSize":I
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "metaSize":I
    :catch_0
    move-exception v4

    .line 430
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    sget-object v13, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v14, "otaUpdateProcess Exit"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sget-object v13, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SUCCESS:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto :goto_0

    .line 378
    .restart local v5    # "fileSize":I
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "metaSize":I
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/quintic/libota/otaManager;->getOffset()I

    move-result v10

    .line 379
    if-gez v10, :cond_2

    .line 381
    sget-object v13, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v14, "wait cmd OTA_CMD_META_DATA timeout"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 383
    sget-object v13, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_META_RESPONSE_TIMEOUT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto :goto_0

    .line 386
    :cond_2
    if-lez v10, :cond_3

    .line 387
    int-to-long v13, v10

    invoke-virtual {v6, v13, v14}, Ljava/io/FileInputStream;->skip(J)J

    .line 388
    :cond_3
    sub-int v3, v5, v7

    .line 389
    .local v3, "brickDataSize":I
    const/4 v12, 0x0

    .line 390
    .local v12, "transfereedSize":I
    sget-object v13, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "offset="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " meta size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 393
    .local v1, "begin":J
    :cond_4
    const/16 v13, 0x100

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/quintic/libota/otaManager;->otaSendBrickData(Ljava/io/FileInputStream;I)I

    move-result v11

    .line 394
    if-gez v11, :cond_5

    .line 396
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 397
    sget-object v13, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v14, "otaUpdateProcess Exit for some transfer issue"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v13, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_DATA_RESPONSE_TIMEOUT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto/16 :goto_0

    .line 401
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/quintic/libota/otaManager;->waitReadDataCompleted()Z

    move-result v13

    if-nez v13, :cond_6

    .line 403
    sget-object v13, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v14, "waitReadDataCompleted timeout"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget-object v13, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_DATA_RESPONSE_TIMEOUT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto/16 :goto_0

    .line 407
    :cond_6
    add-int/2addr v10, v11

    .line 409
    mul-int/lit8 v13, v10, 0x64

    div-int/2addr v13, v5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quintic/libota/otaManager;->mPercent:I

    .line 410
    add-int/lit16 v12, v12, 0x100

    .line 411
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 414
    .local v8, "now":J
    sub-long v13, v8, v1

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quintic/libota/otaManager;->mElapsedTime:I

    .line 415
    mul-int/lit16 v13, v12, 0x3e8

    int-to-long v13, v13

    sub-long v15, v8, v1

    div-long/2addr v13, v15

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quintic/libota/otaManager;->mByteRate:I

    .line 416
    if-lt v10, v3, :cond_4

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/quintic/libota/otaManager;->otaSendVerifyCmd()Z

    move-result v13

    if-nez v13, :cond_7

    .line 420
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 421
    sget-object v13, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_FW_VERIFY_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto/16 :goto_0

    .line 424
    :cond_7
    const/16 v13, 0x64

    move-object/from16 v0, p0

    iput v13, v0, Lcom/quintic/libota/otaManager;->mPercent:I

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/quintic/libota/otaManager;->otaSendResetCmd()V

    .line 427
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private otaWrite([B)Z
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/quintic/libota/otaManager;->shouldStopUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v2, "otaWrite:Stopped for some reason"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/quintic/libota/otaManager;->mOtaIntf:Lcom/quintic/libota/BluetoothLeInterface;

    invoke-virtual {v1, p1}, Lcom/quintic/libota/BluetoothLeInterface;->writeCharacteristic([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    sget-object v1, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to write characteristic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/quintic/libota/otaManager;->waitWriteDataCompleted()Z

    move-result v0

    goto :goto_0
.end method

.method private releaseSemaphore(Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "semp"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 202
    return-void
.end method

.method private serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V
    .locals 0
    .param p1, "ret"    # Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/quintic/libota/otaManager;->mRetValue:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 327
    return-void
.end method

.method private setOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/quintic/libota/otaManager;->mStartOffset:I

    .line 229
    iget-object v0, p0, Lcom/quintic/libota/otaManager;->semp:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, v0}, Lcom/quintic/libota/otaManager;->releaseSemaphore(Ljava/util/concurrent/Semaphore;)V

    .line 230
    return-void
.end method

.method private shouldStopUpdate()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/quintic/libota/otaManager;->mShouldStop:Z

    return v0
.end method

.method private valueToCmd(I)Lcom/quintic/libota/bleGlobalVariables$otaCmd;
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 53
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    .line 59
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 55
    :pswitch_0
    sget-object v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_META_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    goto :goto_0

    .line 56
    :pswitch_1
    sget-object v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_BRICK_DATA:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    goto :goto_0

    .line 57
    :pswitch_2
    sget-object v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_DATA_VERIFY:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    goto :goto_0

    .line 58
    :pswitch_3
    sget-object v0, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->OTA_CMD_EXECUTION_NEW_CODE:Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private waitReadDataCompleted()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/quintic/libota/otaManager;->semp:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, v0}, Lcom/quintic/libota/otaManager;->waitSemaphore(Ljava/util/concurrent/Semaphore;)Z

    move-result v0

    return v0
.end method

.method private waitSemaphore(Ljava/util/concurrent/Semaphore;)Z
    .locals 7
    .param p1, "semp"    # Ljava/util/concurrent/Semaphore;

    .prologue
    const/4 v4, 0x0

    .line 205
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .line 206
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    const/16 v5, 0x2ee0

    if-lt v3, v5, :cond_1

    .line 223
    :cond_0
    :goto_1
    return v4

    .line 208
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    .line 209
    .local v1, "getAccquire":Z
    if-eqz v1, :cond_2

    .line 210
    const/4 v4, 0x1

    goto :goto_1

    .line 212
    :cond_2
    const-wide/16 v5, 0x1

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_2
    invoke-direct {p0}, Lcom/quintic/libota/otaManager;->shouldStopUpdate()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 213
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method private waitVerifyCmdDone()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/quintic/libota/otaManager;->semp:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, v0}, Lcom/quintic/libota/otaManager;->waitSemaphore(Ljava/util/concurrent/Semaphore;)Z

    move-result v0

    return v0
.end method

.method private waitWriteDataCompleted()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/quintic/libota/otaManager;->semp:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, v0}, Lcom/quintic/libota/otaManager;->waitSemaphore(Ljava/util/concurrent/Semaphore;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public notifyWriteDataCompleted()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/quintic/libota/otaManager;->semp:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, v0}, Lcom/quintic/libota/otaManager;->releaseSemaphore(Ljava/util/concurrent/Semaphore;)V

    .line 248
    return-void
.end method

.method public otaGetProcess([I)Lcom/quintic/libota/bleGlobalVariables$otaResult;
    .locals 3
    .param p1, "extra"    # [I

    .prologue
    const/4 v2, 0x0

    .line 437
    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 439
    sget-object v0, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v1, "buffer is too small,at least 8 intgent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    sget-object v0, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_INVALID_ARGUMENT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 449
    :goto_0
    return-object v0

    .line 444
    :cond_0
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 445
    iget v0, p0, Lcom/quintic/libota/otaManager;->mPercent:I

    aput v0, p1, v2

    .line 446
    const/4 v0, 0x1

    iget v1, p0, Lcom/quintic/libota/otaManager;->mByteRate:I

    aput v1, p1, v0

    .line 447
    const/4 v0, 0x2

    iget v1, p0, Lcom/quintic/libota/otaManager;->mElapsedTime:I

    aput v1, p1, v0

    .line 449
    iget-object v0, p0, Lcom/quintic/libota/otaManager;->mRetValue:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    goto :goto_0
.end method

.method public otaGetResult([B)V
    .locals 8
    .param p1, "notify_data"    # [B

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    .line 272
    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v3}, Lcom/quintic/libota/otaManager;->valueToCmd(I)Lcom/quintic/libota/bleGlobalVariables$otaCmd;

    move-result-object v0

    .line 274
    .local v0, "cmdType":Lcom/quintic/libota/bleGlobalVariables$otaCmd;
    if-nez v0, :cond_0

    .line 275
    const-string v3, "Notify data: "

    invoke-virtual {p0, p1, v3}, Lcom/quintic/libota/otaManager;->otaPrintBytes([BLjava/lang/String;)V

    .line 276
    sget-object v3, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_RECEIVED_INVALID_PACKET:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    invoke-direct {p0, v3}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    .line 317
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v3, 0x3

    aget-byte v3, p1, v3

    packed-switch v3, :pswitch_data_0

    .line 287
    sget-object v3, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_INVALID_ARGUMENT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    invoke-direct {p0, v3}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    .line 289
    :goto_1
    iget-object v3, p0, Lcom/quintic/libota/otaManager;->mRetValue:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    sget-object v4, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SUCCESS:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    if-eq v3, v4, :cond_1

    .line 290
    const-string v3, "Notify data: "

    invoke-virtual {p0, p1, v3}, Lcom/quintic/libota/otaManager;->otaPrintBytes([BLjava/lang/String;)V

    goto :goto_0

    .line 281
    :pswitch_0
    sget-object v3, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SUCCESS:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    invoke-direct {p0, v3}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto :goto_1

    .line 282
    :pswitch_1
    sget-object v3, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_PKT_CHECKSUM_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    invoke-direct {p0, v3}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto :goto_1

    .line 283
    :pswitch_2
    sget-object v3, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_PKT_LEN_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    invoke-direct {p0, v3}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto :goto_1

    .line 284
    :pswitch_3
    sget-object v3, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_DEVICE_NOT_SUPPORT_OTA:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    invoke-direct {p0, v3}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto :goto_1

    .line 285
    :pswitch_4
    sget-object v3, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_FW_SIZE_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    invoke-direct {p0, v3}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto :goto_1

    .line 286
    :pswitch_5
    sget-object v3, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_FW_VERIFY_ERROR:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    invoke-direct {p0, v3}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto :goto_1

    .line 293
    :cond_1
    invoke-static {}, Lcom/quintic/libota/otaManager;->$SWITCH_TABLE$com$quintic$libota$bleGlobalVariables$otaCmd()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/quintic/libota/bleGlobalVariables$otaCmd;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 313
    sget-object v3, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exit "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, p1, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v3, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_INVALID_ARGUMENT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    invoke-direct {p0, v3}, Lcom/quintic/libota/otaManager;->serErrorCode(Lcom/quintic/libota/bleGlobalVariables$otaResult;)V

    goto :goto_0

    .line 296
    :pswitch_6
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    int-to-short v1, v3

    .line 297
    .local v1, "offset":S
    invoke-direct {p0, v1}, Lcom/quintic/libota/otaManager;->setOffset(I)V

    goto :goto_0

    .line 301
    .end local v1    # "offset":S
    :pswitch_7
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    int-to-short v2, v3

    .line 303
    .local v2, "size":S
    invoke-direct {p0}, Lcom/quintic/libota/otaManager;->notifyReadDataCompleted()V

    goto/16 :goto_0

    .line 306
    .end local v2    # "size":S
    :pswitch_8
    invoke-direct {p0}, Lcom/quintic/libota/otaManager;->notifyVerifyCmdDone()V

    .line 307
    sget-object v3, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v4, "OTA_CMD_DATA_VERIFY"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    :pswitch_9
    sget-object v3, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v4, "This should never happened"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 293
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public otaPrintBytes([BLjava/lang/String;)V
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 33
    if-nez p1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v4, p1

    move v2, v3

    :goto_1
    if-lt v2, v4, :cond_1

    .line 38
    sget-object v2, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :cond_1
    aget-byte v0, p1, v2

    .line 37
    .local v0, "byteChar":B
    const-string v5, "%02X "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public otaStart(Ljava/lang/String;Lcom/quintic/libota/BluetoothLeInterface;)Lcom/quintic/libota/bleGlobalVariables$otaResult;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "intf"    # Lcom/quintic/libota/BluetoothLeInterface;

    .prologue
    const/4 v2, 0x0

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 340
    :cond_0
    sget-object v1, Lcom/quintic/libota/otaManager;->TAG:Ljava/lang/String;

    const-string v2, "otaUpdateInit:argument invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_INVALID_ARGUMENT:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    .line 356
    :goto_0
    return-object v1

    .line 344
    :cond_1
    iput-object p1, p0, Lcom/quintic/libota/otaManager;->mFilePath:Ljava/lang/String;

    .line 345
    iput-object p2, p0, Lcom/quintic/libota/otaManager;->mOtaIntf:Lcom/quintic/libota/BluetoothLeInterface;

    .line 346
    iput-boolean v2, p0, Lcom/quintic/libota/otaManager;->mShouldStop:Z

    .line 347
    iput v2, p0, Lcom/quintic/libota/otaManager;->mPercent:I

    .line 348
    iput v2, p0, Lcom/quintic/libota/otaManager;->mByteRate:I

    .line 349
    iput v2, p0, Lcom/quintic/libota/otaManager;->mElapsedTime:I

    .line 350
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/quintic/libota/otaManager;->semp:Ljava/util/concurrent/Semaphore;

    .line 352
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/quintic/libota/BluetoothLeInterface;->setCharacteristicNotification(Z)Z

    .line 353
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/quintic/libota/otaManager;->updateRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 354
    .local v0, "updateStart":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 356
    sget-object v1, Lcom/quintic/libota/bleGlobalVariables$otaResult;->OTA_RESULT_SUCCESS:Lcom/quintic/libota/bleGlobalVariables$otaResult;

    goto :goto_0
.end method

.method public otaStop()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quintic/libota/otaManager;->mShouldStop:Z

    .line 454
    return-void
.end method

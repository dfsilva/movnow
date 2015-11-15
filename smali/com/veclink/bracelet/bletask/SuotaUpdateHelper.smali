.class public Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;
.super Ljava/lang/Object;
.source "SuotaUpdateHelper.java"

# interfaces
.implements Lcom/veclink/hw/bleservice/OnBleServiceStatusListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final EXTRAS_DEVICE_ADDRESS:Ljava/lang/String; = "DEVICE_ADDRESS"

.field public static final EXTRAS_DEVICE_NAME:Ljava/lang/String; = "DEVICE_NAME"

.field public static final SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final FILE_SELECT_CODE:I

.field public final I2C_TYPE:I

.field public final SPI_TYPE:I

.field public final SPOTAR_APP_ERROR:B

.field public final SPOTAR_CMP_OK:B

.field public final SPOTAR_CRC_ERR:B

.field public final SPOTAR_EXT_MEM_READ_ERR:B

.field public final SPOTAR_EXT_MEM_WRITE_ERR:B

.field public final SPOTAR_IMG_STARTED:B

.field public final SPOTAR_INT_MEM_ERR:B

.field public final SPOTAR_INVAL_IMG_BANK:B

.field public final SPOTAR_INVAL_IMG_HDR:B

.field public final SPOTAR_INVAL_IMG_SIZE:B

.field public final SPOTAR_INVAL_MEM_TYPE:B

.field public final SPOTAR_INVAL_PRODUCT_HDR:B

.field public final SPOTAR_PATCH_LEN_ERR:B

.field public final SPOTAR_SAME_IMG_ERR:B

.field public final SPOTAR_SRV_EXIT:B

.field public final SPOTAR_SRV_STARTED:B

.field public final SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

.field public final SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

.field public final SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

.field public final SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

.field public final SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

.field public final SPOTA_SERVICE_UUID:Ljava/util/UUID;

.field public final SPOTA_WRITE_GPIO_MAP:I

.field public final SPOTA_WRITE_MEM_DEV:I

.field public final SPOTA_WRITE_PATH_DATA:I

.field public final SPOTA_WRITE_PATH_LEN:I

.field public final SPOTA_WRITE_SUCESS:I

.field public bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field crc32_tab:[I

.field private fileLength:I

.field public isUpdateing:Z

.field public mAddress:I

.field public mBlockLength:I

.field public mBlockOffset:I

.field public mBlockSize:I

.field public mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

.field public mBrowser:Landroid/widget/Button;

.field public mChunckLength:I

.field public mChunckOffset:I

.field public mChunckSize:I

.field public mConnected:Z

.field public mDeviceAddress:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public mDisplayImagePath:Landroid/widget/TextView;

.field public mDisplayLog:Landroid/widget/TextView;

.field public mDownloadButton:Landroid/widget/Button;

.field public mGattCharacteristics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;>;"
        }
    .end annotation
.end field

.field public mI2cSclGpio:I

.field public mI2cSdaGpio:I

.field public mImageDataLength:I

.field public mIsLastChunk:Z

.field public mIsWriteLastLen:Z

.field public mMemoryType:I

.field public mPatchData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSpiClkGpio:I

.field public mSpiCsGpio:I

.field public mSpiMisoGpio:I

.field public mSpiMosiGpio:I

.field public mSpotaWriteStatus:I

.field public readDataIsOver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->TAG:Ljava/lang/String;

    .line 251
    const-string v0, "5f78df94-798c-46f5-990a-b3eb6a065c88"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/lang/String;)V
    .locals 6
    .param p1, "vleBleService"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "bleCallBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p4, "deviceMacAddress"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mGattCharacteristics:Ljava/util/ArrayList;

    .line 58
    iput-boolean v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mConnected:Z

    .line 197
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->FILE_SELECT_CODE:I

    .line 198
    iput v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->I2C_TYPE:I

    .line 199
    iput v2, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPI_TYPE:I

    .line 200
    iput v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_WRITE_MEM_DEV:I

    .line 201
    iput v2, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_WRITE_GPIO_MAP:I

    .line 202
    iput v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_WRITE_PATH_LEN:I

    .line 203
    iput v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_WRITE_PATH_DATA:I

    .line 204
    iput v5, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_WRITE_SUCESS:I

    .line 206
    iput-byte v2, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_SRV_STARTED:B

    .line 210
    iput-byte v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_CMP_OK:B

    .line 212
    iput-byte v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_SRV_EXIT:B

    .line 213
    iput-byte v5, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_CRC_ERR:B

    .line 214
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_PATCH_LEN_ERR:B

    .line 217
    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_EXT_MEM_WRITE_ERR:B

    .line 220
    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_INT_MEM_ERR:B

    .line 222
    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_INVAL_MEM_TYPE:B

    .line 223
    const/16 v0, 0x9

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_APP_ERROR:B

    .line 226
    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_IMG_STARTED:B

    .line 229
    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_INVAL_IMG_BANK:B

    .line 230
    const/16 v0, 0x12

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_INVAL_IMG_HDR:B

    .line 231
    const/16 v0, 0x13

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_INVAL_IMG_SIZE:B

    .line 232
    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_INVAL_PRODUCT_HDR:B

    .line 234
    const/16 v0, 0x15

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_SAME_IMG_ERR:B

    .line 235
    const/16 v0, 0x16

    iput-byte v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTAR_EXT_MEM_READ_ERR:B

    .line 239
    const-string v0, "0000fef5-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    .line 241
    const-string v0, "8082caa8-41a6-4021-91c6-56f9b954cc34"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    .line 243
    const-string v0, "724249f0-5ec3-4b5f-8804-42345af08651"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

    .line 245
    const-string v0, "6c53db25-47a1-45fe-a022-7c92fb334fd4"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

    .line 247
    const-string v0, "9d84b9a3-000c-49d8-9183-855b673fda31"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

    .line 249
    const-string v0, "457871e8-d516-4ca1-9116-57d0b17b9cb2"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

    .line 254
    iput v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mI2cSclGpio:I

    .line 255
    iput v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mI2cSdaGpio:I

    .line 256
    const/16 v0, 0x50

    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mAddress:I

    .line 257
    iput v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiCsGpio:I

    .line 258
    iput v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiClkGpio:I

    .line 259
    const/4 v0, 0x6

    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiMosiGpio:I

    .line 260
    const/4 v0, 0x5

    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiMisoGpio:I

    .line 261
    iput v2, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mMemoryType:I

    .line 262
    const/4 v0, -0x1

    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    .line 263
    iput-boolean v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->readDataIsOver:Z

    .line 264
    const/16 v0, 0xf0

    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockSize:I

    .line 265
    iput v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    .line 266
    iput v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    .line 267
    iput v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mImageDataLength:I

    .line 268
    const/16 v0, 0x14

    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckSize:I

    .line 269
    iput v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckLength:I

    .line 270
    iput v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    .line 272
    iput-boolean v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mIsLastChunk:Z

    .line 273
    iput-boolean v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mIsWriteLastLen:Z

    .line 275
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->crc32_tab:[I

    .line 182
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    .line 183
    iput-object p3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 184
    iput-object p4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mDeviceAddress:Ljava/lang/String;

    .line 186
    return-void

    .line 275
    nop

    :array_0
    .array-data 4
        0x0
        0x77073096
        -0x11f19ed4
        -0x66f6ae46
        0x76dc419
        0x706af48f
        -0x169c5acb
        -0x619b6a5d
        0xedb8832
        0x79dcb8a4
        -0x1f2a16e2
        -0x682d2678
        0x9b64c2b
        0x7eb17cbd
        -0x1847d2f9
        -0x6f40e26f
        0x1db71064
        0x6ab020f2
        -0xc468eb8
        -0x7b41be22
        0x1adad47d
        0x6ddde4eb
        -0xb2b4aaf
        -0x7c2c7a39
        0x136c9856
        0x646ba8c0
        -0x29d0686
        -0x759a3614
        0x14015c4f
        0x63066cd9
        -0x5f0c29d
        -0x72f7f20b
        0x3b6e20c8
        0x4c69105e    # 6.1096312E7f
        -0x2a9fbe1c
        -0x5d988e8e
        0x3c03e4d1
        0x4b04d447    # 8705095.0f
        -0x2df27a03
        -0x5af54a95
        0x35b5a8fa
        0x42b2986c
        -0x2444362a
        -0x534306c0
        0x32d86ce3
        0x45df5c75
        -0x2329f231
        -0x542ec2a7
        0x26d930ac
        0x51de003a
        -0x3728ae80    # -440972.0f
        -0x402f9eea
        0x21b4f4b5
        0x56b3c423
        -0x30456a67
        -0x47425af1
        0x2802b89e
        0x5f058808    # 9.621949E18f
        -0x39f3264e
        -0x4ef416dc
        0x2f6f7c87
        0x58684c11
        -0x3e9ee255
        -0x4999d2c3
        0x76dc4190
        0x1db7106
        -0x672ddf44
        -0x102aefd6
        0x71b18589
        0x6b6b51f
        -0x60401b5b
        -0x17472bcd
        0x7807c9a2
        0xf00f934
        -0x69f65772
        -0x1ef167e8
        0x7f6a0dbb
        0x86d3d2d
        -0x6e9b9369
        -0x199ca3ff
        0x6b6b51f4
        0x1c6c6162
        -0x7a9acf28
        -0xd9dffb2
        0x6c0695ed
        0x1b01a57b
        -0x7df70b3f
        -0xaf03ba9
        0x65b0d9c6
        0x12b7e950
        -0x74414716
        -0x3467784
        0x62dd1ddf
        0x15da2d49
        -0x732c830d
        -0x42bb39b
        0x4db26158
        0x3ab551ce
        -0x5c43ff8c
        -0x2b44cf1e
        0x4adfa541    # 7328416.5f
        0x3dd895d7
        -0x5b2e3b93
        -0x2c290b05
        0x4369e96a
        0x346ed9fc
        -0x529877ba
        -0x259f4730
        0x44042d73
        0x33031de5
        -0x55f5b3a1
        -0x22f28337
        0x5005713c
        0x270241aa
        -0x41f4eff0
        -0x36f3df7a
        0x5768b525
        0x206f85b3
        -0x46992bf7
        -0x319e1b61
        0x5edef90e
        0x29d9c998
        -0x4f2f67de
        -0x3828574c
        0x59b33d17
        0x2eb40d81
        -0x4842a3c5
        -0x3f459353
        -0x12477ce0
        -0x65404c4a
        0x3b6e20c
        0x74b1d29a
        -0x152ab8c7
        -0x622d8851
        0x4db2615
        0x73dc1683
        -0x1c9cf4ee
        -0x6b9bc47c
        0xd6d6a3e
        0x7a6a5aa8
        -0x1bf130f5
        -0x6cf60063
        0xa00ae27
        0x7d079eb1
        -0xff06cbc
        -0x78f75c2e
        0x1e01f268
        0x6906c2fe
        -0x89da8a3
        -0x7f9a9835
        0x196c3671
        0x6e6b06e7
        -0x12be48a
        -0x762cd420
        0x10da7a5a
        0x67dd4acc
        -0x6462091
        -0x71411007
        0x17b7be43
        0x60b08ed5
        -0x29295c18    # -1.1799973E14f
        -0x5e2e6c82
        0x38d8c2c4
        0x4fdff252
        -0x2e44980f
        -0x5943a899
        0x3fb506dd
        0x48b2364b
        -0x27f2d426
        -0x50f5e4b4
        0x36034af6
        0x41047a60
        -0x209f103d
        -0x579820ab
        0x316e8eef
        0x4669be79
        -0x349e4c74    # -1.4791564E7f
        -0x43997ce6
        0x256fd2a0
        0x5268e236
        -0x33f3886b    # -3.6822612E7f
        -0x44f4b8fd
        0x220216b9
        0x5505262f
        -0x3a45c442
        -0x4d42f4d8
        0x2bb45a92
        0x5cb36a04
        -0x3d280059    # -107.99932f
        -0x4a2f30cf
        0x2cd99e8b
        0x5bdeae1d
        -0x649b3d50
        -0x139c0dda
        0x756aa39c
        0x26d930a
        -0x63f6f957
        -0x14f1c9c1
        0x72076785
        0x5005713
        -0x6a40b57e
        -0x1d4785ec
        0x7bb12bae
        0xcb61b38
        -0x6d2d7165
        -0x1a2a41f3
        0x7cdcefb7
        0xbdbdf21
        -0x792c2d2c
        -0xe2b1dbe
        0x68ddb3f8
        0x1fda836e
        -0x7e41e933
        -0x946d9a5
        0x6fb077e1
        0x18b74777
        -0x77f7a51a
        -0xf09590
        0x66063bca
        0x11010b5c
        -0x709a6101
        -0x79d5197
        0x616bffd3
        0x166ccf45
        -0x5ff51d88
        -0x28f22d12
        0x4e048354    # 5.5579981E8f
        0x3903b3c2
        -0x5898d99f
        -0x2f9fe909
        0x4969474d
        0x3e6e77db
        -0x512e95b6
        -0x2629a524
        0x40df0b66
        0x37d83bf0
        -0x564351ad
        -0x2144613b
        0x47b2cf7f
        0x30b5ffe9
        -0x42420de4
        -0x35453d76    # -6119749.0f
        0x53b39330
        0x24b4a3a6
        -0x452fc9fb
        -0x3228f96d
        0x54de5729
        0x23d967bf
        -0x4c9985d2
        -0x3b9eb548
        0x5d681b02
        0x2a6f2b94
        -0x4bf441c9
        -0x3cf3715f
        0x5a05df1b
        0x2d02ef8d
    .end array-data
.end method

.method private checkSum(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->handlerBTaddress()Ljava/util/ArrayList;

    move-result-object v0

    .line 619
    .local v0, "btAddressArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 620
    .local v3, "crc_code":B
    const/4 v10, 0x4

    new-array v2, v10, [B

    fill-array-data v2, :array_0

    .line 621
    .local v2, "crc_32bit":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 624
    const/16 v10, 0x417

    if-le v5, v10, :cond_0

    const/16 v10, 0x41e

    if-ge v5, v10, :cond_0

    .line 626
    add-int/lit16 v10, v5, -0x417

    rsub-int/lit8 v10, v10, 0x6

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 627
    .local v9, "tmp":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v5, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 629
    .end local v9    # "tmp":I
    :cond_0
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 633
    .restart local v9    # "tmp":I
    const/16 v10, 0x3f

    if-le v5, v10, :cond_1

    .line 635
    const/4 v10, 0x4

    new-array v4, v10, [B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->crc32_tab:[I

    const/4 v12, 0x0

    aget-byte v12, v2, v12

    int-to-byte v13, v9

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    shr-int/lit8 v11, v11, 0x0

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->crc32_tab:[I

    const/4 v12, 0x0

    aget-byte v12, v2, v12

    int-to-byte v13, v9

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->crc32_tab:[I

    const/4 v12, 0x0

    aget-byte v12, v2, v12

    int-to-byte v13, v9

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    shr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->crc32_tab:[I

    const/4 v12, 0x0

    aget-byte v12, v2, v12

    int-to-byte v13, v9

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    and-int/lit16 v12, v12, 0xff

    aget v11, v11, v12

    shr-int/lit8 v11, v11, 0x18

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    .line 639
    .local v4, "crt":[B
    const/4 v10, 0x0

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 640
    const/4 v10, 0x1

    const/4 v11, 0x2

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 641
    const/4 v10, 0x2

    const/4 v11, 0x3

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 642
    const/4 v10, 0x3

    const/4 v11, 0x0

    aput-byte v11, v2, v10

    .line 644
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x0

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    and-int/lit16 v12, v12, 0xff

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 645
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x1

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    and-int/lit16 v12, v12, 0xff

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 646
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x2

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    and-int/lit16 v12, v12, 0xff

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 647
    const/4 v10, 0x3

    const/4 v11, 0x3

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x3

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    and-int/lit16 v12, v12, 0xff

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 621
    .end local v4    # "crt":[B
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 651
    .end local v9    # "tmp":I
    :cond_2
    const-string v10, "name_pcm_pcm"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crc_code=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-byte v11, v2, v11

    xor-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 654
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    xor-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 655
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget-byte v11, v2, v11

    xor-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 656
    const/4 v10, 0x3

    const/4 v11, 0x3

    aget-byte v11, v2, v11

    xor-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 657
    const-string v10, "name_pcm_pcm"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crc_32bit[0]=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-byte v12, v2, v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v10, "name_pcm_pcm"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crc_32bit[1]=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-byte v12, v2, v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v10, "name_pcm_pcm"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crc_32bit[2]=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-byte v12, v2, v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-string v10, "name_pcm_pcm"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crc_32bit[3]=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget-byte v12, v2, v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    const/4 v10, 0x4

    if-ge v6, v10, :cond_3

    .line 663
    aget-byte v10, v2, v6

    and-int/lit16 v1, v10, 0xff

    .line 664
    .local v1, "crc":I
    add-int/lit8 v10, v6, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 661
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 667
    .end local v1    # "crc":I
    :cond_3
    const/4 v3, 0x0

    .line 668
    const/4 v7, 0x0

    .local v7, "m":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_4

    .line 670
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 671
    .restart local v9    # "tmp":I
    int-to-byte v10, v9

    xor-int/2addr v10, v3

    int-to-byte v3, v10

    .line 668
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 674
    .end local v9    # "tmp":I
    :cond_4
    and-int/lit16 v8, v3, 0xff

    .line 675
    .local v8, "ret":I
    const-string v10, "pcm_crc_code"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crc_code="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v10, "pcm_crc_code"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crc_code=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    return-void

    .line 620
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method


# virtual methods
.method public handlerBTaddress()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 685
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, "valueString":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v4, "writeArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v2, v3

    .line 689
    .local v2, "tmpValue":Ljava/lang/String;
    :goto_0
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v10, :cond_1a

    .line 691
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "itemValue":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 695
    const-string v5, "a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_0

    const-string v5, "b"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_0

    const-string v5, "c"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_0

    const-string v5, "d"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_0

    const-string v5, "e"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_0

    const-string v5, "f"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_0

    const-string v5, "A"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_0

    const-string v5, "B"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_0

    const-string v5, "C"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_0

    const-string v5, "D"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_0

    const-string v5, "E"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_0

    const-string v5, "F"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v10, :cond_19

    .line 708
    :cond_0
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 710
    :cond_1
    const/16 v1, 0xa0

    .line 730
    .local v1, "tmp":I
    :goto_1
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 732
    :cond_2
    or-int/lit8 v1, v1, 0xa

    .line 756
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 711
    .end local v1    # "tmp":I
    :cond_3
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 713
    :cond_4
    const/16 v1, 0xb0

    .restart local v1    # "tmp":I
    goto :goto_1

    .line 714
    .end local v1    # "tmp":I
    :cond_5
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 716
    :cond_6
    const/16 v1, 0xc0

    .restart local v1    # "tmp":I
    goto :goto_1

    .line 717
    .end local v1    # "tmp":I
    :cond_7
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "D"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 719
    :cond_8
    const/16 v1, 0xd0

    .restart local v1    # "tmp":I
    goto :goto_1

    .line 720
    .end local v1    # "tmp":I
    :cond_9
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "e"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "E"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 722
    :cond_a
    const/16 v1, 0xe0

    .restart local v1    # "tmp":I
    goto/16 :goto_1

    .line 723
    .end local v1    # "tmp":I
    :cond_b
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "F"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 725
    :cond_c
    const/16 v1, 0xf0

    .restart local v1    # "tmp":I
    goto/16 :goto_1

    .line 727
    .end local v1    # "tmp":I
    :cond_d
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    shl-int/lit8 v1, v5, 0x4

    .restart local v1    # "tmp":I
    goto/16 :goto_1

    .line 733
    :cond_e
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 735
    :cond_f
    or-int/lit8 v1, v1, 0xb

    goto/16 :goto_2

    .line 736
    :cond_10
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 738
    :cond_11
    or-int/lit8 v1, v1, 0xc

    goto/16 :goto_2

    .line 739
    :cond_12
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "D"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 741
    :cond_13
    or-int/lit8 v1, v1, 0xd

    goto/16 :goto_2

    .line 742
    :cond_14
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "e"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "E"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 744
    :cond_15
    or-int/lit8 v1, v1, 0xe

    goto/16 :goto_2

    .line 745
    :cond_16
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "F"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 747
    :cond_17
    or-int/lit8 v1, v1, 0xf

    goto/16 :goto_2

    .line 749
    :cond_18
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v1, v5

    goto/16 :goto_2

    .line 753
    .end local v1    # "tmp":I
    :cond_19
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    or-int v1, v5, v6

    .restart local v1    # "tmp":I
    goto/16 :goto_2

    .line 758
    .end local v0    # "itemValue":Ljava/lang/String;
    .end local v1    # "tmp":I
    :cond_1a
    return-object v4
.end method

.method public isLastBlock()Z
    .locals 2

    .prologue
    .line 839
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mImageDataLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastChunk()Z
    .locals 2

    .prologue
    .line 851
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckLength:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBlock()V
    .locals 2

    .prologue
    .line 832
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    .line 833
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mImageDataLength:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockSize:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockSize:I

    :goto_0
    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    .line 835
    return-void

    .line 833
    :cond_0
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mImageDataLength:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public nextChunk()V
    .locals 2

    .prologue
    .line 844
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    .line 845
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckSize:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckSize:I

    :goto_0
    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckLength:I

    .line 847
    return-void

    .line 845
    :cond_0
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 1082
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1084
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    .line 1085
    .local v1, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1087
    const-string v2, "zznkey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read:SPOTA_MEM_INFO_UUID, characteristic.getValue().["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaWriteEnd()V

    .line 1085
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1090
    :cond_0
    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->isUpdateing:Z

    if-eqz v2, :cond_1

    .line 1091
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->isUpdateing:Z

    .line 1092
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->getmHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper$1;

    invoke-direct {v3, p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper$1;-><init>(Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1100
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->getmHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper$2;

    invoke-direct {v3, p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper$2;-><init>(Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1112
    .end local v0    # "i":I
    .end local v1    # "tmp":[B
    :cond_1
    return-void
.end method

.method public onCharacteristicWriteStatus(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 969
    const-string v0, "zznkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    if-nez p1, :cond_0

    .line 972
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    if-nez v0, :cond_1

    .line 974
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaWriteMemGpioMap()V

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    if-ne v0, v4, :cond_3

    .line 977
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockSize:I

    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaWriteDataLen(I)V

    .line 978
    iput v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    .line 979
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mPatchData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mImageDataLength:I

    .line 980
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mImageDataLength:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockSize:I

    :goto_1
    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mImageDataLength:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 982
    :cond_3
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 984
    iput v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    .line 985
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckSize:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckSize:I

    :goto_2
    iput v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckLength:I

    .line 987
    iput-boolean v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mIsLastChunk:Z

    .line 988
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaWriteChunk()V

    .line 989
    const-string v0, "zznkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWriteStatus mBlockLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mBlockOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 985
    :cond_4
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    iget v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 992
    :cond_5
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 994
    iget-boolean v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mIsLastChunk:Z

    if-nez v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->isLastChunk()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 998
    iput-boolean v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mIsLastChunk:Z

    .line 1000
    :cond_6
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaWriteChunk()V

    goto/16 :goto_0

    .line 1002
    :cond_7
    iget v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1007
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "update success"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onConnectionStateChange(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .prologue
    .line 1118
    iput-boolean p1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mConnected:Z

    .line 1119
    const-string v0, "zznkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    return-void
.end method

.method public onReadRemoteRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 1076
    return-void
.end method

.method public onServicesReady(Z)V
    .locals 3
    .param p1, "isReady"    # Z

    .prologue
    .line 1127
    const-string v0, "zznkey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesReady,isReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    if-eqz p1, :cond_0

    .line 1131
    sget-object v0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaServiceWriteCharas(Ljava/util/UUID;[BZ)V

    .line 1133
    :cond_0
    return-void
.end method

.method public onSuotaServiceStatusChange(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 8
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v7, 0x0

    .line 899
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    .line 900
    .local v3, "value":[B
    aget-byte v4, v3, v7

    and-int/lit16 v1, v4, 0xff

    .line 901
    .local v1, "tmp":I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, "vString":Ljava/lang/String;
    const-string v4, "zznkey"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSpotaServiceStatusChange=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v4, "zznkey"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSpotaWriteStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    aget-byte v4, v3, v7

    packed-switch v4, :pswitch_data_0

    .line 929
    :goto_0
    :pswitch_0
    const/16 v4, 0x10

    if-ne v1, v4, :cond_1

    .line 964
    :cond_0
    :goto_1
    return-void

    .line 920
    :pswitch_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update Error,errcode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 921
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 922
    iput-boolean v7, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->isUpdateing:Z

    goto :goto_0

    .line 932
    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 934
    iget v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->nextBlock()V

    .line 937
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->isLastBlock()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 939
    iget-boolean v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mIsWriteLastLen:Z

    if-nez v4, :cond_2

    .line 941
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mIsWriteLastLen:Z

    .line 942
    iget v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    invoke-virtual {p0, v4}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaWriteDataLen(I)V

    goto :goto_1

    .line 945
    :cond_2
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    iget-object v5, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v4, v5}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->readChara(Ljava/util/UUID;Ljava/util/UUID;)V

    goto :goto_1

    .line 951
    :cond_3
    iput-boolean v7, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mIsLastChunk:Z

    .line 952
    iput v7, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    .line 953
    iget v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    iget v5, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckSize:I

    if-le v4, v5, :cond_4

    iget v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckSize:I

    :goto_2
    iput v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckLength:I

    .line 955
    const-string v4, "zznkey"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSuotaServiceStatusChange mBlockLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mBlockOffset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    int-to-float v4, v4

    iget v5, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->fileLength:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v0, v4, v5

    .line 958
    .local v0, "temp":F
    iget-object v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    float-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 960
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaWriteChunk()V

    goto/16 :goto_1

    .line 953
    .end local v0    # "temp":F
    :cond_4
    iget v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockLength:I

    iget v5, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    sub-int/2addr v4, v5

    goto :goto_2

    .line 904
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public readChara(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 8
    .param p1, "serviceId"    # Ljava/util/UUID;
    .param p2, "charactId"    # Ljava/util/UUID;

    .prologue
    .line 65
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v6, :cond_0

    .line 68
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-nez v6, :cond_1

    .line 70
    const-string v6, "zznkey"

    const-string v7, "readChara,mBluetoothLeService = null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v6}, Lcom/veclink/hw/bleservice/VLBleService;->getSupportedGattServices()Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, "bluetoothGattServices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    if-nez v1, :cond_2

    .line 77
    const-string v6, "zznkey"

    const-string v7, "readChara,bluetoothGattServices = null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 84
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 85
    .local v0, "bluetoothGattService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 89
    .local v5, "size":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_3

    .line 92
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 94
    .local v2, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 97
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v6, :cond_4

    .line 99
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v6, v2}, Lcom/veclink/hw/bleservice/VLBleService;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 82
    .end local v2    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v4    # "j":I
    .end local v5    # "size":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    .restart local v2    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v4    # "j":I
    .restart local v5    # "size":I
    :cond_4
    const-string v6, "zznkey"

    const-string v7, "readChara,mBluetoothLeService = null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 89
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public setSuotaSettings(Ljava/lang/String;)Z
    .locals 12
    .param p1, "settings"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xf0

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 499
    const-string v6, "zznkey"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSuotaSettings,Settings="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 612
    :goto_0
    return v4

    .line 504
    :cond_0
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "tmp":Ljava/lang/String;
    const-string v6, "i2c"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 509
    const-string v6, "scl=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_1

    const-string v6, "sda=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_1

    const-string v6, "blocksize="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_1

    const-string v6, "address="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 514
    :cond_1
    const-string v5, "zznkey"

    const-string v6, "setSuotaSettings,type=i2c,the string is err!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :cond_2
    iput v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mMemoryType:I

    .line 518
    const-string v6, "scl=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    const-string v7, "scl=0x"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "tmp1":Ljava/lang/String;
    invoke-virtual {v1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "tmp2":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mI2cSclGpio:I

    .line 524
    const-string v6, "sda=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    const-string v7, "sda=0x"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-virtual {v1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mI2cSdaGpio:I

    .line 530
    const-string v6, "address=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    const-string v7, "address=0x"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0xc

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-virtual {v1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mAddress:I

    .line 539
    const-string v6, "blocksize="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 543
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v4, v5

    .line 612
    goto/16 :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    iput v11, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockSize:I

    .line 548
    const-string v5, "zznkey"

    const-string v6, "setSuotaSettings,type=i2c,the mBlockSize string is err!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 552
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "tmp1":Ljava/lang/String;
    .end local v3    # "tmp2":Ljava/lang/String;
    :cond_3
    const-string v6, "spi"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 554
    const-string v6, "blocksize="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_4

    const-string v6, "clk=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_4

    const-string v6, "cs=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_4

    const-string v6, "miso=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_4

    const-string v6, "mosi=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 560
    :cond_4
    const-string v5, "zznkey"

    const-string v6, "setSuotaSettings,type=spi,the string is err!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 563
    :cond_5
    iput v5, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mMemoryType:I

    .line 564
    const-string v6, "clk=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    const-string v7, "clk=0x"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 567
    .restart local v2    # "tmp1":Ljava/lang/String;
    invoke-virtual {v1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 568
    .restart local v3    # "tmp2":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiClkGpio:I

    .line 570
    const-string v6, "cs=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    const-string v7, "cs=0x"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 573
    invoke-virtual {v1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiCsGpio:I

    .line 576
    const-string v6, "mosi=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    const-string v7, "mosi=0x"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x9

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-virtual {v1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 580
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiMosiGpio:I

    .line 582
    const-string v6, "miso=0x"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    const-string v7, "miso=0x"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x9

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-virtual {v1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 586
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiMisoGpio:I

    .line 588
    const-string v6, "blocksize="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 592
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 601
    const-string v4, "zznkey"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSuotaSettings,mSpiClkGpio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiClkGpio:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mSpiCsGpio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiCsGpio:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mSpiMosiGpio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiMosiGpio:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mSpiMisoGpio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiMisoGpio:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mBlockSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 593
    :catch_1
    move-exception v0

    .line 596
    .restart local v0    # "e":Ljava/lang/Exception;
    iput v11, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockSize:I

    .line 597
    const-string v5, "zznkey"

    const-string v6, "setSuotaSettings,type=spi,the mBlockSize string is err!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 608
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "tmp1":Ljava/lang/String;
    .end local v3    # "tmp2":Ljava/lang/String;
    :cond_6
    const-string v5, "zznkey"

    const-string v6, "setSuotaSettings,type=null,the string is err!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public suotaReadImageData(Ljava/lang/String;)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, ".img"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 432
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "update file is not ims"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->fileLength:I

    .line 438
    const-string v8, "zznkey"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readSuotaImageData,file="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mPatchData:Ljava/util/ArrayList;

    .line 440
    const/4 v2, 0x0

    .line 443
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 444
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    const/4 v8, 0x1

    :try_start_1
    new-array v6, v8, [B

    .line 445
    .local v6, "tempbytes":[B
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 447
    const/4 v8, 0x0

    aget-byte v8, v6, v8

    and-int/lit16 v7, v8, 0xff

    .line 448
    .local v7, "tmp":I
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mPatchData:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 452
    .end local v6    # "tempbytes":[B
    .end local v7    # "tmp":I
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 454
    .end local v3    # "in":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 495
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 451
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "tempbytes":[B
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 457
    iget-object v8, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mPatchData:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->checkSum(Ljava/util/ArrayList;)V

    .line 458
    const-string v8, "zznkey"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readSuotaImageData,imageData.size()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mPatchData:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v4, "spi:clk=0x00,cs=0x03,mosi=0x06,miso=0x05,blocksize=240"

    .line 486
    .local v4, "mSettings":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->setSuotaSettings(Ljava/lang/String;)Z

    move-result v5

    .line 487
    .local v5, "set":Z
    if-nez v5, :cond_2

    .line 491
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "set the setting ini error"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v2, v3

    .line 492
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 494
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_2
    iput-boolean v11, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->readDataIsOver:Z

    move-object v2, v3

    .line 495
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 452
    .end local v4    # "mSettings":Ljava/lang/String;
    .end local v5    # "set":Z
    .end local v6    # "tempbytes":[B
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public suotaRebootDev()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 888
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 889
    .local v0, "endCode":[B
    const/4 v1, 0x3

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    .line 890
    const/4 v1, 0x2

    aput-byte v3, v0, v3

    aput-byte v3, v0, v4

    aput-byte v3, v0, v1

    .line 891
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v1, v0, v4}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaServiceWriteCharas(Ljava/util/UUID;[BZ)V

    .line 892
    return-void
.end method

.method public suotaServiceWriteCharas(Ljava/util/UUID;[BZ)V
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "value"    # [B
    .param p3, "isWrite"    # Z

    .prologue
    .line 775
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-nez v6, :cond_1

    .line 777
    const-string v6, "zznkey"

    const-string v7, "writeChara,mBluetoothLeService = null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v6}, Lcom/veclink/hw/bleservice/VLBleService;->getSupportedGattServices()Ljava/util/List;

    move-result-object v1

    .line 782
    .local v1, "bluetoothGattServices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    if-nez v1, :cond_2

    .line 784
    const-string v6, "zznkey"

    const-string v7, "writeChara,bluetoothGattServices = null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 788
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 790
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 791
    .local v0, "bluetoothGattService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 794
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 795
    .local v5, "size":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_3

    .line 798
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 800
    .local v2, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 803
    if-eqz p3, :cond_5

    .line 805
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v6, :cond_4

    .line 809
    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 810
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v6, v2}, Lcom/veclink/hw/bleservice/VLBleService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 788
    .end local v2    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v4    # "j":I
    .end local v5    # "size":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 814
    .restart local v2    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v4    # "j":I
    .restart local v5    # "size":I
    :cond_4
    const-string v6, "zznkey"

    const-string v7, "writeChara,mBluetoothLeService = null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 819
    :cond_5
    iget-object v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Lcom/veclink/hw/bleservice/VLBleService;->setSuotaCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    goto :goto_3

    .line 795
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public suotaUpdateStart()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->isUpdateing:Z

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mIsWriteLastLen:Z

    .line 347
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaWriteMemDev()V

    .line 348
    return-void
.end method

.method public suotaWriteChunk()V
    .locals 6

    .prologue
    .line 858
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckLength:I

    new-array v0, v3, [B

    .line 859
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 861
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mPatchData:Ljava/util/ArrayList;

    iget v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    iget v5, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mChunckOffset:I

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 862
    .local v2, "tmp":I
    int-to-byte v3, v2

    aput-byte v3, v0, v1

    .line 859
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 865
    .end local v2    # "tmp":I
    :cond_0
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v0, v4}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaServiceWriteCharas(Ljava/util/UUID;[BZ)V

    .line 866
    const/4 v3, 0x3

    iput v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    .line 867
    invoke-virtual {p0}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->nextChunk()V

    .line 868
    return-void
.end method

.method public suotaWriteDataLen(I)V
    .locals 5
    .param p1, "datalen"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 763
    new-array v0, v4, [B

    .line 764
    .local v0, "len":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 765
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 767
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v1, v0, v3}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaServiceWriteCharas(Ljava/util/UUID;[BZ)V

    .line 768
    iput v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    .line 769
    const-string v1, "zznkey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeSuotaDataLen,datalen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return-void
.end method

.method public suotaWriteEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 873
    new-array v0, v5, [B

    .line 874
    .local v0, "endCode":[B
    const/4 v1, 0x3

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    .line 875
    const/4 v1, 0x2

    aput-byte v3, v0, v3

    aput-byte v3, v0, v4

    aput-byte v3, v0, v1

    .line 876
    iput v5, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    .line 877
    const-string v1, "zznkey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suotaWriteEnd:mBlockOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mBlockOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mImageDataLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mImageDataLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v1, v0, v4}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaServiceWriteCharas(Ljava/util/UUID;[BZ)V

    .line 882
    return-void
.end method

.method public suotaWriteMemDev()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 353
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 354
    .local v2, "mem_dev":[B
    iput v4, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    .line 355
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mMemoryType:I

    if-nez v3, :cond_0

    .line 357
    const/16 v3, 0x12

    aput-byte v3, v2, v5

    .line 365
    :goto_0
    const/4 v3, 0x2

    aput-byte v4, v2, v4

    aput-byte v4, v2, v3

    aput-byte v4, v2, v6

    .line 366
    const-string v1, ""

    .line 367
    .local v1, "memString":Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    const/4 v3, -0x1

    if-le v0, v3, :cond_3

    .line 369
    aget-byte v3, v2, v0

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 358
    .end local v0    # "i":I
    .end local v1    # "memString":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mMemoryType:I

    if-ne v3, v6, :cond_1

    .line 360
    const/16 v3, 0x13

    aput-byte v3, v2, v5

    goto :goto_0

    .line 363
    :cond_1
    aput-byte v4, v2, v5

    goto :goto_0

    .line 374
    .restart local v0    # "i":I
    .restart local v1    # "memString":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 378
    :cond_3
    const-string v3, "zznkey"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spotaWriteMemDev,mem_dev=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v3, v2, v6}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaServiceWriteCharas(Ljava/util/UUID;[BZ)V

    .line 381
    return-void
.end method

.method public suotaWriteMemGpioMap()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 386
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 387
    .local v2, "mem_gpio_map":[B
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mMemoryType:I

    if-nez v3, :cond_0

    .line 389
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mI2cSdaGpio:I

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 390
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mI2cSclGpio:I

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    .line 391
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mAddress:I

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 392
    aput-byte v4, v2, v7

    .line 406
    :goto_0
    iput v6, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpotaWriteStatus:I

    .line 408
    const-string v1, ""

    .line 409
    .local v1, "mapString":Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    const/4 v3, -0x1

    if-le v0, v3, :cond_3

    .line 411
    aget-byte v3, v2, v0

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 393
    .end local v0    # "i":I
    .end local v1    # "mapString":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mMemoryType:I

    if-ne v3, v6, :cond_1

    .line 395
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiClkGpio:I

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 396
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiCsGpio:I

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    .line 397
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiMosiGpio:I

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 398
    iget v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->mSpiMisoGpio:I

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    goto :goto_0

    .line 401
    :cond_1
    aput-byte v4, v2, v4

    .line 402
    aput-byte v4, v2, v6

    .line 403
    aput-byte v4, v2, v5

    .line 404
    aput-byte v4, v2, v7

    goto :goto_0

    .line 417
    .restart local v0    # "i":I
    .restart local v1    # "mapString":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 422
    :cond_3
    const-string v3, "zznkey"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spotaWriteGpioMap,mem_gpio_map=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v3, v2, v6}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaServiceWriteCharas(Ljava/util/UUID;[BZ)V

    .line 424
    return-void
.end method

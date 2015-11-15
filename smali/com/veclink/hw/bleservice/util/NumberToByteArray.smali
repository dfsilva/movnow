.class public Lcom/veclink/hw/bleservice/util/NumberToByteArray;
.super Ljava/lang/Object;
.source "NumberToByteArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToChar([B)C
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 30
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    int-to-long v1, v1

    const-wide/32 v3, 0xff00

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-char v0, v1

    .line 31
    .local v0, "c":C
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-char v1, v1

    or-int/2addr v1, v0

    int-to-char v0, v1

    .line 32
    return v0
.end method

.method public static bytesToDouble([B)D
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 44
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->bytesToLong([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bytesToFloat([B)F
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 56
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->bytesToInt([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static bytesToInt([B)I
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 68
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int v0, v1, v2

    .line 69
    .local v0, "i":I
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 70
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 71
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 72
    return v0
.end method

.method public static bytesToLong([B)J
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 84
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    const-wide/high16 v4, -0x100000000000000L

    and-long v0, v2, v4

    .line 86
    .local v0, "l":J
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 87
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    const-wide v4, 0xff0000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 88
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xff00000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 89
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 90
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 91
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 92
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 93
    return-wide v0
.end method

.method public static charToBytes(C)[B
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 104
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 105
    .local v0, "b":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 106
    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 107
    return-object v0
.end method

.method public static doubleToBytes(D)[B
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 118
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->longToBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public static floatToBytes(F)[B
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 129
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/NumberToByteArray;->intToBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static intToBytes(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 140
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 141
    .local v0, "b":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 142
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 143
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 144
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 145
    return-object v0
.end method

.method public static longToBytes(J)[B
    .locals 5
    .param p0, "l"    # J

    .prologue
    const/16 v4, 0x8

    .line 156
    new-array v0, v4, [B

    .line 157
    .local v0, "b":[B
    const/4 v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 158
    const/4 v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 159
    const/4 v1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 160
    const/4 v1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 161
    const/4 v1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 162
    const/4 v1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 163
    const/4 v1, 0x6

    ushr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 164
    const/4 v1, 0x7

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 165
    return-object v0
.end method

.class public Lcom/veclink/movnow_q2/util/StringByteUtil;
.super Ljava/lang/Object;
.source "StringByteUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteBitStringByArray([B)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [B

    .prologue
    .line 53
    const-string v1, ""

    .line 54
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-object v1
.end method

.method public static byteToBit(B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x7

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x1

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x0

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static charToByte(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 21
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static decodeBinaryString(Ljava/lang/String;)B
    .locals 6
    .param p0, "byteStr"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 74
    if-nez p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v2

    .line 77
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    .local v0, "len":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-ne v0, v5, :cond_0

    .line 81
    :cond_2
    if-ne v0, v5, :cond_4

    .line 82
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    .line 83
    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 90
    .local v1, "re":I
    :goto_1
    int-to-byte v2, v1

    goto :goto_0

    .line 85
    .end local v1    # "re":I
    :cond_3
    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit16 v1, v2, -0x100

    .restart local v1    # "re":I
    goto :goto_1

    .line 88
    .end local v1    # "re":I
    :cond_4
    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "re":I
    goto :goto_1
.end method

.method public static getBooleanArray(B)[B
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 44
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 45
    .local v0, "array":[B
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 46
    and-int/lit8 v2, p0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 47
    shr-int/lit8 v2, p0, 0x1

    int-to-byte p0, v2

    .line 45
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 6
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 18
    :cond_1
    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 11
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 12
    .local v1, "hexChars":[C
    new-array v0, v3, [B

    .line 13
    .local v0, "d":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 14
    mul-int/lit8 v4, v2, 0x2

    .line 15
    .local v4, "pos":I
    aget-char v5, v1, v4

    invoke-static {v5}, Lcom/veclink/movnow_q2/util/StringByteUtil;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/veclink/movnow_q2/util/StringByteUtil;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 13
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static printHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 27
    const-string v0, ""

    .line 28
    .local v0, "a":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 29
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "hex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "hex":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

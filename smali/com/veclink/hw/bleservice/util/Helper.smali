.class public final Lcom/veclink/hw/bleservice/util/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CRC16([B)I
    .locals 8
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    const v7, 0xffff

    .line 12
    const/4 v0, 0x0

    .line 13
    .local v0, "i1":I
    const v1, 0xffff

    .line 16
    .local v1, "i2":I
    :goto_0
    array-length v5, p0

    if-lt v0, v5, :cond_0

    .line 17
    and-int v5, v1, v7

    return v5

    .line 18
    :cond_0
    ushr-int/lit8 v5, v1, 0x8

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v5, v6

    and-int/2addr v5, v7

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    xor-int v2, v5, v6

    .line 19
    .local v2, "i3":I
    and-int/lit16 v5, v2, 0xff

    shr-int/lit8 v5, v5, 0x4

    xor-int v3, v2, v5

    .line 20
    .local v3, "i4":I
    shl-int/lit8 v5, v3, 0xc

    and-int/2addr v5, v7

    xor-int v4, v3, v5

    .line 21
    .local v4, "i5":I
    and-int/lit16 v5, v4, 0xff

    shl-int/lit8 v5, v5, 0x5

    and-int/2addr v5, v7

    xor-int v1, v4, v5

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0
.end method

.method public static CRC8([B)I
    .locals 4
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "i1":I
    const/4 v1, 0x0

    .line 33
    .local v1, "i2":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 34
    return v1

    .line 35
    :cond_0
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v1, v3

    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, "i3":I
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    .line 41
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    .line 42
    :cond_1
    shr-int/lit8 v3, v1, 0x1

    and-int/lit16 v3, v3, 0xff

    xor-int/lit16 v1, v3, 0x8c

    .line 44
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    shr-int/lit8 v3, v1, 0x1

    and-int/lit16 v1, v3, 0xff

    goto :goto_1

    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bytesToDeviceId([B)Ljava/lang/String;
    .locals 6
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v3, "localStringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 89
    aget-byte v1, p0, v2

    .line 90
    .local v1, "b1":B
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 91
    .local v0, "arrayOfObject":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v0, v4

    .line 92
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    .line 93
    const-string v4, "%02x"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const-string v4, "%02x-"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 99
    .end local v0    # "arrayOfObject":[Ljava/lang/Object;
    .end local v1    # "b1":B
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v3, "localStringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 61
    aget-byte v1, p0, v2

    .line 62
    .local v1, "b1":B
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 63
    .local v0, "arrayOfObject":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v0, v4

    .line 64
    const-string v4, "%02x "

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "arrayOfObject":[Ljava/lang/Object;
    .end local v1    # "b1":B
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static bytesToNoSpaceHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v3, "localStringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 75
    aget-byte v1, p0, v2

    .line 76
    .local v1, "b1":B
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 77
    .local v0, "arrayOfObject":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v0, v4

    .line 78
    const-string v4, "%02x"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "arrayOfObject":[Ljava/lang/Object;
    .end local v1    # "b1":B
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getNeedSendNumberByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "phonenumber"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Helper;->str2Bcd(Ljava/lang/String;)[B

    move-result-object v0

    .line 153
    .local v0, "bcdArray":[B
    const/16 v3, 0x8

    new-array v2, v3, [B

    .line 154
    .local v2, "msgContentByteArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 155
    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 158
    aget-byte v3, v0, v1

    aput-byte v3, v2, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_1
    return-object v2
.end method

.method public static str2Bcd(Ljava/lang/String;)[B
    .locals 15
    .param p0, "asc"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x7a

    const/16 v13, 0x61

    const/16 v12, 0x39

    const/16 v11, 0x30

    .line 108
    const-string v9, "\\+"

    const-string v10, "a"

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 110
    .local v6, "len":I
    rem-int/lit8 v7, v6, 0x2

    .line 112
    .local v7, "mod":I
    if-eqz v7, :cond_0

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "F"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 117
    :cond_0
    new-array v1, v6, [B

    .line 118
    .local v1, "abt":[B
    const/4 v9, 0x2

    if-lt v6, v9, :cond_1

    .line 119
    div-int/lit8 v6, v6, 0x2

    .line 122
    :cond_1
    new-array v3, v6, [B

    .line 123
    .local v3, "bbt":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 126
    const/4 v8, 0x0

    .local v8, "p":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_6

    .line 127
    mul-int/lit8 v9, v8, 0x2

    aget-byte v9, v1, v9

    if-lt v9, v11, :cond_2

    mul-int/lit8 v9, v8, 0x2

    aget-byte v9, v1, v9

    if-gt v9, v12, :cond_2

    .line 128
    mul-int/lit8 v9, v8, 0x2

    aget-byte v9, v1, v9

    add-int/lit8 v4, v9, -0x30

    .line 135
    .local v4, "j":I
    :goto_1
    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, v1, v9

    if-lt v9, v11, :cond_4

    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, v1, v9

    if-gt v9, v12, :cond_4

    .line 136
    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, v1, v9

    add-int/lit8 v5, v9, -0x30

    .line 143
    .local v5, "k":I
    :goto_2
    shl-int/lit8 v9, v4, 0x4

    add-int v0, v9, v5

    .line 144
    .local v0, "a":I
    int-to-byte v2, v0

    .line 145
    .local v2, "b":B
    aput-byte v2, v3, v8

    .line 126
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "a":I
    .end local v2    # "b":B
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_2
    mul-int/lit8 v9, v8, 0x2

    aget-byte v9, v1, v9

    if-lt v9, v13, :cond_3

    mul-int/lit8 v9, v8, 0x2

    aget-byte v9, v1, v9

    if-gt v9, v14, :cond_3

    .line 130
    mul-int/lit8 v9, v8, 0x2

    aget-byte v9, v1, v9

    add-int/lit8 v9, v9, -0x61

    add-int/lit8 v4, v9, 0xa

    .restart local v4    # "j":I
    goto :goto_1

    .line 132
    .end local v4    # "j":I
    :cond_3
    mul-int/lit8 v9, v8, 0x2

    aget-byte v9, v1, v9

    add-int/lit8 v9, v9, -0x41

    add-int/lit8 v4, v9, 0xa

    .restart local v4    # "j":I
    goto :goto_1

    .line 137
    :cond_4
    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, v1, v9

    if-lt v9, v13, :cond_5

    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, v1, v9

    if-gt v9, v14, :cond_5

    .line 138
    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, v1, v9

    add-int/lit8 v9, v9, -0x61

    add-int/lit8 v5, v9, 0xa

    .restart local v5    # "k":I
    goto :goto_2

    .line 140
    .end local v5    # "k":I
    :cond_5
    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, v1, v9

    add-int/lit8 v9, v9, -0x41

    add-int/lit8 v5, v9, 0xa

    .restart local v5    # "k":I
    goto :goto_2

    .line 147
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_6
    return-object v3
.end method

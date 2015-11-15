.class public Lcom/veclink/movnow_q2/network/base/Encodes;
.super Ljava/lang/Object;
.source "Encodes.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v5, 0x0

    .line 21
    .local v5, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 27
    .local v1, "charArray":[C
    array-length v8, v1

    new-array v0, v8, [B

    .line 29
    .local v0, "byteArray":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v1

    if-ge v4, v8, :cond_0

    .line 30
    aget-char v8, v1, v4

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "byteArray":[B
    .end local v1    # "charArray":[C
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 23
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, ""

    .line 42
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 32
    .restart local v0    # "byteArray":[B
    .restart local v1    # "charArray":[C
    .restart local v4    # "i":I
    :cond_0
    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 34
    .local v6, "md5Bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    .local v3, "hexValue":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    :goto_2
    array-length v8, v6

    if-ge v4, v8, :cond_2

    .line 36
    aget-byte v8, v6, v4

    and-int/lit16 v7, v8, 0xff

    .line 37
    .local v7, "val":I
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 38
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 42
    .end local v7    # "val":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    const-string v2, " "

    const-string v3, "+"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/String;

    const-string v3, "base64 error"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 82
    .local v0, "data":[B
    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encryptmd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 48
    .local v0, "a":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 49
    aget-char v3, v0, v1

    xor-int/lit8 v3, v3, 0x6c

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 52
    .local v2, "s":Ljava/lang/String;
    return-object v2
.end method

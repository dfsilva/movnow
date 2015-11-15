.class public Lcom/veclink/hw/bleservice/util/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ageChangeToBinaryString(I)Ljava/lang/String;
    .locals 5
    .param p0, "age"    # I

    .prologue
    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "ageString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    .line 64
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x7

    if-ge v2, v3, :cond_0

    .line 66
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .end local v0    # "ageString":Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static booleanAraytoByte([Z)B
    .locals 4
    .param p0, "array"    # [Z

    .prologue
    .line 49
    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "b":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 52
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    .line 53
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    add-int/2addr v2, v0

    int-to-byte v0, v2

    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "b":B
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public static byteToBitString(B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 17
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

.method public static decodeBinaryStringToBit(Ljava/lang/String;)B
    .locals 6
    .param p0, "byteStr"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 29
    if-nez p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v2

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 33
    .local v0, "len":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-ne v0, v5, :cond_0

    .line 36
    :cond_2
    if-ne v0, v5, :cond_4

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    .line 38
    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, "re":I
    :goto_1
    int-to-byte v2, v1

    goto :goto_0

    .line 40
    .end local v1    # "re":I
    :cond_3
    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit16 v1, v2, -0x100

    .restart local v1    # "re":I
    goto :goto_1

    .line 43
    .end local v1    # "re":I
    :cond_4
    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "re":I
    goto :goto_1
.end method

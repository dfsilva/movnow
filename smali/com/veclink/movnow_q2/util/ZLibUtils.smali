.class public abstract Lcom/veclink/movnow_q2/util/ZLibUtils;
.super Ljava/lang/Object;
.source "ZLibUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress([BLjava/io/OutputStream;)V
    .locals 4
    .param p0, "data"    # [B
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 71
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 74
    .local v0, "dos":Ljava/util/zip/DeflaterOutputStream;
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 76
    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 78
    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static compress([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 32
    new-array v5, v6, [B

    .line 34
    .local v5, "output":[B
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 36
    .local v2, "compresser":Ljava/util/zip/Deflater;
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->reset()V

    .line 37
    invoke-virtual {v2, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 38
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v6, p0

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 41
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    :try_start_0
    new-array v1, v6, [B

    .line 42
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v6

    if-nez v6, :cond_0

    .line 43
    invoke-virtual {v2, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v4

    .line 44
    .local v4, "i":I
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    .end local v1    # "buf":[B
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 48
    .local v3, "e":Ljava/lang/Exception;
    move-object v5, p0

    .line 49
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 57
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 58
    return-object v5

    .line 46
    .restart local v1    # "buf":[B
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 52
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 53
    :catch_1
    move-exception v3

    .line 54
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 53
    .end local v1    # "buf":[B
    .local v3, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 54
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 51
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 52
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 55
    :goto_2
    throw v6

    .line 53
    :catch_3
    move-exception v3

    .line 54
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static decompress(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 129
    new-instance v3, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v3, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 130
    .local v3, "iis":Ljava/util/zip/InflaterInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 132
    .local v4, "o":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    .line 133
    .local v2, "i":I
    :try_start_0
    new-array v0, v2, [B

    .line 135
    .local v0, "buf":[B
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    .line 136
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v0    # "buf":[B
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public static decompress([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 92
    new-array v5, v6, [B

    .line 94
    .local v5, "output":[B
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 95
    .local v1, "decompresser":Ljava/util/zip/Inflater;
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V

    .line 96
    invoke-virtual {v1, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 98
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v6, p0

    invoke-direct {v4, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 100
    .local v4, "o":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [B

    .line 101
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v6

    if-nez v6, :cond_0

    .line 102
    invoke-virtual {v1, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    .line 103
    .local v3, "i":I
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    .end local v0    # "buf":[B
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    move-object v5, p0

    .line 108
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 118
    return-object v5

    .line 105
    .restart local v0    # "buf":[B
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 111
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 112
    :catch_1
    move-exception v2

    .line 113
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 112
    .end local v0    # "buf":[B
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 113
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 111
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 114
    :goto_2
    throw v6

    .line 112
    :catch_3
    move-exception v2

    .line 113
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.class public Lcom/veclink/movnow_q2/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileByte(Ljava/lang/String;)[B
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1000

    .line 21
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, "in":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 24
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    :try_start_0
    new-array v0, v4, [B

    .line 25
    .local v0, "buffer":[B
    const/4 v2, -0x1

    .line 26
    .local v2, "nrOfBytes":I
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 27
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 30
    .end local v0    # "buffer":[B
    .end local v2    # "nrOfBytes":I
    :catch_0
    move-exception v4

    .line 34
    if-eqz v1, :cond_0

    .line 35
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 40
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 41
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 47
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 29
    .restart local v0    # "buffer":[B
    .restart local v2    # "nrOfBytes":I
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    if-eqz v1, :cond_3

    .line 35
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 40
    :cond_3
    :goto_3
    if-eqz v3, :cond_1

    .line 41
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 43
    :catch_1
    move-exception v4

    goto :goto_2

    .line 33
    .end local v0    # "buffer":[B
    .end local v2    # "nrOfBytes":I
    :catchall_0
    move-exception v4

    .line 34
    if-eqz v1, :cond_4

    .line 35
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 40
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 41
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 44
    :cond_5
    :goto_5
    throw v4

    .line 37
    .restart local v0    # "buffer":[B
    .restart local v2    # "nrOfBytes":I
    :catch_2
    move-exception v4

    goto :goto_3

    .end local v0    # "buffer":[B
    .end local v2    # "nrOfBytes":I
    :catch_3
    move-exception v4

    goto :goto_1

    .line 43
    :catch_4
    move-exception v4

    goto :goto_2

    .line 37
    :catch_5
    move-exception v5

    goto :goto_4

    .line 43
    :catch_6
    move-exception v5

    goto :goto_5
.end method

.class public Lcom/veclink/hw/bleservice/util/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field public static final MOVNOW_DATA_DIR:Ljava/lang/String; = "Movnow"

.field private static final MOVNOW_DATA_DIR_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Movnow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/veclink/hw/bleservice/util/StorageUtil;->MOVNOW_DATA_DIR_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDataDir()Z
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/veclink/hw/bleservice/util/StorageUtil;->MOVNOW_DATA_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 29
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static deleteRomAferUpdate(Ljava/lang/String;)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    :cond_0
    return-void
.end method

.method public static downloadLastestRom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "urlPath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v4, 0x0

    .line 45
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 46
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 47
    .local v5, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/veclink/hw/bleservice/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 50
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v8, 0x1388

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 51
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 52
    new-instance v4, Ljava/io/FileOutputStream;

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 53
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 56
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 57
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 61
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 62
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 63
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 64
    :cond_3
    return-object v3
.end method

.method public static getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/16 v10, 0x400

    .line 76
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 94
    :goto_0
    return-object v8

    .line 78
    :cond_0
    const/4 v2, 0x0

    .line 79
    .local v2, "digest":Ljava/security/MessageDigest;
    const/4 v5, 0x0

    .line 80
    .local v5, "in":Ljava/io/FileInputStream;
    new-array v1, v10, [B

    .line 83
    .local v1, "buffer":[B
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 84
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v6, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v9, 0x0

    const/16 v10, 0x400

    :try_start_1
    invoke-virtual {v6, v1, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .local v7, "len":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    .line 86
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 89
    .end local v7    # "len":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 90
    .end local v6    # "in":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "len":I
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 94
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 89
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v7    # "len":I
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static getMovnowDataDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/veclink/hw/bleservice/util/StorageUtil;->createDataDir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/veclink/hw/bleservice/util/StorageUtil;->MOVNOW_DATA_DIR_PATH:Ljava/lang/String;

    .line 37
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

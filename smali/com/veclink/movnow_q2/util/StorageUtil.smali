.class public Lcom/veclink/movnow_q2/util/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field public static final FAMILY_NUMBR_REMIND_FILENAME:Ljava/lang/String; = "family_phone_number_file.wao"

.field public static final MOVNOW_DATA_DIR:Ljava/lang/String; = "Movnow_Q2"

.field private static final MOVNOW_DATA_DIR_PATH:Ljava/lang/String;

.field private static final MOVNOW_USER_PIC_DIR_PATH:Ljava/lang/String;

.field public static final SITTING_REMIND_FILENAME:Ljava/lang/String; = "sitting_remind_objects_file.wao"

.field public static final USER_PIC_DIR_PATH:Ljava/lang/String;

.field public static final WAKEUP_REMIND_FILENAME:Ljava/lang/String; = "wakeup_remind_objects_file.wao"

.field public static final WATER_REMIND_FILENAME:Ljava/lang/String; = "water_remind_objects_file.wao"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Movnow_Q2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Favicon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/veclink/movnow_q2/util/StorageUtil;->USER_PIC_DIR_PATH:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Movnow_Q2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/veclink/movnow_q2/util/StorageUtil;->MOVNOW_DATA_DIR_PATH:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/veclink/movnow_q2/util/StorageUtil;->USER_PIC_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/veclink/movnow_q2/util/StorageUtil;->MOVNOW_USER_PIC_DIR_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDataDir()Z
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/veclink/movnow_q2/util/StorageUtil;->MOVNOW_DATA_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 44
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
    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 93
    :cond_0
    return-void
.end method

.method public static delteAllRemindObject(Landroid/content/Context;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 159
    .local v1, "fileDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "water_remind_objects_file.wao"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 161
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sitting_remind_objects_file.wao"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 163
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wakeup_remind_objects_file.wao"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileDir":Ljava/io/File;
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v2

    goto :goto_0
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
    .line 66
    const/4 v4, 0x0

    .line 67
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 68
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 69
    .local v5, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

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

    .line 70
    .local v3, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 72
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v8, 0x1388

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 73
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 74
    new-instance v4, Ljava/io/FileOutputStream;

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 75
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 78
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 79
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 82
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 83
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 84
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 85
    :cond_3
    return-object v3
.end method

.method public static getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/16 v10, 0x400

    .line 97
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 115
    :goto_0
    return-object v8

    .line 99
    :cond_0
    const/4 v2, 0x0

    .line 100
    .local v2, "digest":Ljava/security/MessageDigest;
    const/4 v5, 0x0

    .line 101
    .local v5, "in":Ljava/io/FileInputStream;
    new-array v1, v10, [B

    .line 104
    .local v1, "buffer":[B
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 105
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
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

    .line 107
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 110
    .end local v7    # "len":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 111
    .end local v6    # "in":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "len":I
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 115
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 110
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
    .line 49
    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->createDataDir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/veclink/movnow_q2/util/StorageUtil;->MOVNOW_DATA_DIR_PATH:Ljava/lang/String;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMovnowUserPicDirPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/veclink/movnow_q2/util/StorageUtil;->MOVNOW_USER_PIC_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_0
    sget-object v1, Lcom/veclink/movnow_q2/util/StorageUtil;->MOVNOW_USER_PIC_DIR_PATH:Ljava/lang/String;

    return-object v1
.end method

.method public static readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movmow/allen/nurse/RemindObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 139
    .local v3, "fileDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 142
    .local v4, "input":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 143
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 152
    .end local v4    # "input":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v5

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v6, "readRemindObject"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/DebugUtil;->wpringtln(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "readRemindObject"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/DebugUtil;->wpringtln(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "readRemindObject"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/DebugUtil;->wpringtln(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveLogFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "logFileName"    # Ljava/lang/String;
    .param p1, "newLog"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v7, 0x0

    .line 172
    .local v7, "sc":Ljava/util/Scanner;
    const/4 v4, 0x0

    .line 173
    .local v4, "pw":Ljava/io/PrintWriter;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 174
    .local v0, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/veclink/movnow_q2/util/StorageUtil;->MOVNOW_DATA_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "log":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 178
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v3, "parentDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 181
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 183
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 185
    .end local v3    # "parentDir":Ljava/io/File;
    :cond_1
    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .end local v7    # "sc":Ljava/util/Scanner;
    .local v8, "sc":Ljava/util/Scanner;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v6, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 189
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v9, "\r\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 207
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    move-object v7, v8

    .line 208
    .end local v8    # "sc":Ljava/util/Scanner;
    .local v1, "ex":Ljava/io/IOException;
    .restart local v7    # "sc":Ljava/util/Scanner;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_2
    return-void

    .line 192
    .end local v7    # "sc":Ljava/util/Scanner;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "sc":Ljava/util/Scanner;
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V

    .line 194
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/4 v10, 0x1

    invoke-direct {v5, v9, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .local v5, "pw":Ljava/io/PrintWriter;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    .end local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    move-object v7, v8

    .line 209
    .end local v8    # "sc":Ljava/util/Scanner;
    .restart local v7    # "sc":Ljava/util/Scanner;
    goto :goto_2

    .line 207
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v1

    goto :goto_1

    .end local v4    # "pw":Ljava/io/PrintWriter;
    .end local v7    # "sc":Ljava/util/Scanner;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "sc":Ljava/util/Scanner;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    move-object v7, v8

    .end local v8    # "sc":Ljava/util/Scanner;
    .restart local v7    # "sc":Ljava/util/Scanner;
    goto :goto_1
.end method

.method public static writeRemindObject(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movmow/allen/nurse/RemindObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 120
    .local v2, "fileDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    .local v3, "outPut":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 125
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .end local v3    # "outPut":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

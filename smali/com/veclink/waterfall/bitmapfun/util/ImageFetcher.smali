.class public Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;
.super Lcom/veclink/waterfall/bitmapfun/util/ImageResizer;
.source "ImageFetcher.java"


# static fields
.field public static final HTTP_CACHE_DIR:Ljava/lang/String; = "http"

.field private static final HTTP_CACHE_SIZE:I = 0xa00000

.field private static final TAG:Ljava/lang/String; = "ImageFetcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageResizer;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageResizer;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private checkConnection(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 79
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 80
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    :cond_0
    const-string v2, "No network connection found."

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 82
    const-string v2, "ImageFetcher"

    const-string v3, "checkConnection - no connection found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    return-void
.end method

.method public static downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v11, "http"

    invoke-static {p0, v11}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 122
    .local v3, "cacheDir":Ljava/io/File;
    const-wide/32 v11, 0xa00000

    invoke-static {p0, v3, v11, v12}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->openCache(Landroid/content/Context;Ljava/io/File;J)Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    move-result-object v2

    .line 125
    .local v2, "cache":Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->createFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v4, "cacheFile":Ljava/io/File;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 166
    .end local v4    # "cacheFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v4

    .line 133
    .restart local v4    # "cacheFile":Ljava/io/File;
    :cond_1
    invoke-static {}, Lcom/veclink/waterfall/bitmapfun/util/Utils;->disableConnectionReuseIfNecessary()V

    .line 134
    const/4 v10, 0x0

    .line 135
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 138
    .local v7, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 139
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 140
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const/16 v12, 0x2000

    invoke-direct {v6, v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 142
    .local v6, "in":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v12, 0x2000

    invoke-direct {v8, v11, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .local v8, "out":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "b":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_4

    .line 146
    invoke-virtual {v8, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 151
    .end local v1    # "b":I
    :catch_0
    move-exception v5

    move-object v7, v8

    .line 152
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    .end local v9    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/io/IOException;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    :try_start_2
    const-string v11, "ImageFetcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in downloadBitmap - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    if-eqz v10, :cond_2

    .line 155
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 157
    :cond_2
    if-eqz v7, :cond_3

    .line 159
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 166
    :cond_3
    :goto_3
    const/4 v4, 0x0

    goto :goto_0

    .line 154
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "b":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_4
    if-eqz v10, :cond_5

    .line 155
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 157
    :cond_5
    if-eqz v8, :cond_0

    .line 159
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 160
    :catch_1
    move-exception v5

    .line 161
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v11, "ImageFetcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in downloadBitmap - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    .end local v1    # "b":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v5

    .line 161
    const-string v11, "ImageFetcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in downloadBitmap - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 154
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v10, :cond_6

    .line 155
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 157
    :cond_6
    if-eqz v7, :cond_7

    .line 159
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 162
    :cond_7
    :goto_5
    throw v11

    .line 160
    :catch_3
    move-exception v5

    .line 161
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v12, "ImageFetcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in downloadBitmap - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 154
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "out":Ljava/io/BufferedOutputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 151
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "url":Ljava/net/URL;
    :catch_4
    move-exception v5

    goto/16 :goto_2
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;->checkConnection(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;->decodeSampledBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 108
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;->processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# static fields
.field private static final CACHE_FILENAME_PREFIX:Ljava/lang/String; = "cache_"

.field private static final INITIAL_CAPACITY:I = 0x20

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAX_REMOVALS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DiskLruCache"

.field private static final cacheFileFilter:Ljava/io/FilenameFilter;


# instance fields
.field private cacheByteSize:I

.field private cacheSize:I

.field private final mCacheDir:Ljava/io/File;

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private final mLinkedHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxCacheByteSize:J

.field private final maxCacheItemSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache$1;

    invoke-direct {v0}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache$1;-><init>()V

    sput-object v0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheFileFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .locals 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxByteSize"    # J

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheSize:I

    .line 58
    iput v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheByteSize:I

    .line 59
    const/16 v0, 0x40

    iput v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->maxCacheItemSize:I

    .line 60
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->maxCacheByteSize:J

    .line 61
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 62
    const/16 v0, 0x46

    iput v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCompressQuality:I

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x20

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    .line 107
    iput-object p1, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCacheDir:Ljava/io/File;

    .line 108
    iput-wide p2, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->maxCacheByteSize:J

    .line 109
    return-void
.end method

.method public static clearCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p0, p1}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 235
    .local v0, "cacheDir":Ljava/io/File;
    invoke-static {v0}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->clearCache(Ljava/io/File;)V

    .line 236
    return-void
.end method

.method private static clearCache(Ljava/io/File;)V
    .locals 3
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 247
    sget-object v2, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 248
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 249
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public static createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 286
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cache_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 291
    :goto_0
    return-object v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "DiskLruCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFilePath - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private flushCache()V
    .locals 9

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "count":I
    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    iget v5, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheSize:I

    const/16 v6, 0x40

    if-gt v5, v6, :cond_0

    iget v5, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheByteSize:I

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->maxCacheByteSize:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 156
    :cond_0
    iget-object v5, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 157
    .local v1, "eldestEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v2, "eldestFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 159
    .local v3, "eldestFileSize":J
    iget-object v5, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 161
    iget-object v5, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    iput v5, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheSize:I

    .line 162
    iget v5, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheByteSize:I

    int-to-long v5, v5

    sub-long/2addr v5, v3

    long-to-int v5, v5

    iput v5, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheByteSize:I

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "eldestEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "eldestFile":Ljava/io/File;
    .end local v3    # "eldestFileSize":J
    :cond_1
    return-void
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/veclink/waterfall/bitmapfun/util/Utils;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/veclink/waterfall/bitmapfun/util/Utils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "cachePath":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 267
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static openCache(Landroid/content/Context;Ljava/io/File;J)Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxByteSize"    # J

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/veclink/waterfall/bitmapfun/util/Utils;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_1

    .line 92
    new-instance v0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    invoke-direct {v0, p1, p2, p3}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;-><init>(Ljava/io/File;J)V

    .line 95
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheSize:I

    .line 140
    iget v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheByteSize:I

    int-to-long v0, v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->cacheByteSize:I

    .line 141
    return-void
.end method

.method private writeBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 330
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    .end local v0    # "out":Ljava/io/OutputStream;
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCompressQuality:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 333
    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_0
    return v2

    .line 333
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v2

    .line 333
    .end local v0    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->clearCache(Ljava/io/File;)V

    .line 221
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 202
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    :goto_0
    return v1

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v2, p1}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "existingFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v3, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v3

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, "file":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 180
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v3

    .line 189
    :goto_0
    return-object v2

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v2, p1}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "existingFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 190
    .end local v0    # "existingFile":Ljava/lang/String;
    .end local v1    # "file":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 189
    .restart local v0    # "existingFile":Ljava/lang/String;
    .restart local v1    # "file":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/graphics/Bitmap;

    .prologue
    .line 120
    iget-object v3, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v3

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 123
    :try_start_1
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCacheDir:Ljava/io/File;

    invoke-static {v2, p1}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->createFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "file":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->writeBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-direct {p0, p1, v1}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->flushCache()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v1    # "file":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 135
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "DiskLruCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in put: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 130
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "DiskLruCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in put: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setCompressParams(Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I

    .prologue
    .line 313
    iput-object p1, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 314
    iput p2, p0, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->mCompressQuality:I

    .line 315
    return-void
.end method

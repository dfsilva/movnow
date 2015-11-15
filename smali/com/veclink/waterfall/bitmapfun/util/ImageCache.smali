.class public Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLEAR_DISK_CACHE_ON_START:Z = false

.field private static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x46

.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0xa00000

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x500000

.field private static final TAG:Ljava/lang/String; = "ImageCache"


# instance fields
.field private mDiskCache:Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheParams"    # Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->init(Landroid/content/Context;Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-direct {v0, p2}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->init(Landroid/content/Context;Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 72
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;)Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "cacheParams"    # Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;->findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;

    move-result-object v1

    .line 103
    .local v1, "mRetainFragment":Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;
    invoke-virtual {v1}, Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    .line 106
    .local v0, "imageCache":Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    .end local v0    # "imageCache":Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
    invoke-direct {v0, p0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;-><init>(Landroid/content/Context;Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 108
    .restart local v0    # "imageCache":Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
    invoke-virtual {v1, v0}, Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;->setObject(Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-object v0
.end method

.method public static findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-direct {v0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;)Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheParams"    # Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;

    .prologue
    .line 121
    iget-object v1, p2, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->uniqueName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 124
    .local v0, "diskCacheDir":Ljava/io/File;
    iget-boolean v1, p2, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v1, :cond_0

    .line 125
    iget v1, p2, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v1, v1

    invoke-static {p1, v0, v1, v2}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->openCache(Landroid/content/Context;Ljava/io/File;J)Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mDiskCache:Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    .line 126
    iget-object v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mDiskCache:Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    iget-object v2, p2, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p2, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->compressQuality:I

    invoke-virtual {v1, v2, v3}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->setCompressParams(Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 127
    iget-boolean v1, p2, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mDiskCache:Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    invoke-virtual {v1}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->clearCache()V

    .line 133
    :cond_0
    iget-boolean v1, p2, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$1;

    iget v2, p2, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v1, p0, v2}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$1;-><init>(Lcom/veclink/waterfall/bitmapfun/util/ImageCache;I)V

    iput-object v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 145
    :cond_1
    return-void
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mDiskCache:Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mDiskCache:Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    invoke-virtual {v0, p1}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mDiskCache:Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public clearCaches()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mDiskCache:Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    invoke-virtual {v0}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->clearCache()V

    .line 195
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 196
    return-void
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mDiskCache:Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mDiskCache:Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;

    invoke-virtual {v0, p1}, Lcom/veclink/waterfall/bitmapfun/util/DiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 172
    .local v0, "memBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 177
    .end local v0    # "memBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

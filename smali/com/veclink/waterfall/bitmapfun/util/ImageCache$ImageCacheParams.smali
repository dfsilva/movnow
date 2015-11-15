.class public Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public clearDiskCacheOnStart:Z

.field public compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public compressQuality:I

.field public diskCacheEnabled:Z

.field public diskCacheSize:I

.field public memCacheSize:I

.field public memoryCacheEnabled:Z

.field public uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 204
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheSize:I

    .line 205
    # getter for: Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->access$000()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 206
    const/16 v0, 0x46

    iput v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->compressQuality:I

    .line 207
    iput-boolean v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 208
    iput-boolean v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    .line 212
    iput-object p1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;->uniqueName:Ljava/lang/String;

    .line 213
    return-void
.end method

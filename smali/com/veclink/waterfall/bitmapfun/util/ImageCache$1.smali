.class Lcom/veclink/waterfall/bitmapfun/util/ImageCache$1;
.super Landroid/support/v4/util/LruCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->init(Landroid/content/Context;Lcom/veclink/waterfall/bitmapfun/util/ImageCache$ImageCacheParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;


# direct methods
.method constructor <init>(Lcom/veclink/waterfall/bitmapfun/util/ImageCache;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 134
    iput-object p1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$1;->this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 134
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    invoke-static {p2}, Lcom/veclink/waterfall/bitmapfun/util/Utils;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

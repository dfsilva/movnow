.class Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncDrawable"
.end annotation


# instance fields
.field private final bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bitmapWorkerTask"    # Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 319
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    .line 320
    return-void
.end method


# virtual methods
.method public getBitmapWorkerTask()Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    return-object v0
.end method

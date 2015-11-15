.class Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;


# direct methods
.method public constructor <init>(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;)V
    .locals 1
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 224
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 295
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 296
    .local v1, "imageView":Landroid/widget/ImageView;
    # invokes: Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    invoke-static {v1}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->access$400(Landroid/widget/ImageView;)Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 298
    .local v0, "bitmapWorkerTask":Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    if-ne p0, v0, :cond_0

    .line 302
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :goto_0
    return-object v1

    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 232
    aget-object v2, p1, v3

    iput-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    .line 233
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "dataString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 243
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    # getter for: Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageCache:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
    invoke-static {v2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->access$100(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;)Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    # getter for: Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->access$200(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    # getter for: Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageCache:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
    invoke-static {v2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->access$100(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;)Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    # getter for: Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->access$200(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    # getter for: Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageCache:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
    invoke-static {v2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->access$100(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;)Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 266
    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    # getter for: Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageCache:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
    invoke-static {v2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->access$100(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;)Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 269
    :cond_2
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    # getter for: Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v1}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->access$200(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    :cond_0
    const/4 p1, 0x0

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 284
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 285
    iget-object v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    # invokes: Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->access$300(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 287
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 219
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

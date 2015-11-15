.class public abstract Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$ImageWorkerAdapter;,
        Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;,
        Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    }
.end annotation


# static fields
.field private static final FADE_IN_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ImageWorker"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mExitTasksEarly:Z

.field private mFadeInBitmap:Z

.field private mImageCache:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

.field protected mImageWorkerAdapter:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$ImageWorkerAdapter;

.field private mLoadingBitmap:Landroid/graphics/Bitmap;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mFadeInBitmap:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z

    .line 53
    iput-object p1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;)Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageCache:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$300(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ImageView;)Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method public static cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 4
    .param p0, "data"    # Ljava/lang/Object;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x1

    .line 184
    invoke-static {p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    .line 186
    .local v1, "bitmapWorkerTask":Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    if-eqz v1, :cond_1

    .line 187
    # getter for: Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;
    invoke-static {v1}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->access$000(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "bitmapData":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 189
    :cond_0
    invoke-virtual {v1, v2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 196
    .end local v0    # "bitmapData":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v2

    .line 193
    .restart local v0    # "bitmapData":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cancelWork(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 171
    invoke-static {p0}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 172
    .local v0, "bitmapWorkerTask":Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    if-eqz v0, :cond_0

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 176
    :cond_0
    return-void
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 206
    if-eqz p0, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 208
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 209
    check-cast v0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;

    .line 210
    .local v0, "asyncDrawable":Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {v0}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;->getBitmapWorkerTask()Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    move-result-object v2

    .line 213
    .end local v0    # "asyncDrawable":Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 335
    iget-boolean v1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mFadeInBitmap:Z

    if-eqz v1, :cond_0

    .line 338
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 341
    .local v0, "td":Landroid/graphics/drawable/TransitionDrawable;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 348
    .end local v0    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdapter()Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$ImageWorkerAdapter;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageWorkerAdapter:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$ImageWorkerAdapter;

    return-object v0
.end method

.method public getImageCache()Lcom/veclink/waterfall/bitmapfun/util/ImageCache;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageCache:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    return-object v0
.end method

.method public loadImage(ILandroid/widget/ImageView;)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageWorkerAdapter:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$ImageWorkerAdapter;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageWorkerAdapter:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$ImageWorkerAdapter;

    invoke-virtual {v0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$ImageWorkerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;)V

    .line 108
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data not set, must call setAdapter() first."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadImage(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageCache:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageCache:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/waterfall/bitmapfun/util/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76
    :cond_0
    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    invoke-static {p1, p2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    new-instance v2, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;

    invoke-direct {v2, p0, p2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;-><init>(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;Landroid/widget/ImageView;)V

    .line 81
    .local v2, "task":Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;
    new-instance v0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;

    iget-object v3, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v2}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;)V

    .line 82
    .local v0, "asyncDrawable":Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected abstract processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method public setAdapter(Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$ImageWorkerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$ImageWorkerAdapter;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageWorkerAdapter:Lcom/veclink/waterfall/bitmapfun/util/ImageWorker$ImageWorkerAdapter;

    .line 357
    return-void
.end method

.method public setExitTasksEarly(Z)V
    .locals 0
    .param p1, "exitTasksEarly"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mExitTasksEarly:Z

    .line 155
    return-void
.end method

.method public setImageCache(Lcom/veclink/waterfall/bitmapfun/util/ImageCache;)V
    .locals 0
    .param p1, "cacheCallback"    # Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mImageCache:Lcom/veclink/waterfall/bitmapfun/util/ImageCache;

    .line 137
    return-void
.end method

.method public setImageFadeIn(Z)V
    .locals 0
    .param p1, "fadeIn"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mFadeInBitmap:Z

    .line 151
    return-void
.end method

.method public setLoadingImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 128
    return-void
.end method

.method public setLoadingImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 118
    return-void
.end method

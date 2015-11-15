.class public Lcom/veclink/waterfall/bitmapfun/util/ImageResizer;
.super Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;
.source "ImageResizer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 146
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 147
    .local v0, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 148
    .local v4, "width":I
    const/4 v1, 0x1

    .line 150
    .local v1, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v4, p1, :cond_2

    .line 151
    :cond_0
    if-le v4, v0, :cond_1

    .line 152
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 164
    :goto_0
    mul-int v5, v4, v0

    int-to-float v2, v5

    .line 168
    .local v2, "totalPixels":F
    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 170
    .local v3, "totalReqPixelsCap":F
    :goto_1
    mul-int v5, v1, v1

    int-to-float v5, v5

    div-float v5, v2, v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    .end local v2    # "totalPixels":F
    .end local v3    # "totalReqPixelsCap":F
    :cond_1
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 174
    :cond_2
    return v1
.end method

.method public static declared-synchronized decodeSampledBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 113
    const-class v2, Lcom/veclink/waterfall/bitmapfun/util/ImageResizer;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 115
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 118
    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 122
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 113
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x1

    .line 84
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 85
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 86
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 89
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private processBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/ImageResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/veclink/waterfall/bitmapfun/util/ImageResizer;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/veclink/waterfall/bitmapfun/util/ImageResizer;->processBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

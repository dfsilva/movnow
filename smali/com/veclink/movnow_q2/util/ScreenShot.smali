.class public Lcom/veclink/movnow_q2/util/ScreenShot;
.super Ljava/lang/Object;
.source "ScreenShot.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQualityCompressBitmap(Landroid/graphics/Bitmap;I)I
    .locals 5
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I

    .prologue
    .line 51
    move v2, p1

    .line 53
    .local v2, "options":I
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 56
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    div-int/lit16 v3, v3, 0x400

    const/16 v4, 0x64

    if-le v3, v4, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 59
    add-int/lit8 v2, v2, -0xa

    .line 61
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v2

    .line 65
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static savePic(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/16 v5, 0x320

    const/16 v6, 0x1e0

    invoke-static {p0, v5, v6}, Lcom/veclink/movnow_q2/util/BitmapUtil;->compressBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, "b":Landroid/graphics/Bitmap;
    const/16 v5, 0x64

    :try_start_0
    invoke-static {p0, v5}, Lcom/veclink/movnow_q2/util/ScreenShot;->getQualityCompressBitmap(Landroid/graphics/Bitmap;I)I

    move-result v4

    .line 78
    .local v4, "quality":I
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 80
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 81
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 87
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "quality":I
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "quality":I
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 82
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static shoot(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/veclink/movnow_q2/util/ScreenShot;->takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/veclink/movnow_q2/util/ScreenShot;->savePic(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private static takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 23
    .local v5, "view":Landroid/view/View;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 24
    invoke-virtual {v5}, Landroid/view/View;->buildDrawingCache()V

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 27
    .local v1, "b1":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 29
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 30
    .local v4, "statusBarHeight":I
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 33
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 37
    .local v3, "height":I
    const/4 v7, 0x0

    sub-int v8, v3, v4

    invoke-static {v1, v7, v4, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/view/View;->destroyDrawingCache()V

    .line 40
    return-object v0
.end method

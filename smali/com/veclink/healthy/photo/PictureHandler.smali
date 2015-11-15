.class public Lcom/veclink/healthy/photo/PictureHandler;
.super Ljava/lang/Object;
.source "PictureHandler.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private mImageRotation:I

.field private mRecordHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "PictureHandler"

    iput-object v0, p0, Lcom/veclink/healthy/photo/PictureHandler;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/healthy/photo/PictureHandler;->mRecordHandler:Landroid/os/Handler;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/healthy/photo/PictureHandler;->mImageRotation:I

    .line 33
    iput-object p1, p0, Lcom/veclink/healthy/photo/PictureHandler;->context:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 20
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 43
    sget-object v19, Lcom/veclink/healthy/photo/Const;->ImagePath:Ljava/lang/String;

    .line 45
    .local v19, "rootPath":Ljava/lang/String;
    if-nez v19, :cond_0

    .line 46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/healthy/photo/PictureHandler;->context:Landroid/content/Context;

    const-string v3, "No directory to save image."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 101
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v11, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 52
    .local v11, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 53
    .local v10, "date":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clever_Cam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 55
    .local v17, "photoFile":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 57
    .local v14, "filename":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v18, "pictureFile":Ljava/io/File;
    const-string v2, "PictureHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filename is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v12, 0x1

    .line 62
    .local v12, "enableRotate":Z
    if-eqz v12, :cond_2

    .line 63
    :try_start_0
    const-string v2, "PictureHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImageRotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/healthy/photo/PictureHandler;->mImageRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v2, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    .local v1, "bMap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 70
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/healthy/photo/PictureHandler;->mImageRotation:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 71
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 72
    .local v8, "bMapRotate":Landroid/graphics/Bitmap;
    move-object v1, v8

    .line 74
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    .local v9, "bos":Ljava/io/BufferedOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 76
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 77
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "bMap":Landroid/graphics/Bitmap;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "bMapRotate":Landroid/graphics/Bitmap;
    .end local v9    # "bos":Ljava/io/BufferedOutputStream;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->startPreview()V

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/healthy/photo/PictureHandler;->mRecordHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/healthy/photo/PictureHandler;->mRecordHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v16

    .line 96
    .local v16, "msg":Landroid/os/Message;
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 100
    .end local v16    # "msg":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/healthy/photo/PictureHandler;->context:Landroid/content/Context;

    invoke-static {v2, v14}, Lcom/veclink/healthy/photo/AndroidUtil;->fileScan(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_2
    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v15, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 81
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 86
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v13

    .line 87
    .local v13, "error":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/healthy/photo/PictureHandler;->context:Landroid/content/Context;

    const-string v3, "Image could not be saved."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public setImageRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/veclink/healthy/photo/PictureHandler;->mImageRotation:I

    .line 38
    return-void
.end method

.method public setRecordHandler(Landroid/os/Handler;)V
    .locals 2
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 28
    const-string v0, "PictureHandler"

    const-string v1, "setRecordHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iput-object p1, p0, Lcom/veclink/healthy/photo/PictureHandler;->mRecordHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

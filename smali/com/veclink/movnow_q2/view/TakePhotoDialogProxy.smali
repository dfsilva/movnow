.class public Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;
.super Ljava/lang/Object;
.source "TakePhotoDialogProxy.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private aspectX:I

.field private aspectY:I

.field private b:Landroid/graphics/Bitmap;

.field private extendHandler:Landroid/os/Handler;

.field handler:Landroid/os/Handler;

.field private height:I

.field private iconStringFormatContent:Ljava/lang/String;

.field private iconView:Landroid/widget/ImageView;

.field private imgFile:Ljava/io/File;

.field private photoIconPath:Ljava/lang/String;

.field private takePhotoDialog:Lcom/veclink/movnow_q2/view/TakePhotoDialog;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "iconView"    # Landroid/widget/ImageView;

    .prologue
    const/16 v2, 0x96

    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->imgFile:Ljava/io/File;

    .line 47
    iput v2, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->width:I

    .line 48
    iput v2, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->height:I

    .line 49
    iput v1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->aspectX:I

    .line 50
    iput v1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->aspectY:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->photoIconPath:Ljava/lang/String;

    .line 195
    new-instance v0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;-><init>(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->handler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->activity:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->iconView:Landroid/widget/ImageView;

    .line 64
    new-instance v0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;

    const v1, 0x7f0b0015

    invoke-direct {v0, p1, v1}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->takePhotoDialog:Lcom/veclink/movnow_q2/view/TakePhotoDialog;

    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->takePhotoDialog:Lcom/veclink/movnow_q2/view/TakePhotoDialog;

    new-instance v1, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$1;-><init>(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->setTakePhotoListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->takePhotoDialog:Lcom/veclink/movnow_q2/view/TakePhotoDialog;

    new-instance v1, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$2;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$2;-><init>(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->setChooseLocalImgListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Lcom/veclink/movnow_q2/view/TakePhotoDialog;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->takePhotoDialog:Lcom/veclink/movnow_q2/view/TakePhotoDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->photoIconPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->extendHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cropImageUri(Landroid/net/Uri;III)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "outputX"    # I
    .param p3, "outputY"    # I
    .param p4, "requestCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const-string v1, "outputX"

    iget v2, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v1, "outputY"

    iget v2, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 255
    return-void
.end method


# virtual methods
.method public btnLocalPic()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/veclink/movnow_q2/view/Utils;->getInstance()Lcom/veclink/movnow_q2/view/Utils;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/Utils;->selectPicture(Landroid/app/Activity;)V

    .line 110
    return-void
.end method

.method public btnTakePic()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 91
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 92
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.camera"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->getPhotoFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->imgFile:Ljava/io/File;

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "output"

    iget-object v4, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->imgFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->activity:Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->activity:Landroid/app/Activity;

    const-string v4, "\u5f00\u542f\u76f8\u673a\u5931\u8d25"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->activity:Landroid/app/Activity;

    const-string v4, "\u8bbe\u5907\u65e0\u76f8\u673a"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected convertMediaUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 221
    const/4 v8, 0x0

    .line 222
    .local v8, "path":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 224
    .local v2, "proj":[Ljava/lang/String;
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 225
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 226
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 228
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 232
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "column_index":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v8

    .line 229
    :cond_1
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public getIconStringFormatContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->iconStringFormatContent:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "temp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/veclink/movnow_q2/network/base/Encodes;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPhotoIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->photoIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 118
    .local v9, "uri":Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->handler:Landroid/os/Handler;

    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void

    .line 120
    :pswitch_1
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    .line 122
    :try_start_0
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->imgFile:Ljava/io/File;

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    iget v11, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->width:I

    iget v12, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->height:I

    const/16 v13, 0x9

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->cropImageUri(Landroid/net/Uri;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v10

    goto :goto_0

    .line 128
    :pswitch_2
    if-eqz p3, :cond_1

    const-string v10, ""

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 129
    :cond_1
    sget-object v10, Lcom/veclink/movnow_q2/util/MessageModel;->CAPTURE_TEMP_FILE:Ljava/lang/String;

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->photoIconPath:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 133
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 134
    const-string v10, "data"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 135
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 136
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->imgFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 137
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->imgFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 140
    :cond_3
    const/16 v10, 0x64

    :try_start_1
    invoke-static {v1, v10}, Lcom/veclink/movnow_q2/util/BitmapUtil;->getQualityCompressBitmap(Landroid/graphics/Bitmap;I)I

    move-result v7

    .line 141
    .local v7, "quality":I
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->imgFile:Ljava/io/File;

    invoke-direct {v6, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 142
    .local v6, "out":Ljava/io/FileOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v10, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 143
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 144
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "quality":I
    :goto_1
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->imgFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->photoIconPath:Ljava/lang/String;

    goto :goto_0

    .line 145
    :catch_1
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v10, Lcom/veclink/movnow_q2/util/MessageModel;->CAPTURE_TEMP_FILE:Ljava/lang/String;

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->photoIconPath:Ljava/lang/String;

    goto :goto_0

    .line 156
    .end local v3    # "extras":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 157
    const-string v10, "tag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uri="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/veclink/movnow_q2/view/Utils;->getInstance()Lcom/veclink/movnow_q2/view/Utils;

    move-result-object v10

    iget-object v11, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->activity:Landroid/app/Activity;

    invoke-virtual {v10, v11, v9}, Lcom/veclink/movnow_q2/view/Utils;->cropPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 163
    :pswitch_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 164
    const-string v10, "tag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uri="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcom/veclink/movnow_q2/view/Utils;->getInstance()Lcom/veclink/movnow_q2/view/Utils;

    move-result-object v10

    iget-object v11, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->activity:Landroid/app/Activity;

    invoke-virtual {v10, v11, v9}, Lcom/veclink/movnow_q2/view/Utils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "thePath":Ljava/lang/String;
    invoke-static {}, Lcom/veclink/movnow_q2/view/Utils;->getInstance()Lcom/veclink/movnow_q2/view/Utils;

    move-result-object v10

    iget-object v11, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->activity:Landroid/app/Activity;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/veclink/movnow_q2/view/Utils;->cropPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 172
    .end local v8    # "thePath":Ljava/lang/String;
    :pswitch_5
    const-string v10, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 173
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 175
    .local v4, "foutput":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v10, Ljava/io/File;

    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->getPhotoFileName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->imgFile:Ljava/io/File;

    .line 176
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->imgFile:Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 177
    .end local v4    # "foutput":Ljava/io/FileOutputStream;
    .local v5, "foutput":Ljava/io/FileOutputStream;
    :try_start_3
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 180
    :cond_5
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->imgFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->photoIconPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 181
    :catch_2
    move-exception v2

    move-object v4, v5

    .line 183
    .end local v5    # "foutput":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "foutput":Ljava/io/FileOutputStream;
    :goto_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 181
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    goto :goto_2

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setExtendHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "extendHandler"    # Landroid/os/Handler;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->extendHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->takePhotoDialog:Lcom/veclink/movnow_q2/view/TakePhotoDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->show()V

    .line 87
    return-void
.end method

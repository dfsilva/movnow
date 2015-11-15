.class public Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "EditCaloriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private b:Landroid/graphics/Bitmap;

.field private btnPortaitCancle:Landroid/widget/Button;

.field private btnSelectLoclPic:Landroid/widget/Button;

.field private btnTakePic:Landroid/widget/Button;

.field private calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

.field private context:Landroid/content/Context;

.field private editEtFoodCal:Landroid/widget/EditText;

.field private editEtFoodName:Landroid/widget/EditText;

.field private editImgCal:Landroid/widget/ImageView;

.field private editImgUrl:Ljava/lang/String;

.field editTitleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private height:I

.field private imgFile:Ljava/io/File;

.field private oldImgUrl:Ljava/lang/String;

.field private selectPortaitDialog:Landroid/app/Dialog;

.field private toast:Landroid/widget/Toast;

.field private width:I

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    .line 62
    const/16 v0, 0xc8

    iput v0, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->width:I

    .line 63
    const/16 v0, 0x12c

    iput v0, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->height:I

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->aspectX:I

    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->aspectY:I

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->showPortaitDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private backDialog()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "resetdialog":Lcom/veclink/movnow_q2/view/BaseRemindDialog;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setTitle(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c016f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setContent(Ljava/lang/String;)V

    .line 177
    new-instance v1, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$2;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->show()V

    .line 187
    return-void
.end method

.method private cropImageUri(Landroid/net/Uri;III)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "outputX"    # I
    .param p3, "outputY"    # I
    .param p4, "requestCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v1, "outputX"

    iget v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string v1, "outputY"

    iget v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const-string v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 437
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    invoke-virtual {p0, v0, p4}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 441
    return-void
.end method

.method private getPhotoFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 299
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 88
    const v2, 0x7f06002b

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editTitleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 89
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editTitleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v3, 0x7f0c014d

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editTitleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 91
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editTitleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v3, 0x7f020128

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 92
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editTitleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v3, 0x7f0c00f4

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightText(Ljava/lang/String;)V

    .line 93
    const v2, 0x7f06002c

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgCal:Landroid/widget/ImageView;

    .line 94
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editTitleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v2, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setLefttButtonListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgCal:Landroid/widget/ImageView;

    new-instance v3, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$1;

    invoke-direct {v3, p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v2, 0x7f06002d

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editEtFoodName:Landroid/widget/EditText;

    .line 103
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editEtFoodName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getFoodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editEtFoodName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 107
    .local v0, "etext":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 108
    .local v1, "position":I
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 110
    const v2, 0x7f06002e

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editEtFoodCal:Landroid/widget/EditText;

    .line 111
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editEtFoodCal:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getCalorieContent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editTitleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v2, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editTitleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v2, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setLefttButtonListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editTitleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v2, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleButtonListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->oldImgUrl:Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->b:Landroid/graphics/Bitmap;

    .line 122
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgCal:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    :cond_1
    return-void
.end method

.method private showPortaitDialog()V
    .locals 7

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030033

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "view":Landroid/view/View;
    const v3, 0x7f0600a3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->btnTakePic:Landroid/widget/Button;

    .line 201
    const v3, 0x7f0600a4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->btnSelectLoclPic:Landroid/widget/Button;

    .line 202
    const v3, 0x7f0600a5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->btnPortaitCancle:Landroid/widget/Button;

    .line 203
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->btnTakePic:Landroid/widget/Button;

    new-instance v4, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$3;

    invoke-direct {v4, p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$3;-><init>(Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->btnSelectLoclPic:Landroid/widget/Button;

    new-instance v4, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$4;

    invoke-direct {v4, p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$4;-><init>(Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->btnPortaitCancle:Landroid/widget/Button;

    new-instance v4, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$5;

    invoke-direct {v4, p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$5;-><init>(Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    new-instance v3, Landroid/app/Dialog;

    const v4, 0x7f0b0015

    invoke-direct {v3, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    .line 222
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 224
    .local v1, "window":Landroid/view/Window;
    const v3, 0x7f0b0018

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 225
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 226
    .local v2, "wl":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 227
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 228
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 229
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 230
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 231
    return-void
.end method


# virtual methods
.method public btnLocalPic()V
    .locals 5

    .prologue
    .line 256
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 261
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getPhotoFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    .line 263
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 265
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v2, "aspectX"

    iget v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->aspectX:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v2, "aspectY"

    iget v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->aspectY:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v2, "outputX"

    iget v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->width:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    const-string v2, "outputY"

    iget v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v2, "scale"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    const-string v2, "return-data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    const-string v2, "output"

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 275
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v2, "noFaceDetection"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 296
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 279
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v2, "aspectX"

    iget v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->aspectX:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v2, "aspectY"

    iget v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->aspectY:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v2, "outputX"

    iget v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->width:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string v2, "outputY"

    iget v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v2, "scale"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    const-string v2, "output"

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v2, "noFaceDetection"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    const v3, 0x7f0c0076

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public btnTakePic()V
    .locals 6

    .prologue
    .line 234
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 238
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.camera"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getPhotoFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    .line 243
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "output"

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 245
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    const v4, 0x7f0c0074

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    const v4, 0x7f0c0075

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method protected convertMediaUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 405
    const/4 v8, 0x0

    .line 406
    .local v8, "path":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 408
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 409
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 410
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 411
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 412
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 416
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "column_index":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v8

    .line 413
    :cond_1
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x50

    .line 307
    sparse-switch p1, :sswitch_data_0

    .line 396
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 397
    return-void

    .line 309
    :sswitch_0
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 311
    :try_start_0
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    iget v7, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->width:I

    iget v8, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->height:I

    const/16 v9, 0x9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->cropImageUri(Landroid/net/Uri;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v6

    goto :goto_0

    .line 319
    :sswitch_1
    if-eqz p3, :cond_1

    const-string v6, ""

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 320
    :cond_1
    sget-object v6, Lcom/veclink/movnow_q2/util/MessageModel;->CAPTURE_TEMP_FILE:Ljava/lang/String;

    iput-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 324
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 325
    const-string v6, "data"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 326
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 327
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 328
    .local v5, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v6, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 329
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 330
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 333
    :cond_3
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 334
    .local v4, "out":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {v0, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 335
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 336
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 342
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    .line 346
    .end local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgCal:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 337
    .restart local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v1

    .line 338
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 339
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 340
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 344
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    sget-object v6, Lcom/veclink/movnow_q2/util/MessageModel;->CAPTURE_TEMP_FILE:Ljava/lang/String;

    iput-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    goto :goto_2

    .line 350
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "extras":Landroid/os/Bundle;
    :sswitch_2
    if-eqz p3, :cond_0

    .line 353
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-ge v6, v7, :cond_7

    .line 354
    const/4 v0, 0x0

    .line 355
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 356
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->convertMediaUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "filePath":Ljava/lang/String;
    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    .line 358
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgCal:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 360
    :cond_6
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 361
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    .line 362
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 367
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 368
    .restart local v2    # "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 369
    const-string v6, "data"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 370
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_9

    .line 371
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 372
    .restart local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v6, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 373
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 374
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 377
    :cond_8
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 378
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {v0, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 379
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 380
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 381
    const-string v6, "save"

    const-string v7, "\u5df2\u7ecf\u4fdd\u5b58"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 387
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_4
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->imgFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    .line 391
    .end local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_5
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgCal:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 382
    .restart local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v1

    .line 383
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 384
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 385
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 389
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_9
    sget-object v6, Lcom/veclink/movnow_q2/util/MessageModel;->CAPTURE_TEMP_FILE:Ljava/lang/String;

    iput-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    goto :goto_5

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->backDialog()V

    .line 191
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editEtFoodName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "foodName":Ljava/lang/String;
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editEtFoodCal:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "foodCal":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    const v7, 0x7f0c0078

    invoke-virtual {p0, v7}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    const v7, 0x7f0c007a

    invoke-virtual {p0, v7}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x7d0

    if-le v6, v7, :cond_2

    .line 140
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    const v7, 0x7f0c007b

    invoke-virtual {p0, v7}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 142
    :cond_2
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-virtual {v6, v2}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->setFoodName(Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->setCalorieContent(I)V

    .line 144
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->setImgUrl(Ljava/lang/String;)V

    .line 146
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-static {p0, v6}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->updateUptakeCalorie(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UptakeCalorie;)V

    .line 147
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->oldImgUrl:Ljava/lang/String;

    if-eqz v6, :cond_3

    const-string v6, ""

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->oldImgUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->oldImgUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->editImgUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 148
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->oldImgUrl:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 149
    .local v3, "index":I
    if-ltz v3, :cond_3

    .line 150
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->oldImgUrl:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 157
    .end local v0    # "f":Ljava/io/File;
    .end local v3    # "index":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->finish()V

    goto/16 :goto_0

    .line 163
    .end local v1    # "foodCal":Ljava/lang/String;
    .end local v2    # "foodName":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->backDialog()V

    goto/16 :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x7f0601c9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->setContentView(I)V

    .line 74
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->context:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Calorie"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/database/entity/UptakeCalorie;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .line 76
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->initView()V

    .line 77
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->wm:Landroid/view/WindowManager;

    .line 78
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 79
    .local v0, "metric":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 85
    return-void
.end method

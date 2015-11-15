.class public Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "ManagerCaloriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private aspectX:I

.field private aspectY:I

.field private btnPortaitCancle:Landroid/widget/Button;

.field private btnSelectLoclPic:Landroid/widget/Button;

.field private btnTakePic:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private costCalValue:Landroid/widget/TextView;

.field private currentDateTme:Ljava/lang/String;

.field private dateBaseTask:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;

.field private height:I

.field private imageFileUri:Landroid/net/Uri;

.field private imgUrl:Ljava/lang/String;

.field private listCalories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;

.field private metric:Landroid/util/DisplayMetrics;

.field private randomNumber:I

.field private resultCalValue:Landroid/widget/TextView;

.field private selectPortaitDialog:Landroid/app/Dialog;

.field private tempFile:Ljava/io/File;

.field titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private toast:Landroid/widget/Toast;

.field private totalCalValue:Landroid/widget/TextView;

.field private userId:Ljava/lang/String;

.field private width:I

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 71
    const-string v0, "ManagerCaloriesActivity"

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;

    invoke-direct {v0, p0, p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;-><init>(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->dateBaseTask:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    .line 94
    const/16 v0, 0x12c

    iput v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->width:I

    .line 95
    const/16 v0, 0x190

    iput v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->height:I

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->aspectX:I

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->aspectY:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->randomNumber:I

    .line 108
    new-instance v0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mHandler:Landroid/os/Handler;

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->listCalories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;)Lcom/veclink/waterfall/adapter/StaggeredAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mAdapter:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

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

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v1, "aspectX"

    iget v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->aspectX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    const-string v1, "aspectY"

    iget v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->aspectY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    const-string v1, "outputX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    const-string v1, "outputY"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 627
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0, v0, p4}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 631
    return-void
.end method

.method private getListUptakeCalorie()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->currentDateTme:Ljava/lang/String;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->userId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadUptakeCalorieByDay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->listCalories:Ljava/util/List;

    .line 236
    return-void
.end method

.method private getPhotoFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 102
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
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
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 161
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mContext:Landroid/content/Context;

    .line 162
    const v2, 0x7f060017

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 163
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v3, 0x7f0c014b

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v2, v5}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 165
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v3, 0x7f020163

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 166
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v2, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 167
    new-instance v2, Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;

    const/16 v3, 0xf0

    invoke-direct {v2, p0, v3}, Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mImageFetcher:Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;

    .line 168
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mImageFetcher:Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;

    const v3, 0x7f020063

    invoke-virtual {v2, v3}, Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 169
    const v2, 0x7f060067

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->totalCalValue:Landroid/widget/TextView;

    .line 170
    const v2, 0x7f060068

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->costCalValue:Landroid/widget/TextView;

    .line 171
    const v2, 0x7f060069

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->resultCalValue:Landroid/widget/TextView;

    .line 172
    const v2, 0x7f060065

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/waterfall/views/StaggeredGridView;

    .line 174
    .local v1, "gridView":Lcom/veclink/waterfall/views/StaggeredGridView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->setFastScrollEnabled(Z)V

    .line 176
    new-instance v2, Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mImageFetcher:Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;

    invoke-direct {v2, v3, v4}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;-><init>(Landroid/content/Context;Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mAdapter:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    .line 177
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mAdapter:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    invoke-virtual {v1, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->setOverScrollMode(I)V

    .line 180
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mAdapter:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    invoke-virtual {v2}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->notifyDataSetChanged()V

    .line 184
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getListUptakeCalorie()V

    .line 185
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->dateBaseTask:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 186
    new-instance v0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;

    invoke-direct {v0, p0, p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;-><init>(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;Landroid/content/Context;)V

    .line 187
    .local v0, "dataBaseTask":Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    .end local v0    # "dataBaseTask":Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;
    :cond_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->refreshCurrenDateTotalCal()V

    .line 191
    return-void
.end method

.method private showPortaitDialog()V
    .locals 7

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030033

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, "view":Landroid/view/View;
    const v3, 0x7f0600a3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->btnTakePic:Landroid/widget/Button;

    .line 371
    const v3, 0x7f0600a4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->btnSelectLoclPic:Landroid/widget/Button;

    .line 372
    const v3, 0x7f0600a5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->btnPortaitCancle:Landroid/widget/Button;

    .line 373
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->btnTakePic:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->btnSelectLoclPic:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->btnPortaitCancle:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    new-instance v3, Landroid/app/Dialog;

    const v4, 0x7f0b0015

    invoke-direct {v3, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    .line 377
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 379
    .local v1, "window":Landroid/view/Window;
    const v3, 0x7f0b0018

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 380
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 381
    .local v2, "wl":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 382
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 383
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 384
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 385
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 386
    return-void
.end method


# virtual methods
.method protected convertMediaUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 596
    const/4 v8, 0x0

    .line 597
    .local v8, "path":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 599
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 600
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 601
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 602
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 603
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 607
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "column_index":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v8

    .line 604
    :cond_1
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public getCostCalValue()I
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 208
    const/4 v7, 0x0

    .line 209
    .local v7, "progress":I
    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getDateString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "date":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadOriginSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 211
    .local v4, "oneDateSportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    if-eqz v4, :cond_0

    .line 212
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/healthy/database/entity/SportData;

    .line 213
    .local v3, "item":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v7, v11

    .line 214
    goto :goto_0

    .line 216
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/veclink/healthy/database/entity/SportData;
    :cond_0
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->currentDateTme:Ljava/lang/String;

    const-string v12, "yyyyMMdd"

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 217
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mContext:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-static {v13}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getDateStringByDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "tempStepCount"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 218
    .local v8, "shortStepCount":I
    if-le v8, v7, :cond_1

    move v7, v8

    .line 220
    .end local v8    # "shortStepCount":I
    :cond_1
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mContext:Landroid/content/Context;

    const-string v12, "personal_weight"

    const/high16 v13, 0x42480000    # 50.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 221
    .local v6, "person_weight":F
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mContext:Landroid/content/Context;

    const-string v12, "personal_height"

    const/high16 v13, 0x43200000    # 160.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 222
    .local v5, "person_height":F
    invoke-static {v5, v14}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getStepDistanceByHeight(FI)D

    move-result-wide v11

    int-to-double v13, v7

    mul-double v9, v11, v13

    .line 223
    .local v9, "stepDistanceKMUnit":D
    const/4 v11, 0x1

    invoke-static {v6, v9, v10, v11}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getCaloryByWeightAndDisStance(FDI)I

    move-result v0

    .line 224
    .local v0, "costCal":I
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x3ec

    const/16 v9, 0x50

    .line 485
    sparse-switch p1, :sswitch_data_0

    .line 587
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 588
    return-void

    .line 487
    :sswitch_0
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 489
    :try_start_0
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    iget v8, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->width:I

    iget v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->height:I

    const/16 v10, 0x9

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->cropImageUri(Landroid/net/Uri;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v7

    goto :goto_0

    .line 496
    :sswitch_1
    if-eqz p3, :cond_1

    const-string v7, ""

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 497
    :cond_1
    sget-object v7, Lcom/veclink/movnow_q2/util/MessageModel;->CAPTURE_TEMP_FILE:Ljava/lang/String;

    iput-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;

    goto :goto_0

    .line 500
    :cond_2
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imageFileUri:Landroid/net/Uri;

    if-eqz v7, :cond_0

    .line 501
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 502
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 503
    const-string v7, "data"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 504
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 505
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 506
    .local v6, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v7, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 507
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 508
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 509
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 512
    :cond_3
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 513
    .local v5, "out":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {v1, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 514
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 515
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 521
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :goto_1
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;

    goto :goto_0

    .line 516
    :catch_1
    move-exception v2

    .line 517
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 518
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 519
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 523
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    sget-object v7, Lcom/veclink/movnow_q2/util/MessageModel;->CAPTURE_TEMP_FILE:Ljava/lang/String;

    iput-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 531
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "extras":Landroid/os/Bundle;
    :sswitch_2
    if-eqz p3, :cond_0

    .line 534
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-ge v7, v8, :cond_6

    .line 536
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 537
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->convertMediaUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 538
    .local v4, "filePath":Ljava/lang/String;
    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;

    .line 539
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 541
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 543
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 544
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;

    .line 546
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 547
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 548
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 555
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 556
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 557
    const-string v7, "data"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 559
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    .line 560
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 561
    .restart local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v7, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 562
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 565
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 566
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 569
    :cond_7
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 570
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {v1, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 571
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 572
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 573
    const-string v7, "save"

    const-string v8, "\u5df2\u7ecf\u4fdd\u5b58"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 579
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :goto_2
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 574
    :catch_3
    move-exception v2

    .line 575
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 576
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 577
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 581
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_8
    sget-object v7, Lcom/veclink/movnow_q2/util/MessageModel;->CAPTURE_TEMP_FILE:Ljava/lang/String;

    iput-object v7, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 485
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 392
    :sswitch_0
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->showPortaitDialog()V

    goto :goto_0

    .line 395
    :sswitch_1
    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 397
    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 401
    :sswitch_2
    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 403
    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 404
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 405
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    const-string v9, "android.hardware.camera"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 407
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getPhotoFileName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    .line 409
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v2, "i":Landroid/content/Intent;
    const-string v9, "output"

    iget-object v10, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 411
    const/4 v9, 0x3

    invoke-virtual {p0, v2, v9}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    .end local v2    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->toast:Landroid/widget/Toast;

    const v10, 0x7f0c0074

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->toast:Landroid/widget/Toast;

    const v10, 0x7f0c0075

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 421
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :sswitch_3
    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 423
    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 425
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getPhotoFileName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    .line 427
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-ge v9, v10, :cond_2

    .line 428
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.GET_CONTENT"

    const/4 v10, 0x0

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 429
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "image/*"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v9, "crop"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v9, "aspectX"

    iget v10, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->aspectX:I

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const-string v9, "aspectY"

    iget v10, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->aspectY:I

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v9, "outputX"

    iget v10, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->width:I

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string v9, "outputY"

    iget v10, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->height:I

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const-string v9, "scale"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    const-string v9, "return-data"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    const-string v9, "output"

    iget-object v10, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 439
    const-string v9, "outputFormat"

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v10}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v9, "noFaceDetection"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    const/16 v9, 0xa

    invoke-virtual {p0, v4, v9}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 467
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 468
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->toast:Landroid/widget/Toast;

    const v10, 0x7f0c0076

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->toast:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 443
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 444
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 445
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.google.android.gallery3d"

    .line 446
    .local v1, "gallery3d":Ljava/lang/String;
    const/16 v9, 0x2000

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v7

    .line 447
    .local v7, "pakageinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 448
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 449
    const-string v9, "com.google.android.gallery3d"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    const-string v9, "android.intent.action.PICK"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v9, "image/*"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v9, "crop"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v9, "aspectX"

    iget v10, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->aspectX:I

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    const-string v9, "aspectY"

    iget v10, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->aspectY:I

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    const-string v9, "outputX"

    iget v10, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->width:I

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const-string v9, "outputY"

    iget v10, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->height:I

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const-string v9, "scale"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    const-string v9, "return-data"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 462
    const-string v9, "output"

    iget-object v10, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->tempFile:Ljava/io/File;

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 463
    const-string v9, "outputFormat"

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v10}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v9, "noFaceDetection"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    const/16 v9, 0xa

    invoke-virtual {p0, v4, v9}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 390
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0600a3 -> :sswitch_2
        0x7f0600a4 -> :sswitch_3
        0x7f0600a5 -> :sswitch_1
        0x7f0601cb -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->setContentView(I)V

    .line 131
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->userId:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->currentDateTme:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->currentDateTme:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->currentDateTme:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    const-string v0, "yyyyMMdd"

    invoke-static {v0}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->currentDateTme:Ljava/lang/String;

    .line 137
    :cond_1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->wm:Landroid/view/WindowManager;

    .line 138
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->metric:Landroid/util/DisplayMetrics;

    .line 139
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->wm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->metric:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 140
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->initView()V

    .line 141
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->context:Landroid/content/Context;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/veclink/movnow_q2/util/MessageModel;->CAPTURE_TEMP_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imageFileUri:Landroid/net/Uri;

    .line 145
    return-void
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/DeleteCalories;)V
    .locals 2
    .param p1, "calories"    # Lcom/veclink/healthy/business/http/pojo/DeleteCalories;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getListUptakeCalorie()V

    .line 229
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->refreshCurrenDateTotalCal()V

    .line 230
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->TAG:Ljava/lang/String;

    const-string v1, "DeleteCalories"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 149
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onPause()V

    .line 150
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/veclink/healthy/business/http/pojo/DeleteCalories;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onResume()V

    .line 155
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->refreshCurrenDateTotalCal()V

    .line 156
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-class v1, Lcom/veclink/healthy/business/http/pojo/DeleteCalories;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 157
    const-string v0, "onResume"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public refreshCurrenDateTotalCal()V
    .locals 6

    .prologue
    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "totalCal":I
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->listCalories:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->listCalories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .line 197
    .local v0, "calorie":Lcom/veclink/healthy/database/entity/UptakeCalorie;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getCalorieContent()I

    move-result v4

    add-int/2addr v3, v4

    .line 198
    goto :goto_0

    .line 200
    .end local v0    # "calorie":Lcom/veclink/healthy/database/entity/UptakeCalorie;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->totalCalValue:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->getCostCalValue()I

    move-result v1

    .line 202
    .local v1, "costCal":I
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->costCalValue:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->resultCalValue:Landroid/widget/TextView;

    sub-int v5, v3, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

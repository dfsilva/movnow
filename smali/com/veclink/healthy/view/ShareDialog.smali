.class public Lcom/veclink/healthy/view/ShareDialog;
.super Landroid/app/Dialog;
.source "ShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field public static final FACEBOOK:I = 0x3

.field private static final IMG_FILE_NAME:Ljava/lang/String; = "screenshotshare.png"

.field public static SHARETYPE:I = 0x0

.field public static final SINA:I = 0x1

.field public static final TWITTER:I = 0x4

.field public static final WEIXIN:I = 0x2


# instance fields
.field private date:Ljava/util/Date;

.field private mContext:Landroid/content/Context;

.field private share_to_facebook_btn:Landroid/widget/TextView;

.field private share_to_sina_btn:Landroid/widget/TextView;

.field private share_to_twitter_btn:Landroid/widget/TextView;

.field private share_to_wxfriend_btn:Landroid/widget/TextView;

.field sharehand:Landroid/os/Handler;

.field sinalistener:Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Date;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 56
    const v0, 0x7f0b0016

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 133
    new-instance v0, Lcom/veclink/healthy/view/ShareDialog$2;

    invoke-direct {v0, p0}, Lcom/veclink/healthy/view/ShareDialog$2;-><init>(Lcom/veclink/healthy/view/ShareDialog;)V

    iput-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->sinalistener:Lcn/sharesdk/framework/PlatformActionListener;

    .line 157
    new-instance v0, Lcom/veclink/healthy/view/ShareDialog$3;

    invoke-direct {v0, p0}, Lcom/veclink/healthy/view/ShareDialog$3;-><init>(Lcom/veclink/healthy/view/ShareDialog;)V

    iput-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->sharehand:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/veclink/healthy/view/ShareDialog;->date:Ljava/util/Date;

    .line 59
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/veclink/healthy/view/ShareDialog$1;

    invoke-direct {v0, p0}, Lcom/veclink/healthy/view/ShareDialog$1;-><init>(Lcom/veclink/healthy/view/ShareDialog;)V

    invoke-virtual {v0}, Lcom/veclink/healthy/view/ShareDialog$1;->start()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/healthy/view/ShareDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/view/ShareDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createShareContent()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0x4268

    const/16 v12, 0x2ee0

    const/16 v11, 0x1b58

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 220
    iget-object v6, p0, Lcom/veclink/healthy/view/ShareDialog;->date:Ljava/util/Date;

    invoke-static {v6}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getDateStringByDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "dateString":Ljava/lang/String;
    iget-object v6, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadOriginSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 222
    .local v1, "nowDateList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {v1}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getTotalStepByOriginData(Ljava/util/List;)I

    move-result v2

    .line 223
    .local v2, "now_date_total_step":I
    iget-object v6, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v8}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getDateStringByDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tempStepCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 224
    .local v5, "temp_now_date_total_step":I
    if-le v5, v2, :cond_0

    .line 225
    move v2, v5

    .line 227
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v3, "shareContent":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/veclink/healthy/view/ShareDialog;->date:Ljava/util/Date;

    iget-object v7, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getShareDateStringByDate(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const/4 v4, 0x0

    .line 230
    .local v4, "strShareText":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 231
    iget-object v6, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0169

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 243
    :cond_1
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 232
    :cond_2
    if-lez v2, :cond_3

    if-ge v2, v11, :cond_3

    .line 233
    iget-object v6, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0c016a

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 235
    :cond_3
    if-lt v2, v11, :cond_4

    if-ge v2, v12, :cond_4

    .line 236
    iget-object v6, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0c016b

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 238
    :cond_4
    if-lt v2, v12, :cond_5

    if-ge v2, v13, :cond_5

    .line 239
    iget-object v6, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0c016c

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 240
    :cond_5
    if-lt v2, v13, :cond_1

    .line 241
    iget-object v6, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0c016d

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getImageFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    const-string v0, ""

    .line 213
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screenshotshare.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    return-object v0
.end method

.method private shareToFaceBook(Landroid/content/Context;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 191
    new-instance v1, Lcn/sharesdk/facebook/Facebook$ShareParams;

    invoke-direct {v1}, Lcn/sharesdk/facebook/Facebook$ShareParams;-><init>()V

    .line 192
    .local v1, "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    invoke-direct {p0}, Lcom/veclink/healthy/view/ShareDialog;->createShareContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/sharesdk/framework/Platform$ShareParams;->text:Ljava/lang/String;

    .line 194
    sget-object v2, Lcn/sharesdk/facebook/Facebook;->NAME:Ljava/lang/String;

    invoke-static {p1, v2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 195
    .local v0, "faceBook":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v0, p2}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 197
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 198
    return-void
.end method

.method private shareToTwitter(Landroid/content/Context;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 201
    new-instance v0, Lcn/sharesdk/twitter/Twitter$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/twitter/Twitter$ShareParams;-><init>()V

    .line 202
    .local v0, "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    invoke-direct {p0}, Lcom/veclink/healthy/view/ShareDialog;->createShareContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/sharesdk/framework/Platform$ShareParams;->text:Ljava/lang/String;

    .line 204
    sget-object v2, Lcn/sharesdk/twitter/Twitter;->NAME:Ljava/lang/String;

    invoke-static {p1, v2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 205
    .local v1, "twitter":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v1, p2}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 207
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 208
    return-void
.end method

.method private shareToWeiXinFriends(Landroid/content/Context;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "sinalistener"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 170
    new-instance v0, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;-><init>()V

    .line 171
    .local v0, "sp":Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;
    invoke-direct {p0}, Lcom/veclink/healthy/view/ShareDialog;->createShareContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;->text:Ljava/lang/String;

    .line 172
    const/4 v2, 0x2

    iput v2, v0, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;->shareType:I

    .line 173
    invoke-static {}, Lcom/veclink/healthy/view/ShareDialog;->getImageFilePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;->imagePath:Ljava/lang/String;

    .line 174
    const-string v2, "imagePath"

    iget-object v3, v0, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;->imagePath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v2, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {p1, v2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 176
    .local v1, "wechats":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v1, p2}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 177
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 179
    return-void
.end method

.method private shareToXinLangWeiBo(Landroid/content/Context;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "sinalistener"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 182
    new-instance v0, Lcn/sharesdk/sina/weibo/SinaWeibo$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/sina/weibo/SinaWeibo$ShareParams;-><init>()V

    .line 183
    .local v0, "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    invoke-direct {p0}, Lcom/veclink/healthy/view/ShareDialog;->createShareContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/sharesdk/framework/Platform$ShareParams;->text:Ljava/lang/String;

    .line 184
    invoke-static {}, Lcom/veclink/healthy/view/ShareDialog;->getImageFilePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/sharesdk/framework/Platform$ShareParams;->imagePath:Ljava/lang/String;

    .line 185
    sget-object v2, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {p1, v2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 186
    .local v1, "weibo":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v1, p2}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 187
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/veclink/healthy/view/ShareDialog;->dismiss()V

    .line 129
    return-void

    .line 102
    :pswitch_0
    const/4 v0, 0x1

    sput v0, Lcom/veclink/healthy/view/ShareDialog;->SHARETYPE:I

    .line 103
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/veclink/healthy/view/ShareDialog;->sinalistener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-direct {p0, v0, v1}, Lcom/veclink/healthy/view/ShareDialog;->shareToXinLangWeiBo(Landroid/content/Context;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0

    .line 107
    :pswitch_1
    const/4 v0, 0x2

    sput v0, Lcom/veclink/healthy/view/ShareDialog;->SHARETYPE:I

    .line 109
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/veclink/healthy/view/ShareDialog;->sinalistener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-direct {p0, v0, v1}, Lcom/veclink/healthy/view/ShareDialog;->shareToWeiXinFriends(Landroid/content/Context;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0

    .line 113
    :pswitch_2
    const/4 v0, 0x3

    sput v0, Lcom/veclink/healthy/view/ShareDialog;->SHARETYPE:I

    .line 114
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/veclink/healthy/view/ShareDialog;->sinalistener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-direct {p0, v0, v1}, Lcom/veclink/healthy/view/ShareDialog;->shareToFaceBook(Landroid/content/Context;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0

    .line 119
    :pswitch_3
    const/4 v0, 0x4

    sput v0, Lcom/veclink/healthy/view/ShareDialog;->SHARETYPE:I

    .line 120
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/veclink/healthy/view/ShareDialog;->sinalistener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-direct {p0, v0, v1}, Lcom/veclink/healthy/view/ShareDialog;->shareToTwitter(Landroid/content/Context;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x7f0601b6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/ShareDialog;->setContentView(I)V

    .line 75
    const v0, 0x7f0601b6

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_sina_btn:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0601b7

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_wxfriend_btn:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0601b8

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_facebook_btn:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0601b9

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_twitter_btn:Landroid/widget/TextView;

    .line 79
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_sina_btn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_wxfriend_btn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_facebook_btn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_twitter_btn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_sina_btn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_wxfriend_btn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_facebook_btn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_twitter_btn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_sina_btn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_wxfriend_btn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_facebook_btn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog;->share_to_twitter_btn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

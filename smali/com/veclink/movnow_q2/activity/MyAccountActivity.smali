.class public Lcom/veclink/movnow_q2/activity/MyAccountActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "MyAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MyAccountActivity"


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private dialogListener:Landroid/view/View$OnClickListener;

.field female_img:Landroid/widget/ImageView;

.field private height:I

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private imgFile:Ljava/io/File;

.field private imgUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field male_img:Landroid/widget/ImageView;

.field private myEdit:Landroid/widget/TextView;

.field private myFavicon:Lcom/veclink/movnow_q2/view/CircleImageView;

.field private myName:Landroid/widget/TextView;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field person_birthday_layout:Landroid/view/View;

.field person_birthday_textview:Landroid/widget/TextView;

.field person_height_layout:Landroid/view/View;

.field person_height_textview:Landroid/widget/TextView;

.field person_weight_layout:Landroid/view/View;

.field person_weight_textview:Landroid/widget/TextView;

.field reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

.field private takePhotoDialogProxy:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private toast:Landroid/widget/Toast;

.field private tvSex:Landroid/widget/TextView;

.field private waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x96

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 63
    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->imgFile:Ljava/io/File;

    .line 64
    iput v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->width:I

    .line 65
    iput v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->height:I

    .line 66
    iput v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->aspectX:I

    .line 67
    iput v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->aspectY:I

    .line 71
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 80
    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    .line 83
    new-instance v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->dialogListener:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mHandler:Landroid/os/Handler;

    .line 425
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->submitUserInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Lcom/veclink/movnow_q2/view/WaitDialogUtil;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    return-object v0
.end method

.method static synthetic access$102(Lcom/veclink/movnow_q2/activity/MyAccountActivity;Lcom/veclink/movnow_q2/view/WaitDialogUtil;)Lcom/veclink/movnow_q2/view/WaitDialogUtil;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MyAccountActivity;
    .param p1, "x1"    # Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    return-object p1
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->takePhotoDialogProxy:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    return-object v0
.end method

.method static synthetic access$302(Lcom/veclink/movnow_q2/activity/MyAccountActivity;Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MyAccountActivity;
    .param p1, "x1"    # Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->takePhotoDialogProxy:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    return-object p1
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Lcom/veclink/movnow_q2/view/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myFavicon:Lcom/veclink/movnow_q2/view/CircleImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myName:Landroid/widget/TextView;

    return-object v0
.end method

.method private initPersonaInfo()V
    .locals 19

    .prologue
    .line 182
    const v15, 0x7f06004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->male_img:Landroid/widget/ImageView;

    .line 183
    const v15, 0x7f06004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->female_img:Landroid/widget/ImageView;

    .line 184
    const v15, 0x7f06004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_birthday_textview:Landroid/widget/TextView;

    .line 185
    const v15, 0x7f060053

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_height_textview:Landroid/widget/TextView;

    .line 186
    const v15, 0x7f060051

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_weight_textview:Landroid/widget/TextView;

    .line 188
    const v15, 0x7f06004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_birthday_layout:Landroid/view/View;

    .line 189
    const v15, 0x7f060052

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_height_layout:Landroid/view/View;

    .line 190
    const v15, 0x7f060050

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_weight_layout:Landroid/view/View;

    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->male_img:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->female_img:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_birthday_layout:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_height_layout:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_weight_layout:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v16, "personal_year"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 197
    .local v14, "year":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v16, "personal_month"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 198
    .local v8, "month":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v16, "personal_day"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 199
    .local v2, "day":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 201
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    const-string v15, "/"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const-string v15, "/"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_birthday_textview:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v16, "personal_height"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 216
    .local v6, "height":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v16, "personal_weight"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 218
    .local v10, "weight":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v16, "pre_DistanceType"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 219
    .local v3, "distanceType":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f050001

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "distanceUnitArray":[Ljava/lang/String;
    const-string v5, ""

    .line 221
    .local v5, "distanceUnitString":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 222
    const/4 v15, 0x1

    aget-object v5, v4, v15

    .line 223
    const v15, 0x3c23d70a    # 0.01f

    mul-float/2addr v15, v6

    float-to-double v15, v15

    const/16 v17, 0x2

    const/16 v18, 0x4

    invoke-static/range {v15 .. v18}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->roundFloat(DII)F

    move-result v6

    .line 228
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v16, "pre_Weight_Type"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 229
    .local v11, "weightType":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f050002

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 230
    .local v12, "weightUnitArray":[Ljava/lang/String;
    const-string v13, ""

    .line 231
    .local v13, "weightUnitString":Ljava/lang/String;
    const/4 v15, 0x1

    if-ne v11, v15, :cond_2

    .line 232
    const/4 v15, 0x1

    aget-object v13, v12, v15

    .line 237
    :goto_2
    float-to-int v7, v10

    .line 238
    .local v7, "intWeight":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_height_textview:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_weight_textview:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v16, "pre_Sex"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 241
    .local v9, "sex":I
    if-nez v9, :cond_3

    .line 242
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->male_img:Landroid/widget/ImageView;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->female_img:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 248
    :goto_3
    return-void

    .line 207
    .end local v3    # "distanceType":I
    .end local v4    # "distanceUnitArray":[Ljava/lang/String;
    .end local v5    # "distanceUnitString":Ljava/lang/String;
    .end local v6    # "height":F
    .end local v7    # "intWeight":I
    .end local v9    # "sex":I
    .end local v10    # "weight":F
    .end local v11    # "weightType":I
    .end local v12    # "weightUnitArray":[Ljava/lang/String;
    .end local v13    # "weightUnitString":Ljava/lang/String;
    :cond_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    const-string v15, "/"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    const-string v15, "/"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 225
    .restart local v3    # "distanceType":I
    .restart local v4    # "distanceUnitArray":[Ljava/lang/String;
    .restart local v5    # "distanceUnitString":Ljava/lang/String;
    .restart local v6    # "height":F
    .restart local v10    # "weight":F
    :cond_1
    const/4 v15, 0x0

    aget-object v5, v4, v15

    .line 226
    const v15, 0x3c23d70a    # 0.01f

    mul-float/2addr v15, v6

    invoke-static {v15}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getFtByM(F)F

    move-result v6

    goto/16 :goto_1

    .line 234
    .restart local v11    # "weightType":I
    .restart local v12    # "weightUnitArray":[Ljava/lang/String;
    .restart local v13    # "weightUnitString":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    aget-object v13, v12, v15

    .line 235
    invoke-static {v10}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getLbUnitWeight(F)F

    move-result v10

    goto/16 :goto_2

    .line 245
    .restart local v7    # "intWeight":I
    .restart local v9    # "sex":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->male_img:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->female_img:Landroid/widget/ImageView;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_3
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 127
    const v2, 0x7f060047

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 128
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v3, 0x7f0c00c5

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 129
    const v2, 0x7f060048

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/CircleImageView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myFavicon:Lcom/veclink/movnow_q2/view/CircleImageView;

    .line 130
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserIconUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myFavicon:Lcom/veclink/movnow_q2/view/CircleImageView;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 131
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myFavicon:Lcom/veclink/movnow_q2/view/CircleImageView;

    new-instance v3, Lcom/veclink/movnow_q2/activity/MyAccountActivity$3;

    invoke-direct {v3, p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity$3;-><init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v2, 0x7f060049

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myName:Landroid/widget/TextView;

    .line 140
    const v2, 0x7f06004b

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myEdit:Landroid/widget/TextView;

    .line 141
    const v2, 0x7f06004a

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->tvSex:Landroid/widget/TextView;

    .line 143
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getNickName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "nickname":Ljava/lang/String;
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "pre_Sex"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 147
    .local v1, "sex":I
    if-ne v1, v6, :cond_0

    .line 148
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->tvSex:Landroid/widget/TextView;

    const v3, 0x7f0200f3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myEdit:Landroid/widget/TextView;

    new-instance v3, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;

    invoke-direct {v3, p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity$4;-><init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->tvSex:Landroid/widget/TextView;

    const v3, 0x7f0200f2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private submitUserInfo()V
    .locals 19

    .prologue
    .line 328
    new-instance v14, Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    const v15, 0x7f0c018f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->setMessage(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-virtual {v14}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->showDialog()V

    .line 331
    const/4 v6, 0x0

    .line 333
    .local v6, "nickName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v15, "nickName"

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "nickName":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 335
    .restart local v6    # "nickName":Ljava/lang/String;
    new-instance v11, Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-direct {v11}, Lcom/veclink/healthy/database/entity/UserInfo;-><init>()V

    .line 336
    .local v11, "userInfo":Lcom/veclink/healthy/database/entity/UserInfo;
    invoke-virtual {v11, v6}, Lcom/veclink/healthy/database/entity/UserInfo;->setNickName(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v15, "pre_Sex"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, "sex":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v15, "personal_year"

    const/16 v16, 0x7b2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 339
    .local v13, "year":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v15, "personal_month"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 340
    .local v5, "month":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v15, "personal_day"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 341
    .local v3, "day":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/16 v14, 0xa

    if-ge v5, v14, :cond_0

    .line 345
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 348
    .local v10, "strmonth":Ljava/lang/String;
    :goto_0
    const/16 v14, 0xa

    if-ge v3, v14, :cond_1

    .line 349
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 353
    .local v9, "strday":Ljava/lang/String;
    :goto_1
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "birthday":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v15, "personal_height"

    const/high16 v16, 0x43200000    # 160.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 356
    .local v4, "height":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v15, "personal_weight"

    const/high16 v16, 0x42480000    # 50.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 357
    .local v12, "weight":F
    invoke-virtual {v11, v8}, Lcom/veclink/healthy/database/entity/UserInfo;->setSex(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v11, v1}, Lcom/veclink/healthy/database/entity/UserInfo;->setBirthday(Ljava/lang/String;)V

    .line 359
    float-to-int v14, v4

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/veclink/healthy/database/entity/UserInfo;->setHeight(Ljava/lang/String;)V

    .line 360
    const/high16 v14, 0x447a0000    # 1000.0f

    mul-float/2addr v14, v12

    float-to-int v14, v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/veclink/healthy/database/entity/UserInfo;->setWeight(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserIconUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/veclink/healthy/database/entity/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 362
    const-string v14, "MyAccountActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sex:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v14, "MyAccountActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "birthday:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v14, "MyAccountActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(int)(height):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    float-to-int v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v14, "MyAccountActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(int)(weight*1000):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/high16 v16, 0x447a0000    # 1000.0f

    mul-float v16, v16, v12

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 368
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-class v16, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 369
    new-instance v7, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    invoke-direct {v7, v14, v11}, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;-><init>(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UserInfo;)V

    .line 370
    .local v7, "session":Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    invoke-static {v14, v7}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    .line 371
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParams()V

    .line 372
    return-void

    .line 347
    .end local v1    # "birthday":Ljava/lang/String;
    .end local v4    # "height":F
    .end local v7    # "session":Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;
    .end local v9    # "strday":Ljava/lang/String;
    .end local v10    # "strmonth":Ljava/lang/String;
    .end local v12    # "weight":F
    :cond_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "strmonth":Ljava/lang/String;
    goto/16 :goto_0

    .line 351
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "strday":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private uploadFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 413
    new-instance v0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;-><init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity;Lcom/veclink/movnow_q2/activity/MyAccountActivity$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->takePhotoDialogProxy:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->getPhotoIconPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->takePhotoDialogProxy:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->getPhotoFileName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity$UploadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 415
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->takePhotoDialogProxy:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->handleActivityResult(IILandroid/content/Intent;)V

    .line 325
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 278
    :pswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->male_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->male_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 280
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->female_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 281
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v1, "pre_Sex"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->tvSex:Landroid/widget/TextView;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 283
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->submitUserInfo()V

    goto :goto_0

    .line 288
    :pswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->female_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->male_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 290
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->female_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 291
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const-string v1, "pre_Sex"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->tvSex:Landroid/widget/TextView;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 293
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->submitUserInfo()V

    goto :goto_0

    .line 297
    :pswitch_3
    new-instance v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_birthday_textview:Landroid/widget/TextView;

    invoke-direct {v0, p0, v3, v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    .line 298
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->setCanceledOnTouchOutside(Z)V

    .line 299
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->dialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->setSaveListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show()V

    goto :goto_0

    .line 304
    :pswitch_4
    new-instance v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_height_textview:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    .line 305
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->setCanceledOnTouchOutside(Z)V

    .line 306
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->dialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->setSaveListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show()V

    goto/16 :goto_0

    .line 311
    :pswitch_5
    new-instance v0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->person_weight_textview:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    .line 312
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->setCanceledOnTouchOutside(Z)V

    .line 313
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->dialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->setSaveListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show()V

    goto/16 :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x7f06004c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7f0200ee

    .line 111
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    .line 113
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->setContentView(I)V

    .line 114
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 122
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->initView()V

    .line 123
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->initPersonaInfo()V

    .line 125
    return-void
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;

    .prologue
    const/4 v4, 0x0

    .line 392
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 393
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "error":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->dismissDialog()V

    .line 397
    :cond_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->uploadFile(Ljava/lang/String;)V

    .line 409
    :goto_0
    return-void

    .line 399
    :cond_1
    const-string v1, "-1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    const v1, 0x7f0c009a

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 402
    :cond_2
    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    const v1, 0x7f0c0128

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;)V
    .locals 7
    .param p1, "reponse"    # Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;

    .prologue
    const/4 v6, 0x1

    .line 375
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    new-array v3, v6, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 376
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->dismissDialog()V

    .line 377
    const-string v1, "MyAccountActivity"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c018e

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserIconUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myFavicon:Lcom/veclink/movnow_q2/view/CircleImageView;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    const v1, 0x7f0c0128

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "remind_text":Ljava/lang/String;
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 385
    .end local v0    # "remind_text":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 386
    .restart local v0    # "remind_text":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 253
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onResume()V

    .line 270
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserIconUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->myFavicon:Lcom/veclink/movnow_q2/view/CircleImageView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 271
    return-void
.end method

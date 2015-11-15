.class public Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "ShowHeartReateResultActivity.java"


# instance fields
.field private bmi_result_remind_textview:Landroid/widget/TextView;

.field private bmi_result_textview:Landroid/widget/TextView;

.field private heart_reate:I

.field private progress_bar_img:Landroid/widget/ImageView;

.field private result_remind_point_img:Landroid/widget/ImageView;

.field private titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/16 v7, 0x78

    const/16 v6, 0x64

    const/16 v5, 0x27

    .line 39
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 40
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c01a9

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 41
    const v0, 0x7f0601b3

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->bmi_result_textview:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0601ba

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->bmi_result_remind_textview:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0601af

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->progress_bar_img:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f0601b1

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->result_remind_point_img:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->bmi_result_textview:Landroid/widget/TextView;

    const v1, 0x7f0c01a8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    if-ge v0, v6, :cond_1

    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->bmi_result_remind_textview:Landroid/widget/TextView;

    const v1, 0x7f0c01a2

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->setImgLocation()V

    .line 63
    return-void

    .line 49
    :cond_1
    iget v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    if-lt v0, v6, :cond_2

    iget v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    if-gt v0, v7, :cond_2

    .line 50
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->bmi_result_remind_textview:Landroid/widget/TextView;

    const v1, 0x7f0c01a3

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 52
    :cond_2
    iget v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    if-le v0, v7, :cond_3

    .line 53
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->bmi_result_remind_textview:Landroid/widget/TextView;

    const v1, 0x7f0c01a4

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :cond_3
    iget v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    if-le v0, v5, :cond_4

    iget v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_4

    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->bmi_result_remind_textview:Landroid/widget/TextView;

    const v1, 0x7f0c01a1

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 57
    :cond_4
    iget v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    if-gt v0, v5, :cond_0

    .line 58
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->bmi_result_remind_textview:Landroid/widget/TextView;

    const v1, 0x7f0c01a0

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImgLocation()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/16 v9, 0x3c

    .line 67
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 68
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v5, v7

    double-to-int v4, v5

    .line 71
    .local v4, "width":I
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->progress_bar_img:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->result_remind_point_img:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .local v3, "resultpointparmas":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 74
    .local v1, "margin":I
    iget v5, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    if-ge v5, v9, :cond_1

    .line 75
    div-int/lit8 v5, v4, 0x4

    iget v6, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    mul-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x3c

    .line 83
    :cond_0
    :goto_0
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 84
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->progress_bar_img:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 86
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->result_remind_point_img:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void

    .line 76
    :cond_1
    iget v5, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    if-le v5, v9, :cond_2

    iget v5, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    if-gt v5, v10, :cond_2

    .line 77
    mul-int/lit8 v5, v4, 0x3

    div-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    mul-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x64

    goto :goto_0

    .line 78
    :cond_2
    iget v5, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    if-le v5, v10, :cond_0

    .line 79
    mul-int/lit8 v5, v4, 0x3

    div-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    add-int/lit8 v6, v6, -0x64

    mul-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3c

    add-int v1, v5, v6

    .line 80
    if-le v1, v4, :cond_0

    move v1, v4

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "heart_reate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->heart_reate:I

    .line 35
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;->initView()V

    .line 36
    return-void
.end method

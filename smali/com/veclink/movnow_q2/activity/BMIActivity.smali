.class public Lcom/veclink/movnow_q2/activity/BMIActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "BMIActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private MAXHEIGHT:I

.field private MAXWEIGHT:I

.field private MINHEIGHT:I

.field private MINWEIGHT:I

.field private final TAG:Ljava/lang/String;

.field private birthdayLayout:Landroid/view/View;

.field private bmi_result_remind_textview:Landroid/widget/TextView;

.field private bmi_result_textview:Landroid/widget/TextView;

.field private bmi_test_btn:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private current_item_textsize:I

.field private dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field distanceType:I

.field private femaleimg:Landroid/widget/ImageView;

.field private height:F

.field private heightLayout:Landroid/view/View;

.field private heightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private maleimg:Landroid/widget/ImageView;

.field private monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private progress_bar_img:Landroid/widget/ImageView;

.field private progress_layout:Landroid/view/View;

.field private resultLayout:Landroid/view/View;

.field private result_remind_point_img:Landroid/widget/ImageView;

.field private sexLayout:Landroid/view/View;

.field private titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private weight:F

.field private weightLayout:Landroid/view/View;

.field private weightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 31
    const-class v0, Lcom/veclink/movnow_q2/activity/BMIActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->TAG:Ljava/lang/String;

    .line 52
    const/16 v0, 0x63

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MINHEIGHT:I

    .line 53
    const/16 v0, 0x12b

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MAXHEIGHT:I

    .line 54
    const/16 v0, 0x28

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MINWEIGHT:I

    .line 55
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MAXWEIGHT:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->distanceType:I

    return-void
.end method

.method private getBMI()V
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const-wide v11, 0x403de66666666666L    # 29.9

    const-wide v9, 0x4038e66666666666L    # 24.9

    const-wide v7, 0x4032800000000000L    # 18.5

    .line 279
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->height:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "weight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->height:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->height:F

    div-float/2addr v3, v5

    mul-float v1, v2, v3

    .line 282
    .local v1, "heightM":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 283
    .local v0, "bmi":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 284
    iget v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weight:F

    div-float v0, v2, v1

    .line 285
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bmi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    float-to-double v2, v0

    const/4 v4, 0x5

    invoke-static {v2, v3, v6, v4}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->roundFloat(DII)F

    move-result v0

    .line 287
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatbmi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->bmi_result_textview:Landroid/widget/TextView;

    const v3, 0x7f0c0142

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    float-to-double v2, v0

    cmpg-double v2, v2, v7

    if-gez v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->bmi_result_remind_textview:Landroid/widget/TextView;

    const v3, 0x7f0c0049

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->setImgLocation(F)V

    .line 302
    :cond_1
    return-void

    .line 292
    :cond_2
    float-to-double v2, v0

    cmpl-double v2, v2, v7

    if-ltz v2, :cond_3

    float-to-double v2, v0

    cmpg-double v2, v2, v9

    if-gez v2, :cond_3

    .line 293
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->bmi_result_remind_textview:Landroid/widget/TextView;

    const v3, 0x7f0c004b

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_3
    float-to-double v2, v0

    cmpl-double v2, v2, v9

    if-ltz v2, :cond_4

    float-to-double v2, v0

    cmpg-double v2, v2, v11

    if-gez v2, :cond_4

    .line 295
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->bmi_result_remind_textview:Landroid/widget/TextView;

    const v3, 0x7f0c004d

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_4
    float-to-double v2, v0

    cmpl-double v2, v2, v11

    if-ltz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->bmi_result_remind_textview:Landroid/widget/TextView;

    const v3, 0x7f0c004f

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initBirthdayView()V
    .locals 10

    .prologue
    const v9, 0x7f030068

    const v8, 0x7f02018f

    const/4 v7, 0x1

    .line 78
    const v5, 0x7f060023

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 79
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v6, 0x7f0c00ee

    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 80
    const v5, 0x7f060024

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->birthdayLayout:Landroid/view/View;

    .line 81
    const v5, 0x7f060162

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 82
    const v5, 0x7f060163

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 83
    const v5, 0x7f060164

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 84
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v8}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 85
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v8}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 86
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v8}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 87
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v8}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 88
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v8}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 89
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v8}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 90
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0a0000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->current_item_textsize:I

    .line 91
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v6, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->current_item_textsize:I

    invoke-virtual {v5, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 92
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v6, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->current_item_textsize:I

    invoke-virtual {v5, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 93
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v6, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->current_item_textsize:I

    invoke-virtual {v5, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 99
    .local v2, "maxYear":I
    new-instance v4, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/16 v5, 0x781

    invoke-direct {v4, p0, v5, v2, v9}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 100
    .local v4, "yearAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    new-instance v3, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/16 v5, 0xc

    invoke-direct {v3, p0, v7, v5, v9}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 101
    .local v3, "monthAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    new-instance v1, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/16 v5, 0x1f

    invoke-direct {v1, p0, v7, v5, v9}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 105
    .local v1, "dayAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 106
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 107
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 108
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->yearWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 109
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->monthWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 110
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->dayWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 111
    return-void
.end method

.method private initHeightView()V
    .locals 7

    .prologue
    const v5, 0x7f030068

    const v2, 0x7f02018f

    const/4 v4, 0x1

    .line 131
    const v1, 0x7f060026

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->heightLayout:Landroid/view/View;

    .line 132
    const v1, 0x7f0601a6

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->heightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 133
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->heightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 134
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->heightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "heightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    const v1, 0x7f0601a7

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 137
    .local v6, "tvHeightUnit":Landroid/widget/TextView;
    iget v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->distanceType:I

    if-nez v1, :cond_0

    .line 139
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    .end local v0    # "heightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MINHEIGHT:I

    iget v3, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MAXHEIGHT:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IIZI)V

    .line 140
    .restart local v0    # "heightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    const v1, 0x7f0c0163

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->heightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->current_item_textsize:I

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 149
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->heightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 150
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->heightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 152
    return-void

    .line 143
    :cond_0
    const/16 v1, 0x12c

    iput v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MINHEIGHT:I

    .line 144
    const/16 v1, 0x384

    iput v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MAXHEIGHT:I

    .line 145
    const v1, 0x7f0c0164

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    .end local v0    # "heightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MINHEIGHT:I

    iget v3, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MAXHEIGHT:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IIZI)V

    .restart local v0    # "heightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    goto :goto_0
.end method

.method private initResultView()V
    .locals 1

    .prologue
    .line 181
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->resultLayout:Landroid/view/View;

    .line 182
    const v0, 0x7f0601b3

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->bmi_result_textview:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0601b5

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->bmi_result_remind_textview:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0601b4

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->bmi_test_btn:Landroid/widget/Button;

    .line 185
    const v0, 0x7f0601af

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->progress_bar_img:Landroid/widget/ImageView;

    .line 186
    const v0, 0x7f0601b1

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->result_remind_point_img:Landroid/widget/ImageView;

    .line 187
    const v0, 0x7f0601ae

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->progress_layout:Landroid/view/View;

    .line 188
    return-void
.end method

.method private initSexView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 114
    const v1, 0x7f060025

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->sexLayout:Landroid/view/View;

    .line 115
    const v1, 0x7f06004c

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->maleimg:Landroid/widget/ImageView;

    .line 116
    const v1, 0x7f06004d

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->femaleimg:Landroid/widget/ImageView;

    .line 117
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->context:Landroid/content/Context;

    const-string v2, "pre_Sex"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    .local v0, "sex":I
    if-nez v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->maleimg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 120
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->femaleimg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->maleimg:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->femaleimg:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->maleimg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 123
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->femaleimg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method

.method private initWeightView()V
    .locals 6

    .prologue
    const v5, 0x7f030068

    const v4, 0x7f02018f

    .line 155
    const v2, 0x7f060027

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weightLayout:Landroid/view/View;

    .line 156
    const v2, 0x7f0601aa

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 157
    const v2, 0x7f0601ab

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/BMIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    .local v0, "tvWeightUnit":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v3, 0x7f020166

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 159
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 160
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "weightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->distanceType:I

    if-nez v2, :cond_0

    .line 164
    new-instance v1, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    .end local v1    # "weightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MINWEIGHT:I

    iget v3, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MAXWEIGHT:I

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 165
    .restart local v1    # "weightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    const v2, 0x7f0c0166

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v3, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->current_item_textsize:I

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 175
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 176
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 178
    return-void

    .line 168
    :cond_0
    const/16 v2, 0x50

    iput v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MINWEIGHT:I

    .line 169
    const/16 v2, 0xdc

    iput v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MAXWEIGHT:I

    .line 170
    const v2, 0x7f0c0165

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    new-instance v1, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    .end local v1    # "weightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget v2, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MINWEIGHT:I

    iget v3, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MAXWEIGHT:I

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .restart local v1    # "weightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    goto :goto_0
.end method

.method private setCurrentLayoutVisible(Landroid/view/View;)V
    .locals 2
    .param p1, "showView"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 207
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->birthdayLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->sexLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->heightLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weightLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->resultLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 213
    return-void
.end method

.method private setImgLocation(F)V
    .locals 14
    .param p1, "bmi"    # F

    .prologue
    const/high16 v13, 0x41c80000    # 25.0f

    const-wide v9, 0x403de66666666666L    # 29.9

    const-wide v11, 0x4032800000000000L    # 18.5

    .line 305
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 306
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 308
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v5, v7

    double-to-int v4, v5

    .line 309
    .local v4, "width":I
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->progress_bar_img:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 310
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->result_remind_point_img:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 311
    .local v3, "resultpointparmas":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 312
    .local v1, "margin":I
    float-to-double v5, p1

    cmpg-double v5, v5, v11

    if-gtz v5, :cond_1

    .line 313
    div-int/lit8 v5, v4, 0x4

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-double v5, v5

    div-double/2addr v5, v11

    double-to-int v1, v5

    .line 323
    :cond_0
    :goto_0
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 324
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->progress_bar_img:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 326
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->result_remind_point_img:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    return-void

    .line 314
    :cond_1
    float-to-double v5, p1

    cmpl-double v5, v5, v11

    if-lez v5, :cond_2

    cmpg-float v5, p1, v13

    if-gtz v5, :cond_2

    .line 315
    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-double v5, v5

    const-wide v7, 0x4038e66666666666L    # 24.9

    div-double/2addr v5, v7

    double-to-int v1, v5

    goto :goto_0

    .line 316
    :cond_2
    cmpl-float v5, p1, v13

    if-lez v5, :cond_3

    float-to-double v5, p1

    cmpg-double v5, v5, v9

    if-gtz v5, :cond_3

    .line 317
    mul-int/lit8 v5, v4, 0x3

    div-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-double v5, v5

    div-double/2addr v5, v9

    double-to-int v1, v5

    goto :goto_0

    .line 318
    :cond_3
    float-to-double v5, p1

    cmpl-double v5, v5, v9

    if-lez v5, :cond_0

    .line 319
    mul-int/lit8 v5, v4, 0x3

    div-int/lit8 v5, v5, 0x4

    int-to-double v5, v5

    float-to-double v7, p1

    sub-double/2addr v7, v9

    int-to-double v9, v4

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    div-double/2addr v7, v9

    div-double/2addr v7, v11

    add-double/2addr v5, v7

    double-to-int v1, v5

    .line 320
    if-le v1, v4, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method private setImgSelectedState(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "img"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->femaleimg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->maleimg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 204
    :goto_1
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->femaleimg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x1

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 220
    :sswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->sexLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->setCurrentLayoutVisible(Landroid/view/View;)V

    goto :goto_0

    .line 223
    :sswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->birthdayLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->setCurrentLayoutVisible(Landroid/view/View;)V

    goto :goto_0

    .line 226
    :sswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->heightLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->setCurrentLayoutVisible(Landroid/view/View;)V

    goto :goto_0

    .line 230
    :sswitch_3
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->sexLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->setCurrentLayoutVisible(Landroid/view/View;)V

    goto :goto_0

    .line 234
    :sswitch_4
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weightLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->setCurrentLayoutVisible(Landroid/view/View;)V

    goto :goto_0

    .line 239
    :sswitch_5
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->heightLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->setCurrentLayoutVisible(Landroid/view/View;)V

    goto :goto_0

    .line 243
    :sswitch_6
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->resultLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->setCurrentLayoutVisible(Landroid/view/View;)V

    .line 244
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->heightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MINHEIGHT:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->height:F

    .line 245
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weightWheelView:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->MINWEIGHT:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weight:F

    .line 246
    iget v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->distanceType:I

    if-ne v0, v2, :cond_0

    .line 248
    iget v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->height:F

    div-float/2addr v0, v3

    invoke-static {v0}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getMbyFt(F)F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->height:F

    .line 250
    iget v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weight:F

    invoke-static {v0}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getKgUnitWeight(F)F

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weight:F

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getBMI()V

    goto :goto_0

    .line 256
    :sswitch_7
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->birthdayLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->setCurrentLayoutVisible(Landroid/view/View;)V

    goto :goto_0

    .line 260
    :sswitch_8
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->maleimg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 261
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->femaleimg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 266
    :sswitch_9
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->maleimg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 267
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->femaleimg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f06004c -> :sswitch_8
        0x7f06004d -> :sswitch_9
        0x7f0601a2 -> :sswitch_0
        0x7f0601a4 -> :sswitch_1
        0x7f0601a5 -> :sswitch_2
        0x7f0601a8 -> :sswitch_3
        0x7f0601a9 -> :sswitch_4
        0x7f0601ac -> :sswitch_5
        0x7f0601ad -> :sswitch_6
        0x7f0601b4 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->setContentView(I)V

    .line 64
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->context:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pre_DistanceType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->distanceType:I

    .line 66
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->initBirthdayView()V

    .line 67
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->initSexView()V

    .line 68
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->initHeightView()V

    .line 69
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->initWeightView()V

    .line 70
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->initResultView()V

    .line 71
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->resultLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->setCurrentLayoutVisible(Landroid/view/View;)V

    .line 72
    const-string v0, "personal_weight"

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->weight:F

    .line 73
    const-string v0, "personal_height"

    const/high16 v1, 0x43200000    # 160.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/BMIActivity;->height:F

    .line 74
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/BMIActivity;->getBMI()V

    .line 75
    return-void
.end method

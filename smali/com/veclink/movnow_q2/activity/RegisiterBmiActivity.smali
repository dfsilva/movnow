.class public Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "RegisiterBmiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field female_img:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field male_img:Landroid/widget/ImageView;

.field person_birthday_layout:Landroid/view/View;

.field person_birthday_textview:Landroid/widget/TextView;

.field person_height_layout:Landroid/view/View;

.field person_height_textview:Landroid/widget/TextView;

.field person_weight_layout:Landroid/view/View;

.field person_weight_textview:Landroid/widget/TextView;

.field reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

.field titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 40
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 41
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c010e

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 43
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f020168

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 44
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c00f4

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightText(Ljava/lang/String;)V

    .line 46
    const v0, 0x7f06004c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->male_img:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->female_img:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_birthday_textview:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f060053

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_height_textview:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f060051

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_weight_textview:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_birthday_layout:Landroid/view/View;

    .line 53
    const v0, 0x7f060052

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_height_layout:Landroid/view/View;

    .line 54
    const v0, 0x7f060050

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_weight_layout:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->male_img:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->female_img:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 58
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->female_img:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_birthday_layout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_height_layout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_weight_layout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->setDefaultPersonnalMsg()V

    .line 64
    return-void
.end method

.method private setDefaultPersonnalMsg()V
    .locals 11

    .prologue
    const/16 v10, 0x7c6

    const/high16 v9, 0x429c0000    # 78.0f

    const/16 v8, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 70
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "weight_unit_array":[Ljava/lang/String;
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "height_unit_array":[Ljava/lang/String;
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v4, "personal_year"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v4, "personal_month"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v4, "personal_day"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v4, "pre_Sex"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v4, "personal_weight"

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v4, "personal_height"

    const/high16 v5, 0x432f0000    # 175.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_birthday_textview:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v4, "pre_DistanceType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v4, "pre_Weight_Type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_height_textview:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v5, 0x3ffc000000000000L    # 1.75

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_weight_textview:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x4e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v4, "pre_DistanceType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v4, "pre_Weight_Type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_height_textview:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v5, 0x3fe00000    # 1.75f

    invoke-static {v5}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getFtByM(F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_weight_textview:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getLbUnitWeight(F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImgSelectedState(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "img"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->female_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->male_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 113
    :goto_1
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->female_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 121
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "firstLogin"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->finish()V

    goto :goto_0

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->male_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 130
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->female_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 131
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v2, "pre_Sex"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :sswitch_2
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->male_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 137
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->female_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 138
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    const-string v2, "pre_Sex"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :sswitch_3
    new-instance v1, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_birthday_textview:Landroid/widget/TextView;

    invoke-direct {v1, p0, v4, v2}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    .line 143
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v1, v4}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->setCanceledOnTouchOutside(Z)V

    .line 144
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show()V

    goto :goto_0

    .line 148
    :sswitch_4
    new-instance v1, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_height_textview:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    .line 149
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v1, v4}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show()V

    goto :goto_0

    .line 154
    :sswitch_5
    new-instance v1, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->person_weight_textview:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    .line 155
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v1, v4}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->setCanceledOnTouchOutside(Z)V

    .line 156
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->reBmiWheelViewDialog:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->show()V

    goto :goto_0

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f06004c -> :sswitch_1
        0x7f06004d -> :sswitch_2
        0x7f06004e -> :sswitch_3
        0x7f060050 -> :sswitch_5
        0x7f060052 -> :sswitch_4
        0x7f0601cb -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->setContentView(I)V

    .line 34
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;->initView()V

    .line 36
    return-void
.end method

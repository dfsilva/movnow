.class public Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "AddCaloriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private etFoodCal:Landroid/widget/EditText;

.field private etFoodName:Landroid/widget/EditText;

.field private imgCal:Landroid/widget/ImageView;

.field private imgUrl:Ljava/lang/String;

.field private scrollView:Landroid/widget/ScrollView;

.field titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method

.method private backDialog()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "resetdialog":Lcom/veclink/movnow_q2/view/BaseRemindDialog;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c00e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setTitle(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->context:Landroid/content/Context;

    const v2, 0x7f0c016e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setContent(Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->show()V

    .line 66
    return-void
.end method

.method private initView()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 73
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 74
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c014c

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 76
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 77
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setLefttButtonListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleButtonListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c00f4

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightText(Ljava/lang/String;)V

    .line 80
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->imgCal:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->etFoodName:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->etFoodCal:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->scrollView:Landroid/widget/ScrollView;

    .line 85
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->imgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->imgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->b:Landroid/graphics/Bitmap;

    .line 91
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->imgCal:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->backDialog()V

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->etFoodName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "foodName":Ljava/lang/String;
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->etFoodCal:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "foodCal":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->toast:Landroid/widget/Toast;

    const v5, 0x7f0c0078

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->toast:Landroid/widget/Toast;

    const v5, 0x7f0c007a

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_2

    .line 111
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->toast:Landroid/widget/Toast;

    const v5, 0x7f0c007b

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 113
    :cond_2
    new-instance v3, Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-direct {v3}, Lcom/veclink/healthy/database/entity/UptakeCalorie;-><init>()V

    .line 114
    .local v3, "uptakeCalorie":Lcom/veclink/healthy/database/entity/UptakeCalorie;
    invoke-virtual {v3, v1}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->setFoodName(Ljava/lang/String;)V

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->setCalorieContent(I)V

    .line 116
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->setCounts(F)V

    .line 117
    const-string v4, "yyyyMMdd"

    invoke-static {v4}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->setDateTime(Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->setUserId(Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->imgUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->setImgUrl(Ljava/lang/String;)V

    .line 121
    invoke-static {p0, v3}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->addUptakeCalorie(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UptakeCalorie;)J

    .line 122
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->finish()V

    goto/16 :goto_0

    .line 129
    .end local v0    # "foodCal":Ljava/lang/String;
    .end local v1    # "foodName":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uptakeCalorie":Lcom/veclink/healthy/database/entity/UptakeCalorie;
    :pswitch_1
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->backDialog()V

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x7f0601c9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->setContentView(I)V

    .line 47
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imgUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->imgUrl:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->initView()V

    .line 52
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 147
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 148
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 149
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->etFoodName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 150
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->etFoodCal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 151
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 138
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 139
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 140
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->etFoodName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 141
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;->etFoodCal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 142
    return v2
.end method

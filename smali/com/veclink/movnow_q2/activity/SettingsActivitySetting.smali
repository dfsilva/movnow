.class public Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "SettingsActivitySetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private appVersionClickCount:I

.field private appVersionClickStartTime:J

.field private mContext:Landroid/content/Context;

.field private siAppVersion:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private siGuide:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private siInstructions:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private switch_mile_onoff:Landroid/widget/Switch;

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private tvLogout:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->appVersionClickCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 55
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 57
    .local v3, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 58
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 67
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 68
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c0035

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 69
    const v0, 0x7f06019c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siInstructions:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 70
    const v0, 0x7f06019d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siGuide:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 71
    const v0, 0x7f06019e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siAppVersion:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 72
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siAppVersion:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c012b

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siAppVersion:Lcom/veclink/movnow_q2/view/SettingsItemView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setRightText(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siAppVersion:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setRightVisisble(I)V

    .line 75
    const v0, 0x7f0601a0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->tvLogout:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f06019b

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->switch_mile_onoff:Landroid/widget/Switch;

    .line 77
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siInstructions:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siGuide:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siAppVersion:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->tvLogout:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siInstructions:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c00da

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siGuide:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c00db

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 83
    const v0, 0x7f06019f

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->switch_mile_onoff:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->mContext:Landroid/content/Context;

    const-string v2, "mile_set"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->switch_mile_onoff:Landroid/widget/Switch;

    new-instance v1, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting$1;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->siInstructions:Lcom/veclink/movnow_q2/view/SettingsItemView;

    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v1, v1, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowUseInstructions:I

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setVisibility(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 124
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 129
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->delAllSportAndSleepData(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    :pswitch_3
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    const v2, 0x7f0c00e3

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/veclink/healthy/business/http/pojo/LogoutResponse;

    aput-object v4, v3, v6

    invoke-virtual {v2, p0, v3}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 144
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const-class v3, Lcom/veclink/healthy/business/http/pojo/LogoutResponse;

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v2, p0, v3, v4}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 145
    new-instance v0, Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;

    invoke-direct {v0, p0}, Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "healthyLogoutSession":Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;
    invoke-static {p0, v0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    goto :goto_0

    .line 152
    .end local v0    # "healthyLogoutSession":Lcom/veclink/healthy/business/http/session/HealthyLogoutSession;
    :pswitch_4
    iget v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->appVersionClickCount:I

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->appVersionClickStartTime:J

    .line 153
    :cond_1
    iget v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->appVersionClickCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->appVersionClickCount:I

    .line 154
    iget v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->appVersionClickCount:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->appVersionClickStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 155
    iput v6, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->appVersionClickCount:I

    .line 156
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->appVersionClickStartTime:J

    .line 157
    sget-object v2, Lcom/veclink/healthy/business/http/server/ServerUrl;->BASEURL:Ljava/lang/String;

    const-string v3, "http://q.movnow.com/rest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    const-string v2, "http://113.108.103.150:8985/rest"

    sput-object v2, Lcom/veclink/healthy/business/http/server/ServerUrl;->BASEURL:Ljava/lang/String;

    .line 159
    const-string v2, "http://113.108.103.150:8985/Bracelet"

    sput-object v2, Lcom/veclink/healthy/business/http/server/ServerUrl;->UPLOAD_BRACELET_DATA_URL:Ljava/lang/String;

    .line 160
    const-string v2, "change to test address success"

    invoke-static {p0, v2}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_2
    const-string v2, "http://q.movnow.com/rest"

    sput-object v2, Lcom/veclink/healthy/business/http/server/ServerUrl;->BASEURL:Ljava/lang/String;

    .line 163
    const-string v2, "http://dataq.movnow.com/Bracelet"

    sput-object v2, Lcom/veclink/healthy/business/http/server/ServerUrl;->UPLOAD_BRACELET_DATA_URL:Ljava/lang/String;

    .line 164
    const-string v2, "change to public address success"

    invoke-static {p0, v2}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x7f06019c
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->setContentView(I)V

    .line 48
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->initView()V

    .line 50
    return-void
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/LogoutResponse;)V
    .locals 5
    .param p1, "reponse"    # Lcom/veclink/healthy/business/http/pojo/LogoutResponse;

    .prologue
    .line 176
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/veclink/healthy/business/http/pojo/LogoutResponse;

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 177
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->logOut(Landroid/content/Context;)V

    .line 178
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 179
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->unBindDevice(Landroid/content/Context;)V

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->startActivity(Landroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->finish()V

    .line 184
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onResume()V

    .line 112
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->tvLogout:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->tvLogout:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.class public Lcom/veclink/movnow_q2/activity/SettingsActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private siLogin:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private siMyDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private siMyTarget:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private siSettings:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private siSportType:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private tvConSyn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/SettingsActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 39
    const v0, 0x7f06005c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siMyDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 40
    const v0, 0x7f06005d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siMyTarget:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 41
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siSettings:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 42
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siLogin:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 43
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siSportType:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 44
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siSportType:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c00c8

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 45
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->tvConSyn:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 47
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->tvConSyn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siMyDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siMyTarget:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siSettings:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siLogin:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siSportType:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siMyDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c00c4

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siMyTarget:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c00c3

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siSettings:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c0035

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f020173

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setLeftTextBackground(I)V

    .line 59
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    new-instance v1, Lcom/veclink/movnow_q2/activity/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/SettingsActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setLefttButtonListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siSportType:Lcom/veclink/movnow_q2/view/SettingsItemView;

    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v1, v1, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowSportType:I

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setVisibility(I)V

    .line 74
    return-void
.end method

.method private sendIntent(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "targetclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 88
    :pswitch_0
    const-class v1, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->sendIntent(Ljava/lang/Class;)V

    goto :goto_0

    .line 92
    :pswitch_1
    const-class v1, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->sendIntent(Ljava/lang/Class;)V

    goto :goto_0

    .line 95
    :pswitch_2
    const-class v1, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;

    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->sendIntent(Ljava/lang/Class;)V

    goto :goto_0

    .line 99
    :pswitch_3
    const-class v1, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;

    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->sendIntent(Ljava/lang/Class;)V

    goto :goto_0

    .line 103
    :pswitch_4
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->isNeedLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-class v1, Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->sendIntent(Ljava/lang/Class;)V

    goto :goto_0

    .line 106
    :cond_0
    const-class v1, Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->sendIntent(Ljava/lang/Class;)V

    goto :goto_0

    .line 127
    :pswitch_5
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "bind_mac_address":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const-class v1, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->sendIntent(Ljava/lang/Class;)V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->finish()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x7f06005c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->mContext:Landroid/content/Context;

    .line 35
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->initView()V

    .line 37
    return-void
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/LogoutResponse;)V
    .locals 6
    .param p1, "reponse"    # Lcom/veclink/healthy/business/http/pojo/LogoutResponse;

    .prologue
    const/4 v5, 0x0

    .line 152
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/veclink/healthy/business/http/pojo/LogoutResponse;

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 153
    const-string v2, "LogoutResponse"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LogoutResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->logOut(Landroid/content/Context;)V

    .line 155
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siLogin:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setRightText(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 157
    .local v0, "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    invoke-virtual {v0, v5}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncSleepData(Z)V

    .line 158
    invoke-virtual {v0, v5}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncStepData(Z)V

    .line 159
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getActivityManager()Lcom/veclink/movnow_q2/util/MyActivityManager;

    move-result-object v2

    const-class v3, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/util/MyActivityManager;->popAllActivityExceptOne(Ljava/lang/Class;)V

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->siLogin:Lcom/veclink/movnow_q2/view/SettingsItemView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

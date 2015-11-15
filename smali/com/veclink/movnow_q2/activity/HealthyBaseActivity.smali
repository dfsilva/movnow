.class public Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.super Landroid/app/Activity;
.source "HealthyBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 78
    const v0, 0x7f040003

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->overridePendingTransition(II)V

    .line 79
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 58
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 59
    .local v0, "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getActivityManager()Lcom/veclink/movnow_q2/util/MyActivityManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/veclink/movnow_q2/util/MyActivityManager;->popActivity(Landroid/app/Activity;)V

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0}, Lcom/veclink/movnow_q2/util/ActivityUtil;->setActivityTheme(Landroid/app/Activity;)V

    .line 24
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 25
    .local v0, "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getActivityManager()Lcom/veclink/movnow_q2/util/MyActivityManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/veclink/movnow_q2/util/MyActivityManager;->pushActivity(Landroid/app/Activity;)V

    .line 26
    sget-boolean v4, Lcom/veclink/movnow_q2/util/ActivityUtil;->isFullScreen:Z

    if-eqz v4, :cond_0

    .line 53
    :goto_0
    return-void

    .line 27
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 32
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 35
    :cond_1
    new-instance v3, Lcom/veclink/movnow_q2/view/SystemBarTintManager;

    invoke-direct {v3, p0}, Lcom/veclink/movnow_q2/view/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    .line 36
    .local v3, "tintManager":Lcom/veclink/movnow_q2/view/SystemBarTintManager;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/view/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 38
    const v2, 0x7f080034

    .line 39
    .local v2, "resColor":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "className":Ljava/lang/String;
    const-class v4, Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    const v2, 0x7f08004e

    .line 49
    :cond_2
    :goto_1
    invoke-virtual {v3, v2}, Lcom/veclink/movnow_q2/view/SystemBarTintManager;->setStatusBarTintResource(I)V

    goto :goto_0

    .line 42
    :cond_3
    const-class v4, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 43
    const v2, 0x7f08004d

    goto :goto_1

    .line 44
    :cond_4
    const-class v4, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 45
    const v2, 0x7f080050

    goto :goto_1

    .line 46
    :cond_5
    const-class v4, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-class v4, Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    :cond_6
    const v2, 0x7f08004f

    goto :goto_1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 65
    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->overridePendingTransition(II)V

    .line 67
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 71
    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->overridePendingTransition(II)V

    .line 73
    return-void
.end method

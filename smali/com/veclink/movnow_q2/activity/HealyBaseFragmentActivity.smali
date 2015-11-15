.class public Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "HealyBaseFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 66
    const v0, 0x7f040003

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->overridePendingTransition(II)V

    .line 67
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 46
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 47
    .local v0, "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getActivityManager()Lcom/veclink/movnow_q2/util/MyActivityManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/veclink/movnow_q2/util/MyActivityManager;->popActivity(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {p0}, Lcom/veclink/movnow_q2/util/ActivityUtil;->setActivityTheme(Landroid/app/Activity;)V

    .line 23
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 25
    .local v0, "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getActivityManager()Lcom/veclink/movnow_q2/util/MyActivityManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/veclink/movnow_q2/util/MyActivityManager;->pushActivity(Landroid/app/Activity;)V

    .line 26
    sget-boolean v2, Lcom/veclink/movnow_q2/util/ActivityUtil;->isFullScreen:Z

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 32
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 35
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    new-instance v1, Lcom/veclink/movnow_q2/view/SystemBarTintManager;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/view/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    .line 37
    .local v1, "tintManager":Lcom/veclink/movnow_q2/view/SystemBarTintManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 39
    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/SystemBarTintManager;->setStatusBarTintResource(I)V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->overridePendingTransition(II)V

    .line 55
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->overridePendingTransition(II)V

    .line 61
    return-void
.end method

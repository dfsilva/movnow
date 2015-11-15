.class public Lcom/veclink/movnow_q2/activity/LoadingActivity;
.super Landroid/app/Activity;
.source "LoadingActivity.java"


# static fields
.field private static final SHAREDPREFERENCES_NAME:Ljava/lang/String; = "first_pref"


# instance fields
.field isFirstIn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const-string v2, "first_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/veclink/movnow_q2/activity/LoadingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 18
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "isFirstIn"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/veclink/movnow_q2/activity/LoadingActivity;->isFirstIn:Z

    .line 19
    iget-boolean v2, p0, Lcom/veclink/movnow_q2/activity/LoadingActivity;->isFirstIn:Z

    if-eqz v2, :cond_0

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 22
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/LoadingActivity;->finish()V

    .line 36
    :goto_0
    return-void

    .line 24
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->isNeedLogin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/LoadingActivity;->finish()V

    goto :goto_0

    .line 29
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/LoadingActivity;->finish()V

    goto :goto_0
.end method

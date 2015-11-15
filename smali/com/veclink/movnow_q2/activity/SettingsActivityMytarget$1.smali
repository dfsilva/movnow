.class Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;
.super Ljava/lang/Object;
.source "SettingsActivityMytarget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pre_MyTarget_wan"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$000(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pre_MyTarget_qian"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$100(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pre_MyTarget_bai"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$200(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pre_MyTarget_shi"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$300(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pre_MyTarget_ge"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$400(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pre_MyTarget"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$500(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParams()V

    .line 120
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->firstLogin:Z
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$600(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->finish()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # invokes: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->submitUserInfo()V
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$700(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)V

    goto :goto_0
.end method

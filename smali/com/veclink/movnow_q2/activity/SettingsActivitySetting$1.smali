.class Lcom/veclink/movnow_q2/activity/SettingsActivitySetting$1;
.super Ljava/lang/Object;
.source "SettingsActivitySetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->access$000(Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mile_set"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 90
    .local v0, "currentChecked":Z
    if-eq v0, p2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->access$000(Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mile_set"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    if-eqz p2, :cond_1

    .line 93
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pre_DistanceType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pre_Weight_Type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :goto_0
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParams()V

    .line 103
    :cond_0
    return-void

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pre_DistanceType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivitySetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pre_Weight_Type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

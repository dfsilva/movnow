.class Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;
.super Ljava/lang/Object;
.source "SettingsActivityMyDeviceSleepTime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->showSetTimeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evCurrent:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->access$000(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeBegin:Landroid/widget/EditText;

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeBegin:Landroid/widget/EditText;

    const-string v1, "%02d:%02d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "key_sleep_time_begin_hour"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "key_sleep_time_begin_minute"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 132
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evCurrent:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->access$000(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeEnd:Landroid/widget/EditText;

    if-ne v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeEnd:Landroid/widget/EditText;

    const-string v1, "%02d:%02d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "key_sleep_time_end_hour"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "key_sleep_time_end_minute"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_1
    const-string v0, "SettingsActivityMyDeviceSleepTime"

    const-string v1, "evCurrent err!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

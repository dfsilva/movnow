.class Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;
.super Ljava/lang/Object;
.source "SettingSittingRemindTime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "key_sitting_remind_timemind_time_begin_hour"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget v2, v2, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeBeginHour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "key_sitting_remind_time_begin_minute"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget v2, v2, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeBeginMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "key_sitting_remind_time_end_hour"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget v2, v2, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeEndHour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "key_sitting_remind_time_end_minute"

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget v2, v2, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeEndMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->finish()V

    .line 89
    return-void
.end method

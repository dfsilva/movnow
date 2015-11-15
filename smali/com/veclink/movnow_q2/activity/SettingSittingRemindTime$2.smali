.class Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;
.super Ljava/lang/Object;
.source "SettingSittingRemindTime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->showSetTimeDialog()V
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
    .line 125
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

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

    .line 128
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evCurrent:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->access$000(Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeBegin:Landroid/widget/EditText;

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeBegin:Landroid/widget/EditText;

    const-string v1, "%02d:%02d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeBeginHour:I

    .line 131
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeBeginMinute:I

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 141
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evCurrent:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->access$000(Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeEnd:Landroid/widget/EditText;

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeEnd:Landroid/widget/EditText;

    const-string v1, "%02d:%02d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeEndHour:I

    .line 135
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeEndMinute:I

    goto :goto_0

    .line 138
    :cond_1
    const-string v0, "SettingsActivityMySittingRemindTime"

    const-string v1, "evCurrent err!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

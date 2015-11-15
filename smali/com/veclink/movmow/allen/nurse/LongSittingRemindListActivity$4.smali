.class Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;
.super Ljava/lang/Object;
.source "LongSittingRemindListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->showSetTimeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    iget-object v1, v1, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectDistanceDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 166
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    iget-object v1, v1, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v1, 0x19

    .line 167
    .local v0, "mins":I
    const-string v1, "mins"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mins:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    const-string v2, "select_wake_up_times"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->tv_wake_up_time:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->access$400(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    const v3, 0x7f0c00ff

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->startSyn()V

    .line 171
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->access$100(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    iget-object v2, v2, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->remindList:Ljava/util/List;

    const-string v3, "sitting_remind_objects_file.wao"

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/StorageUtil;->writeRemindObject(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 172
    return-void
.end method

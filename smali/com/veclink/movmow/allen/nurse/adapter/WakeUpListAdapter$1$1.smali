.class Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;
.super Ljava/lang/Object;
.source "WakeUpListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;

.field final synthetic val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;

    iput-object p2, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x7

    .line 98
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->dismiss()V

    .line 99
    new-array v2, v5, [I

    .line 100
    .local v2, "repeatDay":[I
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;

    iget-object v3, v3, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iget-object v3, v3, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->remindList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;

    iget v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 101
    .local v1, "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    new-array v2, v5, [I

    .end local v2    # "repeatDay":[I
    fill-array-data v2, :array_0

    .line 102
    .restart local v2    # "repeatDay":[I
    new-instance v0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v3

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v4

    invoke-direct {v0, v3, v4, v2}, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;-><init>(II[I)V

    .line 103
    .local v0, "bleAlarmRemindParam":Lcom/veclink/bracelet/bean/BleAlarmRemindParam;
    const/4 v3, 0x0

    iput v3, v0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->openflag:I

    .line 104
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/veclink/healthy/task/SetRemindTask;

    iget-object v5, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;

    iget-object v5, v5, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iget-object v5, v5, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v0}, Lcom/veclink/healthy/task/SetRemindTask;-><init>(Landroid/content/Context;ILcom/veclink/bracelet/bean/BaseRemindParam;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 105
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;

    iget-object v3, v3, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iget-object v3, v3, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->remindList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;

    iget v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;

    iget-object v3, v3, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iget-object v3, v3, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;

    iget-object v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iget-object v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->remindList:Ljava/util/List;

    const-string v5, "wakeup_remind_objects_file.wao"

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/util/StorageUtil;->writeRemindObject(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;

    iget-object v3, v3, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    invoke-virtual {v3}, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->notifyDataSetChanged()V

    .line 108
    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v3

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v4

    const-string v5, "wake_up_remind_action"

    invoke-static {v3, v4, v5}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->cancelRemind(IILjava/lang/String;)V

    .line 109
    return-void

    .line 101
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

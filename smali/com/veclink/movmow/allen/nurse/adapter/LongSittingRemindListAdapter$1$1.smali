.class Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;
.super Ljava/lang/Object;
.source "LongSittingRemindListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;

.field final synthetic val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;

    iput-object p2, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->dismiss()V

    .line 98
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;

    iget-object v0, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    iget-object v0, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->remindList:Ljava/util/List;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;

    iget v1, v1, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;

    iget-object v0, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    iget-object v0, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;

    iget-object v1, v1, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    iget-object v1, v1, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->remindList:Ljava/util/List;

    const-string v2, "sitting_remind_objects_file.wao"

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/StorageUtil;->writeRemindObject(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;

    iget-object v0, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    invoke-virtual {v0}, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->notifyDataSetChanged()V

    .line 101
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;

    iget-object v0, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    iget-object v0, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 102
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;

    iget-object v0, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;->val$remindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v0}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v0

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;

    iget-object v1, v1, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;->val$remindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v1

    const-string v2, "sitting_long_remind_action"

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->cancelRemind(IILjava/lang/String;)V

    .line 103
    return-void
.end method

.class Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;
.super Ljava/lang/Object;
.source "WaterRemindListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

.field final synthetic val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    iput-object p2, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->dismiss()V

    .line 90
    const/4 v4, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 91
    .local v3, "repeatDay":[I
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    iget-object v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;->val$remindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v4}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v1

    .line 92
    .local v1, "hour":I
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    iget-object v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;->val$remindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v4}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v2

    .line 93
    .local v2, "minute":I
    new-instance v0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;

    invoke-direct {v0, v1, v2, v3}, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;-><init>(II[I)V

    .line 94
    .local v0, "bleAlarmRemindParam":Lcom/veclink/bracelet/bean/BleAlarmRemindParam;
    const/4 v4, 0x0

    iput v4, v0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->openflag:I

    .line 95
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/veclink/healthy/task/SetRemindTask;

    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    iget-object v6, v6, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;

    iget-object v6, v6, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7, v0}, Lcom/veclink/healthy/task/SetRemindTask;-><init>(Landroid/content/Context;ILcom/veclink/bracelet/bean/BaseRemindParam;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 96
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    iget-object v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;->val$remindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v4}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v4

    iget-object v5, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    iget-object v5, v5, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;->val$remindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v5}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v5

    const-string v6, "dringk_water_remind_action"

    invoke-static {v4, v5, v6}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->cancelRemind(IILjava/lang/String;)V

    .line 97
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    iget-object v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;

    iget-object v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->remindList:Ljava/util/List;

    iget-object v5, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    iget v5, v5, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;->val$position:I

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    iget-object v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;

    iget-object v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    iget-object v5, v5, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;

    iget-object v5, v5, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->remindList:Ljava/util/List;

    const-string v6, "water_remind_objects_file.wao"

    invoke-static {v4, v5, v6}, Lcom/veclink/movnow_q2/util/StorageUtil;->writeRemindObject(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1$1;->this$1:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    iget-object v4, v4, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;

    invoke-virtual {v4}, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->notifyDataSetChanged()V

    .line 101
    return-void

    .line 90
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

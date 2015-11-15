.class Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;
.super Ljava/lang/Object;
.source "AddOrEditLongSittingRemindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    invoke-virtual {v6}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getHourWheelIntValue()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    invoke-virtual {v6}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getMinuteWheelIntValue()I

    move-result v6

    if-nez v6, :cond_0

    .line 48
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v6, v6, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0105

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v6, v6, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->mContext:Landroid/content/Context;

    const-string v7, "sitting_remind_objects_file.wao"

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 54
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v6, v6, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    if-nez v6, :cond_1

    .line 55
    new-instance v4, Lcom/veclink/movmow/allen/nurse/RemindObject;

    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    invoke-virtual {v6}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getTimeStringValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0104

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v4, "obRemindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    invoke-virtual {v6}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getHourWheelIntValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setHour(I)V

    .line 58
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    invoke-virtual {v6}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getMinuteWheelIntValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setMinute(I)V

    .line 59
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v4}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v1

    .line 61
    .local v1, "hour":I
    invoke-virtual {v4}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v3

    .line 72
    .end local v4    # "obRemindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    .local v3, "minute":I
    :goto_1
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v6, v6, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->mContext:Landroid/content/Context;

    const-string v7, "sitting_remind_objects_file.wao"

    invoke-static {v6, v2, v7}, Lcom/veclink/movnow_q2/util/StorageUtil;->writeRemindObject(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 87
    const/4 v6, 0x7

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 88
    .local v5, "repeatDay":[I
    new-instance v0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;

    invoke-direct {v0, v1, v3, v5}, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;-><init>(II[I)V

    .line 89
    .local v0, "bleAlarmRemindParam":Lcom/veclink/bracelet/bean/BleAlarmRemindParam;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/veclink/healthy/task/SetRemindTask;

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v8, v8, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9, v0}, Lcom/veclink/healthy/task/SetRemindTask;-><init>(Landroid/content/Context;ILcom/veclink/bracelet/bean/BaseRemindParam;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 90
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    invoke-virtual {v6}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->finish()V

    goto :goto_0

    .line 63
    .end local v0    # "bleAlarmRemindParam":Lcom/veclink/bracelet/bean/BleAlarmRemindParam;
    .end local v1    # "hour":I
    .end local v3    # "minute":I
    .end local v5    # "repeatDay":[I
    :cond_1
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v6, v6, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getTimeStringValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setTime(Ljava/lang/String;)V

    .line 64
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v6, v6, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getHourWheelIntValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setHour(I)V

    .line 65
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v6, v6, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getMinuteWheelIntValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setMinute(I)V

    .line 66
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget v6, v6, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editObjectPosition:I

    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v6, v6, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v6}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v1

    .line 68
    .restart local v1    # "hour":I
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    iget-object v6, v6, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v6}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v3

    .restart local v3    # "minute":I
    goto :goto_1

    .line 87
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.class Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;
.super Ljava/lang/Object;
.source "AddOrEditWaterClockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->mContext:Landroid/content/Context;

    const-string v8, "water_remind_objects_file.wao"

    invoke-static {v7, v8}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 76
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    const/4 v5, 0x0

    .line 77
    .local v5, "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    if-nez v7, :cond_0

    .line 78
    new-instance v5, Lcom/veclink/movmow/allen/nurse/RemindObject;

    .end local v5    # "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getTimeStringValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v8, v8, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0103

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/veclink/movmow/allen/nurse/RemindObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .restart local v5    # "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getHourWheelIntValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setHour(I)V

    .line 81
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getMinuteWheelIntValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setMinute(I)V

    .line 82
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v5}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v2

    .line 84
    .local v2, "hour":I
    invoke-virtual {v5}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v4

    .line 95
    .local v4, "minute":I
    :goto_0
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 96
    .local v0, "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    const-string v7, "dringk_water_remind_action"

    invoke-static {v5, v7}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setRemindAlarm(Lcom/veclink/movmow/allen/nurse/RemindObject;Ljava/lang/String;)V

    .line 97
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->mContext:Landroid/content/Context;

    const-string v8, "water_remind_objects_file.wao"

    invoke-static {v7, v3, v8}, Lcom/veclink/movnow_q2/util/StorageUtil;->writeRemindObject(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 98
    const/4 v7, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    .line 99
    .local v6, "repeatDay":[I
    new-instance v1, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;

    invoke-direct {v1, v2, v4, v6}, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;-><init>(II[I)V

    .line 100
    .local v1, "bleAlarmRemindParam":Lcom/veclink/bracelet/bean/BleAlarmRemindParam;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/veclink/healthy/task/SetRemindTask;

    iget-object v9, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v9, v9, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10, v1}, Lcom/veclink/healthy/task/SetRemindTask;-><init>(Landroid/content/Context;ILcom/veclink/bracelet/bean/BaseRemindParam;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 101
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->finish()V

    .line 103
    return-void

    .line 86
    .end local v0    # "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    .end local v1    # "bleAlarmRemindParam":Lcom/veclink/bracelet/bean/BleAlarmRemindParam;
    .end local v2    # "hour":I
    .end local v4    # "minute":I
    .end local v6    # "repeatDay":[I
    :cond_0
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v7

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v8, v8, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v8}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v8

    const-string v9, "dringk_water_remind_action"

    invoke-static {v7, v8, v9}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->cancelRemind(IILjava/lang/String;)V

    .line 87
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-virtual {v8}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getTimeStringValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setTime(Ljava/lang/String;)V

    .line 88
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-virtual {v8}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getHourWheelIntValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setHour(I)V

    .line 89
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-virtual {v8}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getMinuteWheelIntValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setMinute(I)V

    .line 90
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editObjectPosition:I

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v8, v8, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-interface {v3, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v2

    .line 92
    .restart local v2    # "hour":I
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v4

    .line 93
    .restart local v4    # "minute":I
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v5, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    goto/16 :goto_0

    .line 98
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

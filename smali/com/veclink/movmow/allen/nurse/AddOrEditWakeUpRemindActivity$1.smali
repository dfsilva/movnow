.class Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;
.super Ljava/lang/Object;
.source "AddOrEditWakeUpRemindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x7

    .line 64
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mContext:Landroid/content/Context;

    const-string v8, "wakeup_remind_objects_file.wao"

    invoke-static {v7, v8}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 67
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    if-nez v7, :cond_1

    .line 68
    new-instance v5, Lcom/veclink/movmow/allen/nurse/RemindObject;

    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->getTimeStringValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v8, v8, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0109

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/veclink/movmow/allen/nurse/RemindObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v5, "obRemindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->getHourWheelIntValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setHour(I)V

    .line 71
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->getMinuteWheelIntValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setMinute(I)V

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;
    invoke-static {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->access$000(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)[Landroid/widget/ToggleButton;

    move-result-object v7

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 73
    invoke-virtual {v5}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getRepeateArray()[Z

    move-result-object v7

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;
    invoke-static {v8}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->access$000(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)[Landroid/widget/ToggleButton;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    aput-boolean v8, v7, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v5}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v1

    .line 77
    .local v1, "hour":I
    invoke-virtual {v5}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v4

    .line 91
    .end local v5    # "obRemindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    .local v4, "minute":I
    :goto_1
    new-array v6, v10, [I

    .line 92
    .local v6, "repeatDay":[I
    const/4 v2, 0x0

    :goto_2
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;
    invoke-static {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->access$000(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)[Landroid/widget/ToggleButton;

    move-result-object v7

    array-length v7, v7

    if-ge v2, v7, :cond_4

    .line 93
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;
    invoke-static {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->access$000(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)[Landroid/widget/ToggleButton;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 94
    const/4 v7, 0x1

    aput v7, v6, v2

    .line 92
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 79
    .end local v1    # "hour":I
    .end local v2    # "i":I
    .end local v4    # "minute":I
    .end local v6    # "repeatDay":[I
    :cond_1
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    invoke-virtual {v8}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->getTimeStringValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setTime(Ljava/lang/String;)V

    .line 80
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    invoke-virtual {v8}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->getHourWheelIntValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setHour(I)V

    .line 81
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    invoke-virtual {v8}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->getMinuteWheelIntValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/veclink/movmow/allen/nurse/RemindObject;->setMinute(I)V

    .line 82
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;
    invoke-static {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->access$000(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)[Landroid/widget/ToggleButton;

    move-result-object v7

    array-length v7, v7

    if-ge v2, v7, :cond_2

    .line 83
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getRepeateArray()[Z

    move-result-object v7

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;
    invoke-static {v8}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->access$000(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)[Landroid/widget/ToggleButton;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    aput-boolean v8, v7, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 85
    :cond_2
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editObjectPosition:I

    iget-object v8, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v8, v8, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-interface {v3, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v1

    .line 87
    .restart local v1    # "hour":I
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v4

    .restart local v4    # "minute":I
    goto/16 :goto_1

    .line 96
    .restart local v6    # "repeatDay":[I
    :cond_3
    const/4 v7, 0x0

    aput v7, v6, v2

    goto :goto_3

    .line 99
    :cond_4
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v7, v7, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mContext:Landroid/content/Context;

    const-string v8, "wakeup_remind_objects_file.wao"

    invoke-static {v7, v3, v8}, Lcom/veclink/movnow_q2/util/StorageUtil;->writeRemindObject(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 110
    new-array v6, v10, [I

    .end local v6    # "repeatDay":[I
    fill-array-data v6, :array_0

    .line 111
    .restart local v6    # "repeatDay":[I
    new-instance v0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;

    invoke-direct {v0, v1, v4, v6}, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;-><init>(II[I)V

    .line 112
    .local v0, "bleAlarmRemindParam":Lcom/veclink/bracelet/bean/BleAlarmRemindParam;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/veclink/healthy/task/SetRemindTask;

    iget-object v9, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget-object v9, v9, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mContext:Landroid/content/Context;

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10, v0}, Lcom/veclink/healthy/task/SetRemindTask;-><init>(Landroid/content/Context;ILcom/veclink/bracelet/bean/BaseRemindParam;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 113
    iget-object v7, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    invoke-virtual {v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->finish()V

    .line 115
    return-void

    .line 110
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

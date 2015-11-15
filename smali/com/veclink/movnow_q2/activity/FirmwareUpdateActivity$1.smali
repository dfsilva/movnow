.class Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;
.super Landroid/os/Handler;
.source "FirmwareUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 78
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 80
    :pswitch_0
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->flagDoUpdateNotDoOtherTask()V

    .line 81
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    const v4, 0x7f0c012d

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 86
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->progress:I

    .line 87
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    const v5, 0x7f0c0161

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iput-boolean v6, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->updateOver:Z

    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->filepath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "updateFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    const v4, 0x7f0c011b

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1$1;

    invoke-direct {v3, p0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1$1;-><init>(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 108
    .end local v0    # "updateFile":Ljava/io/File;
    :pswitch_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->filepath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "updateFiles":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    const v4, 0x7f0c011c

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v2, v6}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setClickable(Z)V

    .line 112
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v2}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->stopWaveAnimation()V

    goto/16 :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

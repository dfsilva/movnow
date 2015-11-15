.class Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;
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
    .line 119
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v2, 0x7f0c011c

    const/4 v3, 0x1

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 123
    :sswitch_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->filepath:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->update_remind_tip:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->access$000(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GETNEWROMOVER do update task\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->filepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->access$100(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->updateCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->filepath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/veclink/bracelet/bletask/UpdateFirmwareUtil;->update(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :sswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v0, v3}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setClickable(Z)V

    .line 130
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->stopWaveAnimation()V

    goto :goto_0

    .line 135
    :sswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    const v2, 0x7f0c011d

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v0, v3}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setClickable(Z)V

    .line 137
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->stopWaveAnimation()V

    goto :goto_0

    .line 141
    :sswitch_3
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    const v2, 0x7f0c0131

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :sswitch_4
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    # invokes: Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->finishFirwareActivity()V
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->access$200(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)V

    goto/16 :goto_0

    .line 149
    :sswitch_5
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-boolean v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->updateOver:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->progress:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v0, v3}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setClickable(Z)V

    .line 152
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->stopWaveAnimation()V

    goto/16 :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x8991 -> :sswitch_0
        0x8992 -> :sswitch_1
        0x8993 -> :sswitch_2
        0x8994 -> :sswitch_3
        0x8995 -> :sswitch_4
    .end sparse-switch
.end method

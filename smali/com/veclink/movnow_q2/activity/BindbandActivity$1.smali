.class Lcom/veclink/movnow_q2/activity/BindbandActivity$1;
.super Landroid/os/Handler;
.source "BindbandActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/BindbandActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const v4, 0x7f0c0117

    .line 69
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 75
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    .line 76
    .local v1, "bluetoothDeviceBean":Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BindbandActivity macaddrss is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->getDevice_address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n rssi is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->getDevice_rssi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->getDevice_rssi()I

    move-result v2

    const/16 v3, -0x3c

    if-lt v2, v3, :cond_0

    .line 78
    const-string v2, "BindbandActivity direct connect"

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # invokes: Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectBand(Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)V
    invoke-static {v2, v1}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$000(Lcom/veclink/movnow_q2/activity/BindbandActivity;Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)V

    goto :goto_0

    .line 83
    .end local v1    # "bluetoothDeviceBean":Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
    :pswitch_2
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    # setter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->devicesList:Ljava/util/ArrayList;
    invoke-static {v3, v2}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$102(Lcom/veclink/movnow_q2/activity/BindbandActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 84
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->devicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$100(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 85
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iput-object v5, v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .line 86
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->devicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$100(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v2}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->stopWaveAnimation()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->devicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$100(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    .line 91
    .local v0, "bluetoothBean":Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
    invoke-virtual {v0}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->getDevice_rssi()I

    move-result v2

    const/16 v3, -0x64

    if-gt v2, v3, :cond_2

    .line 92
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iput-object v5, v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .line 93
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v2}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->stopWaveAnimation()V

    goto/16 :goto_0

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->devicesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$100(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    # invokes: Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectBand(Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)V
    invoke-static {v3, v2}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$000(Lcom/veclink/movnow_q2/activity/BindbandActivity;Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)V

    goto/16 :goto_0

    .line 103
    .end local v0    # "bluetoothBean":Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
    :pswitch_3
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iput-object v5, v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .line 104
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->setConnectMessage(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-virtual {v2}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->stopWaveAnimation()V

    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

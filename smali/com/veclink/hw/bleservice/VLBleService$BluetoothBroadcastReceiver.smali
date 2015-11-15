.class Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VLBleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/hw/bleservice/VLBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/hw/bleservice/VLBleService;


# direct methods
.method constructor <init>(Lcom/veclink/hw/bleservice/VLBleService;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 851
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 853
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/veclink/hw/bleservice/VLBleService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$1500(Lcom/veclink/hw/bleservice/VLBleService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 856
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1500(Lcom/veclink/hw/bleservice/VLBleService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    # setter for: Lcom/veclink/hw/bleservice/VLBleService;->bluetoothEnable:Z
    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$502(Lcom/veclink/hw/bleservice/VLBleService;Z)Z

    .line 857
    :cond_2
    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothBroadcastReceiver bluetoothEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->bluetoothEnable:Z
    invoke-static {v3}, Lcom/veclink/hw/bleservice/VLBleService;->access$500(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->bluetoothEnable:Z
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$500(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 859
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->sendDeviceDisConnectMsg()V
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$200(Lcom/veclink/hw/bleservice/VLBleService;)V

    .line 860
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->disconnect()V

    .line 861
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->close()V

    .line 862
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$600(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$600(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->stopTask()V

    goto :goto_0

    .line 864
    :cond_3
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->autoReConnect:Z
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$400(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->bluetoothEnable:Z
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$500(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$600(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$600(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->stopTask()V

    .line 866
    :cond_4
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    new-instance v2, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    iget-object v3, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;-><init>(Lcom/veclink/hw/bleservice/VLBleService;Lcom/veclink/hw/bleservice/VLBleService$1;)V

    # setter for: Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$602(Lcom/veclink/hw/bleservice/VLBleService;Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    .line 867
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$BluetoothBroadcastReceiver;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$600(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->start()V

    goto/16 :goto_0
.end method

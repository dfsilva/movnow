.class Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$1;
.super Landroid/os/Handler;
.source "BleDeviceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 45
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 64
    :goto_0
    :pswitch_0
    return-void

    .line 51
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    .line 52
    .local v0, "device":Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->adapter:Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->access$000(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->addDeviceItem(Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)V

    goto :goto_0

    .line 55
    .end local v0    # "device":Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
    :pswitch_2
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    iput-object v2, v1, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .line 56
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->stopAnimation()V

    goto :goto_0

    .line 60
    :pswitch_3
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    iput-object v2, v1, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .line 61
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->stopAnimation()V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

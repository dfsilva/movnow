.class Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;
.super Ljava/lang/Object;
.source "BleDeviceListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 87
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 91
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->adapter:Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->access$000(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->clearAllDeviceItem()V

    .line 93
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    new-instance v1, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanDeviceCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v1, v2, v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;-><init>(Landroid/app/Activity;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    iput-object v1, v0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .line 94
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->startAnimation()V

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->stopScanTask()V

    .line 98
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .line 99
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->stopAnimation()V

    goto :goto_0
.end method

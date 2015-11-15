.class Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 163
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "action":Ljava/lang/String;
    const-string v1, "action_sync_params_done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    const v2, 0x8995

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const-string v1, "ACTION_GATT_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 172
    :cond_2
    const-string v1, "ACTION_GATT_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.class Lcom/veclink/movnow_q2/activity/BindbandActivity$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 207
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "action":Ljava/lang/String;
    const-string v1, "action_sync_params_done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string v1, "ACTION_USER_HAD_CLICK_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 216
    :cond_2
    const-string v1, "ACTION_GATT_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectHandler:Landroid/os/Handler;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 218
    :cond_3
    const-string v1, "ACTION_GATT_SERVICES_DISCOVERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectHandler:Landroid/os/Handler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 220
    :cond_4
    const-string v1, "action_bind_device_done"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v1, v1, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectHandler:Landroid/os/Handler;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.class Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$3;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivityMyDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$3;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "action":Ljava/lang/String;
    const-string v3, "ACTION_POWER_CHANGE_DATA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    const-string v3, "EXTRA_DATA"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 143
    .local v2, "powerValue":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 144
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$3;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->queryPowerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "powerValue":I
    :cond_0
    return-void
.end method

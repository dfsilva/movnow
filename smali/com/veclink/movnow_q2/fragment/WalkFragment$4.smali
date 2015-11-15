.class Lcom/veclink/movnow_q2/fragment/WalkFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "WalkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/fragment/WalkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$4;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 259
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "action":Ljava/lang/String;
    const-string v4, "ACTION_SHORT_SPORT_DATA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    const-string v4, "EXTRA_DATA"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 262
    .local v3, "sportSteps":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 263
    .local v1, "msg":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->what:I

    .line 264
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$4;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1300(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "sportSteps":I
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const-string v4, "ACTION_POWER_CHANGE_DATA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    const-string v4, "EXTRA_DATA"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 268
    .local v2, "powerValue":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 269
    .restart local v1    # "msg":Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v1, Landroid/os/Message;->what:I

    .line 270
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 271
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$4;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1300(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 272
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "powerValue":I
    :cond_2
    const-string v4, "ACTION_GATT_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 274
    .restart local v1    # "msg":Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v1, Landroid/os/Message;->what:I

    .line 275
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$4;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1300(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 276
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    const-string v4, "ACTION_GATT_SERVICES_DISCOVERED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 278
    .restart local v1    # "msg":Landroid/os/Message;
    const/4 v4, 0x5

    iput v4, v1, Landroid/os/Message;->what:I

    .line 279
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$4;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$1300(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

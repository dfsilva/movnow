.class Lcom/veclink/movnow_q2/fragment/WalkFragment$3;
.super Landroid/os/Handler;
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
    .line 236
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->band_power_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$600(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    new-instance v1, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v2, v2, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v3, v3, Lcom/veclink/movnow_q2/fragment/WalkFragment;->queryPowerCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v1, v2, v3}, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    iput-object v1, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->queryPowerValueTask:Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;

    .line 244
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$3;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v0, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->queryPowerValueTask:Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;

    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->work()V

    goto :goto_0
.end method

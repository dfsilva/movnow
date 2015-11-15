.class Lcom/veclink/movnow_q2/activity/PhotographicActivity$6$1;
.super Ljava/lang/Thread;
.source "PhotographicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6$1;->this$1:Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 712
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 713
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 714
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 715
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6$1;->this$1:Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->MyHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6$1;->this$1:Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # setter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isAllow:Z
    invoke-static {v2, v4}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$502(Lcom/veclink/movnow_q2/activity/PhotographicActivity;Z)Z

    .line 721
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

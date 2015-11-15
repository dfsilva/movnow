.class Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "PhotographicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/PhotographicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 670
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "action":Ljava/lang/String;
    const-string v2, "net.bestouch.caretracker.cameraCtrActivity.action.CAMERA_CTR_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 673
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isAllow:Z
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$500(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # setter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isAllow:Z
    invoke-static {v2, v5}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$502(Lcom/veclink/movnow_q2/activity/PhotographicActivity;Z)Z

    .line 675
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamMode:I
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$700(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 676
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->runnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;
    invoke-static {v4}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$200(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Lcom/veclink/healthy/photo/mySharedPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/veclink/healthy/photo/mySharedPreferences;->getShootInterval()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 706
    :cond_0
    :goto_0
    new-instance v2, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6$1;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6$1;-><init>(Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;)V

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6$1;->start()V

    .line 725
    :cond_1
    return-void

    .line 678
    :cond_2
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mVideoRecord:Z
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$800(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 679
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->surfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$900(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Landroid/view/SurfaceHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 680
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # setter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mVideoRecord:Z
    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$802(Lcom/veclink/movnow_q2/activity/PhotographicActivity;Z)Z

    .line 681
    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;
    invoke-static {}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$400()Lcom/veclink/healthy/photo/RecordService;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->surfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$900(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/healthy/photo/RecordService;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 687
    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;
    invoke-static {}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$400()Lcom/veclink/healthy/photo/RecordService;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$300(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamIdx:Ljava/lang/StringBuffer;
    invoke-static {v4}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$1000(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/veclink/healthy/photo/RecordService;->startVideoRecord(Landroid/hardware/Camera;II)V

    .line 691
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 692
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 693
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->MyHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 695
    .end local v1    # "message":Landroid/os/Message;
    :cond_3
    const-string v2, "MainActivity"

    const-string v3, "surfaceHolder is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 699
    :cond_4
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 700
    .restart local v1    # "message":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 701
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->MyHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

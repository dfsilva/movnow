.class Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;
.super Ljava/lang/Object;
.source "PhotographicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 192
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 198
    :try_start_0
    const-string v3, "mLlWhiteBorder"

    const-string v4, "setPadding+ "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->index:I
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$100(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;
    invoke-static {v4}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$200(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Lcom/veclink/healthy/photo/mySharedPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/veclink/healthy/photo/mySharedPreferences;->getShootNumber()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 200
    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;
    invoke-static {}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$400()Lcom/veclink/healthy/photo/RecordService;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$300(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/healthy/photo/RecordService;->takePicture(Landroid/hardware/Camera;)V

    .line 201
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 202
    .local v1, "message":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 203
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->MyHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mySp:Lcom/veclink/healthy/photo/mySharedPreferences;
    invoke-static {v4}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$200(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Lcom/veclink/healthy/photo/mySharedPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/veclink/healthy/photo/mySharedPreferences;->getShootInterval()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # operator++ for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->index:I
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$108(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)I

    .line 222
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    iget-object v4, v4, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 211
    .local v2, "message2":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 212
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->MyHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    const/4 v4, 0x1

    # setter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->isAllow:Z
    invoke-static {v3, v4}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$502(Lcom/veclink/movnow_q2/activity/PhotographicActivity;Z)Z

    .line 214
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    const/4 v4, 0x0

    # setter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->index:I
    invoke-static {v3, v4}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$102(Lcom/veclink/movnow_q2/activity/PhotographicActivity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v2    # "message2":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "exception..."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

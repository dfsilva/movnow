.class Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;
.super Landroid/os/Handler;
.source "BleQuinticOtaUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field byteRate:I

.field elapsedTime:I

.field percent:I

.field final synthetic this$0:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;


# direct methods
.method constructor <init>(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 228
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->this$0:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 229
    iput v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->percent:I

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->byteRate:I

    iput v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->elapsedTime:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UPDATE_DATA"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 237
    .local v0, "data":[I
    aget v1, v0, v3

    iput v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->percent:I

    .line 238
    aget v1, v0, v4

    iput v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->byteRate:I

    .line 239
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->elapsedTime:I

    .line 241
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->this$0:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;

    iget-object v1, v1, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget v2, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->percent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 242
    iget v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->percent:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->this$0:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;

    # setter for: Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mStopUpdate:Z
    invoke-static {v1, v4}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->access$102(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;Z)Z

    .line 244
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->this$0:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->access$200(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2$1;

    invoke-direct {v2, p0}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2$1;-><init>(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 256
    .end local v0    # "data":[I
    :pswitch_1
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->this$0:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;

    iget-object v1, v1, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

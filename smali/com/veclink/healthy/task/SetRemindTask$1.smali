.class Lcom/veclink/healthy/task/SetRemindTask$1;
.super Landroid/os/Handler;
.source "SetRemindTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/healthy/task/SetRemindTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/task/SetRemindTask;


# direct methods
.method constructor <init>(Lcom/veclink/healthy/task/SetRemindTask;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/veclink/healthy/task/SetRemindTask$1;->this$0:Lcom/veclink/healthy/task/SetRemindTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 36
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 65
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 41
    :pswitch_1
    const-string v1, "SetRemindTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u559d\u6c34\u8bbe\u7f6e\u63d0\u9192\u5b8c\u6210"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask$1;->this$0:Lcom/veclink/healthy/task/SetRemindTask;

    # getter for: Lcom/veclink/healthy/task/SetRemindTask;->remindType:I
    invoke-static {v1}, Lcom/veclink/healthy/task/SetRemindTask;->access$000(Lcom/veclink/healthy/task/SetRemindTask;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 44
    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask$1;->this$0:Lcom/veclink/healthy/task/SetRemindTask;

    # getter for: Lcom/veclink/healthy/task/SetRemindTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/healthy/task/SetRemindTask;->access$100(Lcom/veclink/healthy/task/SetRemindTask;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/veclink/movmow/allen/nurse/WaterRemindListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask$1;->this$0:Lcom/veclink/healthy/task/SetRemindTask;

    # getter for: Lcom/veclink/healthy/task/SetRemindTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/healthy/task/SetRemindTask;->access$100(Lcom/veclink/healthy/task/SetRemindTask;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask$1;->this$0:Lcom/veclink/healthy/task/SetRemindTask;

    # getter for: Lcom/veclink/healthy/task/SetRemindTask;->remindType:I
    invoke-static {v1}, Lcom/veclink/healthy/task/SetRemindTask;->access$000(Lcom/veclink/healthy/task/SetRemindTask;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 46
    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask$1;->this$0:Lcom/veclink/healthy/task/SetRemindTask;

    # getter for: Lcom/veclink/healthy/task/SetRemindTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/healthy/task/SetRemindTask;->access$100(Lcom/veclink/healthy/task/SetRemindTask;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 47
    :cond_3
    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask$1;->this$0:Lcom/veclink/healthy/task/SetRemindTask;

    # getter for: Lcom/veclink/healthy/task/SetRemindTask;->remindType:I
    invoke-static {v1}, Lcom/veclink/healthy/task/SetRemindTask;->access$000(Lcom/veclink/healthy/task/SetRemindTask;)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 48
    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask$1;->this$0:Lcom/veclink/healthy/task/SetRemindTask;

    # getter for: Lcom/veclink/healthy/task/SetRemindTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/healthy/task/SetRemindTask;->access$100(Lcom/veclink/healthy/task/SetRemindTask;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 55
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask$1;->this$0:Lcom/veclink/healthy/task/SetRemindTask;

    # getter for: Lcom/veclink/healthy/task/SetRemindTask;->remindType:I
    invoke-static {v1}, Lcom/veclink/healthy/task/SetRemindTask;->access$000(Lcom/veclink/healthy/task/SetRemindTask;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 56
    const-string v1, "SetRemindTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u559d\u6c34\u8bbe\u7f6e\u63d0\u9192\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask$1;->this$0:Lcom/veclink/healthy/task/SetRemindTask;

    # getter for: Lcom/veclink/healthy/task/SetRemindTask;->remindType:I
    invoke-static {v1}, Lcom/veclink/healthy/task/SetRemindTask;->access$000(Lcom/veclink/healthy/task/SetRemindTask;)I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 59
    const-string v1, "SetRemindTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e45\u5750\u8bbe\u7f6e\u63d0\u9192\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 60
    :cond_5
    iget-object v1, p0, Lcom/veclink/healthy/task/SetRemindTask$1;->this$0:Lcom/veclink/healthy/task/SetRemindTask;

    # getter for: Lcom/veclink/healthy/task/SetRemindTask;->remindType:I
    invoke-static {v1}, Lcom/veclink/healthy/task/SetRemindTask;->access$000(Lcom/veclink/healthy/task/SetRemindTask;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 61
    const-string v1, "SetRemindTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7761\u7720\u8d77\u5e8a\u95f9\u94c3\u8bbe\u7f6e\u63d0\u9192\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

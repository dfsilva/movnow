.class Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$1;
.super Landroid/os/Handler;
.source "ManagerCaloriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 114
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v2, "imgUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imgUrl--------:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->access$000(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->access$000(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    iget-object v2, v2, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/veclink/movnow_q2/activity/AddCaloriesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "imgUrl"

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->imgUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->access$000(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    invoke-virtual {v2, v1}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->finish()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
    .end packed-switch
.end method

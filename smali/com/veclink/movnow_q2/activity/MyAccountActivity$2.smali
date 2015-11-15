.class Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;
.super Landroid/os/Handler;
.source "MyAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/MyAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 99
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    new-instance v2, Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$102(Lcom/veclink/movnow_q2/activity/MyAccountActivity;Lcom/veclink/movnow_q2/view/WaitDialogUtil;)Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    .line 100
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$100(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    const v3, 0x7f0c018d

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->setMessage(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$100(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->showDialog()V

    .line 102
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 103
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/veclink/healthy/business/http/pojo/GetUploadTokenResponse;

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3, v4}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 104
    new-instance v0, Lcom/veclink/healthy/business/http/session/HealthyGetUploadTokenSession;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/veclink/healthy/business/http/session/HealthyGetUploadTokenSession;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "session":Lcom/veclink/healthy/business/http/session/HealthyGetUploadTokenSession;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MyAccountActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MyAccountActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MyAccountActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/MyAccountActivity;->access$200(Lcom/veclink/movnow_q2/activity/MyAccountActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    .line 106
    return-void
.end method

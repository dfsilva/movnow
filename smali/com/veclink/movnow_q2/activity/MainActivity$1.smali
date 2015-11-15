.class Lcom/veclink/movnow_q2/activity/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MainActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 83
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    const-class v3, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v2, v1}, Lcom/veclink/movnow_q2/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    # invokes: Lcom/veclink/movnow_q2/activity/MainActivity;->setGuided()V
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/MainActivity;->access$000(Lcom/veclink/movnow_q2/activity/MainActivity;)V

    .line 102
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 88
    new-instance v0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    sget-object v2, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {v0, v2}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "dialog":Lcom/veclink/movnow_q2/view/BaseRemindDialog;
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    const v3, 0x7f0c0129

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setOkBtnText(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    const v3, 0x7f0c018b

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setContent(Ljava/lang/String;)V

    .line 91
    new-instance v2, Lcom/veclink/movnow_q2/activity/MainActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/veclink/movnow_q2/activity/MainActivity$1$1;-><init>(Lcom/veclink/movnow_q2/activity/MainActivity$1;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->show()V

    goto :goto_0
.end method

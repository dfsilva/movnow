.class Lcom/veclink/healthy/view/ShareDialog$3;
.super Landroid/os/Handler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/healthy/view/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/view/ShareDialog;


# direct methods
.method constructor <init>(Lcom/veclink/healthy/view/ShareDialog;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/veclink/healthy/view/ShareDialog$3;->this$0:Lcom/veclink/healthy/view/ShareDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "isShare":Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/veclink/healthy/view/ShareDialog$3;->this$0:Lcom/veclink/healthy/view/ShareDialog;

    # getter for: Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/healthy/view/ShareDialog;->access$000(Lcom/veclink/healthy/view/ShareDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/healthy/view/ShareDialog$3;->this$0:Lcom/veclink/healthy/view/ShareDialog;

    # getter for: Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/veclink/healthy/view/ShareDialog;->access$000(Lcom/veclink/healthy/view/ShareDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

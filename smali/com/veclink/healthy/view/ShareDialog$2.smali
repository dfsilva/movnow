.class Lcom/veclink/healthy/view/ShareDialog$2;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


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
    .line 133
    iput-object p1, p0, Lcom/veclink/healthy/view/ShareDialog$2;->this$0:Lcom/veclink/healthy/view/ShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0
    .param p1, "arg0"    # Lcn/sharesdk/framework/Platform;
    .param p2, "arg1"    # I

    .prologue
    .line 154
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .param p1, "arg0"    # Lcn/sharesdk/framework/Platform;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "arg2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 146
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "yes"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/veclink/healthy/view/ShareDialog$2;->this$0:Lcom/veclink/healthy/view/ShareDialog;

    iget-object v1, v1, Lcom/veclink/healthy/view/ShareDialog;->sharehand:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "arg0"    # Lcn/sharesdk/framework/Platform;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Throwable;

    .prologue
    .line 137
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 138
    .local v0, "msg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/veclink/healthy/view/ShareDialog$2;->this$0:Lcom/veclink/healthy/view/ShareDialog;

    iget-object v1, v1, Lcom/veclink/healthy/view/ShareDialog;->sharehand:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method

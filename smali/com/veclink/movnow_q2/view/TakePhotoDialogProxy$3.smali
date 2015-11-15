.class Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;
.super Landroid/os/Handler;
.source "TakePhotoDialogProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    # getter for: Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->photoIconPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->access$100(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    # getter for: Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->b:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->access$200(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    # getter for: Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->b:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->access$200(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    # getter for: Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->photoIconPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->access$100(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->b:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->access$202(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 204
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    # getter for: Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->b:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->access$200(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    # getter for: Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->extendHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->access$300(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    # getter for: Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->extendHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->access$300(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy$3;->this$0:Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;

    # getter for: Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->b:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;->access$200(Lcom/veclink/movnow_q2/view/TakePhotoDialogProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    :cond_2
    return-void
.end method

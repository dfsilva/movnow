.class Lcom/veclink/healthy/view/BluetoothConnAnimView$1;
.super Landroid/os/Handler;
.source "BluetoothConnAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/healthy/view/BluetoothConnAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/view/BluetoothConnAnimView;


# direct methods
.method constructor <init>(Lcom/veclink/healthy/view/BluetoothConnAnimView;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView$1;->this$0:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView$1;->this$0:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-boolean v0, v0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->mDragging:Z

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x222

    if-ne v0, v1, :cond_2

    .line 35
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView$1;->this$0:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    # getter for: Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->access$100(Lcom/veclink/healthy/view/BluetoothConnAnimView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView$1;->this$0:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    # getter for: Lcom/veclink/healthy/view/BluetoothConnAnimView;->aniSet2:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->access$000(Lcom/veclink/healthy/view/BluetoothConnAnimView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 39
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 36
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x333

    if-ne v0, v1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView$1;->this$0:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    # getter for: Lcom/veclink/healthy/view/BluetoothConnAnimView;->wave3:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->access$300(Lcom/veclink/healthy/view/BluetoothConnAnimView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/view/BluetoothConnAnimView$1;->this$0:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    # getter for: Lcom/veclink/healthy/view/BluetoothConnAnimView;->aniSet3:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/veclink/healthy/view/BluetoothConnAnimView;->access$200(Lcom/veclink/healthy/view/BluetoothConnAnimView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

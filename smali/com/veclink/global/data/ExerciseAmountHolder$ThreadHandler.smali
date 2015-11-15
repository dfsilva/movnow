.class final Lcom/veclink/global/data/ExerciseAmountHolder$ThreadHandler;
.super Landroid/os/Handler;
.source "ExerciseAmountHolder.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/global/data/ExerciseAmountHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/global/data/ExerciseAmountHolder;


# direct methods
.method public constructor <init>(Lcom/veclink/global/data/ExerciseAmountHolder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/veclink/global/data/ExerciseAmountHolder$ThreadHandler;->this$0:Lcom/veclink/global/data/ExerciseAmountHolder;

    .line 243
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 244
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 297
    :pswitch_0
    return-void

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

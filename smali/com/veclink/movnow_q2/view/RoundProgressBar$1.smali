.class Lcom/veclink/movnow_q2/view/RoundProgressBar$1;
.super Landroid/os/Handler;
.source "RoundProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/view/RoundProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/RoundProgressBar;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/RoundProgressBar;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar$1;->this$0:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 89
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar$1;->this$0:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->postInvalidate()V

    .line 90
    return-void
.end method

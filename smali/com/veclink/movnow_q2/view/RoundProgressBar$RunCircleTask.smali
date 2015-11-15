.class Lcom/veclink/movnow_q2/view/RoundProgressBar$RunCircleTask;
.super Ljava/util/TimerTask;
.source "RoundProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/view/RoundProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunCircleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/RoundProgressBar;


# direct methods
.method private constructor <init>(Lcom/veclink/movnow_q2/view/RoundProgressBar;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar$RunCircleTask;->this$0:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/movnow_q2/view/RoundProgressBar;Lcom/veclink/movnow_q2/view/RoundProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/movnow_q2/view/RoundProgressBar;
    .param p2, "x1"    # Lcom/veclink/movnow_q2/view/RoundProgressBar$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/RoundProgressBar$RunCircleTask;-><init>(Lcom/veclink/movnow_q2/view/RoundProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar$RunCircleTask;->this$0:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    # operator++ for: Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->access$008(Lcom/veclink/movnow_q2/view/RoundProgressBar;)I

    .line 106
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar$RunCircleTask;->this$0:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar$RunCircleTask;->this$0:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    # getter for: Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I
    invoke-static {v2}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->access$000(Lcom/veclink/movnow_q2/view/RoundProgressBar;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    # setter for: Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->access$002(Lcom/veclink/movnow_q2/view/RoundProgressBar;I)I

    .line 107
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 108
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar$RunCircleTask;->this$0:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    # getter for: Lcom/veclink/movnow_q2/view/RoundProgressBar;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->access$100(Lcom/veclink/movnow_q2/view/RoundProgressBar;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

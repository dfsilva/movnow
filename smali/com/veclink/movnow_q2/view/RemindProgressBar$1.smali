.class Lcom/veclink/movnow_q2/view/RemindProgressBar$1;
.super Ljava/lang/Object;
.source "RemindProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/view/RemindProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/RemindProgressBar;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/RemindProgressBar;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar$1;->this$0:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar$1;->this$0:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    # invokes: Lcom/veclink/movnow_q2/view/RemindProgressBar;->onTimeChanged()V
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->access$000(Lcom/veclink/movnow_q2/view/RemindProgressBar;)V

    .line 83
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar$1;->this$0:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar$1;->this$0:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    # getter for: Lcom/veclink/movnow_q2/view/RemindProgressBar;->mProgressTick:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->access$100(Lcom/veclink/movnow_q2/view/RemindProgressBar;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    return-void
.end method

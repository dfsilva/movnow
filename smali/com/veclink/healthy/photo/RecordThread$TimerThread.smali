.class Lcom/veclink/healthy/photo/RecordThread$TimerThread;
.super Ljava/util/TimerTask;
.source "RecordThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/healthy/photo/RecordThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/photo/RecordThread;


# direct methods
.method constructor <init>(Lcom/veclink/healthy/photo/RecordThread;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/veclink/healthy/photo/RecordThread$TimerThread;->this$0:Lcom/veclink/healthy/photo/RecordThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordThread$TimerThread;->this$0:Lcom/veclink/healthy/photo/RecordThread;

    # getter for: Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/veclink/healthy/photo/RecordThread;->access$000(Lcom/veclink/healthy/photo/RecordThread;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimerThread, run()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordThread$TimerThread;->this$0:Lcom/veclink/healthy/photo/RecordThread;

    invoke-virtual {v0}, Lcom/veclink/healthy/photo/RecordThread;->stopRecord()V

    .line 180
    invoke-virtual {p0}, Lcom/veclink/healthy/photo/RecordThread$TimerThread;->cancel()Z

    .line 181
    return-void
.end method

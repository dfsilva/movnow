.class Lcom/veclink/healthy/photo/VideoRecorder$TimerThread;
.super Ljava/util/TimerTask;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/healthy/photo/VideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/photo/VideoRecorder;


# direct methods
.method constructor <init>(Lcom/veclink/healthy/photo/VideoRecorder;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/veclink/healthy/photo/VideoRecorder$TimerThread;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    const-string v1, "VideoRecorder"

    const-string v2, "TimerThread, run()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/veclink/healthy/photo/VideoRecorder$TimerThread;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    invoke-virtual {v1}, Lcom/veclink/healthy/photo/VideoRecorder;->stopRecording()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

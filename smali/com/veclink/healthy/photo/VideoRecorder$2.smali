.class Lcom/veclink/healthy/photo/VideoRecorder$2;
.super Ljava/lang/Object;
.source "VideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/healthy/photo/VideoRecorder;->startRecording(Landroid/hardware/Camera;ILandroid/view/SurfaceHolder;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/photo/VideoRecorder;


# direct methods
.method constructor <init>(Lcom/veclink/healthy/photo/VideoRecorder;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/veclink/healthy/photo/VideoRecorder$2;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/veclink/healthy/photo/VideoRecorder$2;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    const/4 v1, 0x1

    # setter for: Lcom/veclink/healthy/photo/VideoRecorder;->enableStop:Z
    invoke-static {v0, v1}, Lcom/veclink/healthy/photo/VideoRecorder;->access$502(Lcom/veclink/healthy/photo/VideoRecorder;Z)Z

    .line 155
    return-void
.end method

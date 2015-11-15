.class Lcom/veclink/healthy/photo/VideoRecorder$1;
.super Ljava/lang/Thread;
.source "VideoRecorder.java"


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

.field final synthetic val$videoRotation:I


# direct methods
.method constructor <init>(Lcom/veclink/healthy/photo/VideoRecorder;I)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    iput p2, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->val$videoRotation:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 88
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    # setter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3, v4}, Lcom/veclink/healthy/photo/VideoRecorder;->access$002(Lcom/veclink/healthy/photo/VideoRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 90
    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mCamera:Landroid/hardware/Camera;
    invoke-static {}, Lcom/veclink/healthy/photo/VideoRecorder;->access$100()Landroid/hardware/Camera;

    move-result-object v3

    if-nez v3, :cond_0

    .line 91
    const-string v3, "VideoRecorder"

    const-string v4, "mCamera is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 95
    :cond_0
    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mCamera:Landroid/hardware/Camera;
    invoke-static {}, Lcom/veclink/healthy/photo/VideoRecorder;->access$100()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    .line 96
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mCamera:Landroid/hardware/Camera;
    invoke-static {}, Lcom/veclink/healthy/photo/VideoRecorder;->access$100()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 99
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 100
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 101
    const/4 v2, 0x1

    .line 102
    .local v2, "useProfile":Z
    if-eqz v2, :cond_1

    .line 104
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mCamIdx:I
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$200(Lcom/veclink/healthy/photo/VideoRecorder;)I

    move-result v3

    invoke-static {v3}, Lcom/veclink/healthy/photo/CameraUtil;->getCameraQuality(I)I

    move-result v1

    .line 105
    .local v1, "quality":I
    const-string v3, "VideoRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 124
    .end local v1    # "quality":I
    :goto_1
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    iget v4, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->val$videoRotation:I

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 125
    const-string v3, "VideoRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videoRotation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->val$videoRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->surfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v4}, Lcom/veclink/healthy/photo/VideoRecorder;->access$300(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 129
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->videoFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/veclink/healthy/photo/VideoRecorder;->access$400(Lcom/veclink/healthy/photo/VideoRecorder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 134
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 136
    const-string v3, "VideoRecorder"

    const-string v4, "mediarecorder.start()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 114
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 116
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 118
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/16 v4, 0xb0

    const/16 v5, 0x90

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 120
    iget-object v3, p0, Lcom/veclink/healthy/photo/VideoRecorder$1;->this$0:Lcom/veclink/healthy/photo/VideoRecorder;

    # getter for: Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/veclink/healthy/photo/VideoRecorder;->access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_1

    .line 140
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

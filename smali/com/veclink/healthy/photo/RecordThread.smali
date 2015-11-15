.class public Lcom/veclink/healthy/photo/RecordThread;
.super Ljava/lang/Thread;
.source "RecordThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/healthy/photo/RecordThread$TimerThread;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCamera:Landroid/hardware/Camera;

.field private mediarecorder:Landroid/media/MediaRecorder;

.field private recordTime:J

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceview:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(JLandroid/view/SurfaceView;Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "recordTime"    # J
    .param p3, "surfaceview"    # Landroid/view/SurfaceView;
    .param p4, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    const-string v0, "RecordThread"

    iput-object v0, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    const-string v1, "RecordThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-wide p1, p0, Lcom/veclink/healthy/photo/RecordThread;->recordTime:J

    .line 35
    iput-object p3, p0, Lcom/veclink/healthy/photo/RecordThread;->surfaceview:Landroid/view/SurfaceView;

    .line 36
    iput-object p4, p0, Lcom/veclink/healthy/photo/RecordThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/healthy/photo/RecordThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/photo/RecordThread;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCameraInstance()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 62
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    const-string v3, "getCameraInstance()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "c":Landroid/hardware/Camera;
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    const-string v3, "getCameraInstance() ok"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v0

    .line 67
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "info"

    const-string v3, "\u6253\u5f00\u6444\u50cf\u5934\u9519"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 41
    iget-object v1, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    const-string v2, "run()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/veclink/healthy/photo/RecordThread;->startRecord()V

    .line 51
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 53
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/veclink/healthy/photo/RecordThread$TimerThread;

    invoke-direct {v1, p0}, Lcom/veclink/healthy/photo/RecordThread$TimerThread;-><init>(Lcom/veclink/healthy/photo/RecordThread;)V

    iget-wide v2, p0, Lcom/veclink/healthy/photo/RecordThread;->recordTime:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 54
    return-void
.end method

.method public startRecord()V
    .locals 5

    .prologue
    .line 80
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    const-string v3, "startRecord()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    .line 83
    invoke-virtual {p0}, Lcom/veclink/healthy/photo/RecordThread;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mCamera:Landroid/hardware/Camera;

    .line 86
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 87
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/veclink/healthy/photo/RecordThread;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 88
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    const-string v3, "startRecord(), 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 92
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 93
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    const-string v3, "startRecord(), 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 97
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    const-string v3, "startRecord(), 3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/veclink/healthy/photo/RecordThread;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/SilentRecordService/Media/VideRecordDemo.3gp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecord(), filePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    const-string v3, "mediarecorder.prepare()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 133
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    const-string v3, "mediarecorder.start()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordThread;->TAG:Ljava/lang/String;

    const-string v1, "stopRecord()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 154
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 155
    iput-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mediarecorder:Landroid/media/MediaRecorder;

    .line 157
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordThread;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordThread;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 159
    iput-object v2, p0, Lcom/veclink/healthy/photo/RecordThread;->mCamera:Landroid/hardware/Camera;

    .line 162
    :cond_0
    return-void
.end method

.class public Lcom/veclink/healthy/photo/VideoRecorder;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/healthy/photo/VideoRecorder$TimerThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_SAMPLING_RATE:I = 0x5622

.field private static final TAG:Ljava/lang/String; = "VideoRecorder"

.field private static mCamera:Landroid/hardware/Camera;


# instance fields
.field private channelConfig:I

.field private enableStop:Z

.field private isRecording:Z

.field private mCamIdx:I

.field private mRecordHandler:Landroid/os/Handler;

.field private mTimer:Ljava/util/Timer;

.field mTimerTask:Ljava/util/TimerTask;

.field private mediarecorder:Landroid/media/MediaRecorder;

.field private recordTime:I

.field private samplingRate:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private videoFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    const/16 v0, 0x5622

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/veclink/healthy/photo/VideoRecorder;-><init>(II)V

    .line 57
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "samplingRate"    # I
    .param p2, "channelConfig"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->isRecording:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mCamIdx:I

    .line 35
    iput-boolean v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->enableStop:Z

    .line 36
    iput v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->recordTime:I

    .line 37
    iput-object v2, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mRecordHandler:Landroid/os/Handler;

    .line 38
    iput-object v2, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimer:Ljava/util/Timer;

    .line 39
    iput-object v2, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimerTask:Ljava/util/TimerTask;

    .line 47
    iput p1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->samplingRate:I

    .line 48
    iput p2, p0, Lcom/veclink/healthy/photo/VideoRecorder;->channelConfig:I

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/media/MediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/photo/VideoRecorder;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/veclink/healthy/photo/VideoRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/healthy/photo/VideoRecorder;
    .param p1, "x1"    # Landroid/media/MediaRecorder;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$100()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/veclink/healthy/photo/VideoRecorder;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/healthy/photo/VideoRecorder;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/photo/VideoRecorder;

    .prologue
    .line 23
    iget v0, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mCamIdx:I

    return v0
.end method

.method static synthetic access$300(Lcom/veclink/healthy/photo/VideoRecorder;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/photo/VideoRecorder;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/veclink/healthy/photo/VideoRecorder;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/veclink/healthy/photo/VideoRecorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/photo/VideoRecorder;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/veclink/healthy/photo/VideoRecorder;->videoFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/veclink/healthy/photo/VideoRecorder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/healthy/photo/VideoRecorder;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->enableStop:Z

    return p1
.end method

.method public static getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/veclink/healthy/photo/VideoRecorder;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method


# virtual methods
.method public setRecordHandler(Landroid/os/Handler;)V
    .locals 2
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 42
    const-string v0, "VideoRecorder"

    const-string v1, "setRecordHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mRecordHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method public startRecording(Landroid/hardware/Camera;ILandroid/view/SurfaceHolder;ILjava/lang/String;I)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "camIdx"    # I
    .param p3, "holder"    # Landroid/view/SurfaceHolder;
    .param p4, "rotation"    # I
    .param p5, "filepath"    # Ljava/lang/String;
    .param p6, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v1, "VideoRecorder"

    const-string v2, "Start recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-boolean v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->isRecording:Z

    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->isRecording:Z

    .line 75
    move v0, p4

    .line 76
    .local v0, "videoRotation":I
    iput-object p5, p0, Lcom/veclink/healthy/photo/VideoRecorder;->videoFilePath:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/veclink/healthy/photo/VideoRecorder;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 78
    sput-object p1, Lcom/veclink/healthy/photo/VideoRecorder;->mCamera:Landroid/hardware/Camera;

    .line 79
    iput p2, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mCamIdx:I

    .line 80
    iput p6, p0, Lcom/veclink/healthy/photo/VideoRecorder;->recordTime:I

    .line 82
    new-instance v1, Lcom/veclink/healthy/photo/VideoRecorder$1;

    invoke-direct {v1, p0, v0}, Lcom/veclink/healthy/photo/VideoRecorder$1;-><init>(Lcom/veclink/healthy/photo/VideoRecorder;I)V

    invoke-virtual {v1}, Lcom/veclink/healthy/photo/VideoRecorder$1;->start()V

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->enableStop:Z

    .line 149
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/veclink/healthy/photo/VideoRecorder$2;

    invoke-direct {v2, p0}, Lcom/veclink/healthy/photo/VideoRecorder$2;-><init>(Lcom/veclink/healthy/photo/VideoRecorder;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    iget v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->recordTime:I

    if-lez v1, :cond_0

    .line 162
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimer:Ljava/util/Timer;

    .line 163
    new-instance v1, Lcom/veclink/healthy/photo/VideoRecorder$TimerThread;

    invoke-direct {v1, p0}, Lcom/veclink/healthy/photo/VideoRecorder$TimerThread;-><init>(Lcom/veclink/healthy/photo/VideoRecorder;)V

    iput-object v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimerTask:Ljava/util/TimerTask;

    .line 164
    iget-object v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/veclink/healthy/photo/VideoRecorder$TimerThread;

    invoke-direct {v2, p0}, Lcom/veclink/healthy/photo/VideoRecorder$TimerThread;-><init>(Lcom/veclink/healthy/photo/VideoRecorder;)V

    iget v3, p0, Lcom/veclink/healthy/photo/VideoRecorder;->recordTime:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 167
    .end local v0    # "videoRotation":I
    :cond_0
    return-void
.end method

.method public stopRecording()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 174
    iget-boolean v2, p0, Lcom/veclink/healthy/photo/VideoRecorder;->enableStop:Z

    if-nez v2, :cond_0

    .line 175
    const-string v2, "VideoRecorder"

    const-string v3, "Wait for a moment before stop recording!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return v1

    .line 179
    :cond_0
    const-string v2, "VideoRecorder"

    const-string v3, "stop recording"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v2, p0, Lcom/veclink/healthy/photo/VideoRecorder;->isRecording:Z

    if-eqz v2, :cond_4

    .line 182
    iget-object v2, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 185
    iget-object v2, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 186
    iput-object v4, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mediarecorder:Landroid/media/MediaRecorder;

    .line 195
    :cond_1
    iput-boolean v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->isRecording:Z

    .line 197
    iget-object v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 199
    iget-object v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 200
    iput-object v4, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimer:Ljava/util/Timer;

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 204
    iput-object v4, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mTimerTask:Ljava/util/TimerTask;

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mRecordHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 208
    iget-object v1, p0, Lcom/veclink/healthy/photo/VideoRecorder;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 209
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.class public Lcom/veclink/healthy/photo/RecordService;
.super Landroid/app/Service;
.source "RecordService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/healthy/photo/RecordService$LocalBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordService"


# instance fields
.field filePath:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mPlaybackRotation:I

.field private pictureHandler:Lcom/veclink/healthy/photo/PictureHandler;

.field private recordState:I

.field private shutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field surfaceHolder:Landroid/view/SurfaceHolder;

.field private videoRecorder:Lcom/veclink/healthy/photo/VideoRecorder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    new-instance v0, Lcom/veclink/healthy/photo/RecordService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/veclink/healthy/photo/RecordService$LocalBinder;-><init>(Lcom/veclink/healthy/photo/RecordService;)V

    iput-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->mBinder:Landroid/os/IBinder;

    .line 26
    iput v2, p0, Lcom/veclink/healthy/photo/RecordService;->recordState:I

    .line 27
    iput-object v1, p0, Lcom/veclink/healthy/photo/RecordService;->pictureHandler:Lcom/veclink/healthy/photo/PictureHandler;

    .line 28
    iput-object v1, p0, Lcom/veclink/healthy/photo/RecordService;->videoRecorder:Lcom/veclink/healthy/photo/VideoRecorder;

    .line 29
    iput-object v1, p0, Lcom/veclink/healthy/photo/RecordService;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 30
    iput-object v1, p0, Lcom/veclink/healthy/photo/RecordService;->filePath:Ljava/lang/String;

    .line 31
    iput v2, p0, Lcom/veclink/healthy/photo/RecordService;->mPlaybackRotation:I

    .line 84
    new-instance v0, Lcom/veclink/healthy/photo/RecordService$1;

    invoke-direct {v0, p0}, Lcom/veclink/healthy/photo/RecordService$1;-><init>(Lcom/veclink/healthy/photo/RecordService;)V

    iput-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 202
    new-instance v0, Lcom/veclink/healthy/photo/RecordService$4;

    invoke-direct {v0, p0}, Lcom/veclink/healthy/photo/RecordService$4;-><init>(Lcom/veclink/healthy/photo/RecordService;)V

    iput-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/healthy/photo/RecordService;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/photo/RecordService;

    .prologue
    .line 22
    iget v0, p0, Lcom/veclink/healthy/photo/RecordService;->mPlaybackRotation:I

    return v0
.end method

.method static synthetic access$100(Lcom/veclink/healthy/photo/RecordService;)Lcom/veclink/healthy/photo/PictureHandler;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/photo/RecordService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->pictureHandler:Lcom/veclink/healthy/photo/PictureHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/healthy/photo/RecordService;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/healthy/photo/RecordService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/veclink/healthy/photo/RecordService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/healthy/photo/RecordService;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/veclink/healthy/photo/RecordService;->recordState:I

    return p1
.end method


# virtual methods
.method public getRecordState()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/veclink/healthy/photo/RecordService;->recordState:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/veclink/healthy/photo/PictureHandler;

    invoke-virtual {p0}, Lcom/veclink/healthy/photo/RecordService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/veclink/healthy/photo/PictureHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->pictureHandler:Lcom/veclink/healthy/photo/PictureHandler;

    .line 50
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->pictureHandler:Lcom/veclink/healthy/photo/PictureHandler;

    iget-object v1, p0, Lcom/veclink/healthy/photo/RecordService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/photo/PictureHandler;->setRecordHandler(Landroid/os/Handler;)V

    .line 52
    new-instance v0, Lcom/veclink/healthy/photo/VideoRecorder;

    invoke-direct {v0}, Lcom/veclink/healthy/photo/VideoRecorder;-><init>()V

    iput-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->videoRecorder:Lcom/veclink/healthy/photo/VideoRecorder;

    .line 53
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->videoRecorder:Lcom/veclink/healthy/photo/VideoRecorder;

    iget-object v1, p0, Lcom/veclink/healthy/photo/RecordService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/photo/VideoRecorder;->setRecordHandler(Landroid/os/Handler;)V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 58
    const-string v0, "RecordService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public setPlaybackRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/veclink/healthy/photo/RecordService;->mPlaybackRotation:I

    .line 80
    const-string v0, "RecordService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaybackRotation() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/veclink/healthy/photo/RecordService;->mPlaybackRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/veclink/healthy/photo/RecordService;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 76
    return-void
.end method

.method public silentTakePicture()V
    .locals 2

    .prologue
    .line 98
    iget v1, p0, Lcom/veclink/healthy/photo/RecordService;->recordState:I

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/veclink/healthy/photo/RecordService;->recordState:I

    .line 102
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/veclink/healthy/photo/RecordService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "sv":Landroid/view/SurfaceView;
    new-instance v1, Lcom/veclink/healthy/photo/RecordService$2;

    invoke-direct {v1, p0, v0}, Lcom/veclink/healthy/photo/RecordService$2;-><init>(Lcom/veclink/healthy/photo/RecordService;Landroid/view/SurfaceView;)V

    invoke-virtual {v1}, Lcom/veclink/healthy/photo/RecordService$2;->start()V

    goto :goto_0
.end method

.method public startVideoRecord(Landroid/hardware/Camera;II)V
    .locals 12
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "camIdx"    # I
    .param p3, "timeout"    # I

    .prologue
    .line 153
    if-eqz p1, :cond_0

    if-gez p3, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v0, p0, Lcom/veclink/healthy/photo/RecordService;->recordState:I

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x3

    iput v0, p0, Lcom/veclink/healthy/photo/RecordService;->recordState:I

    .line 161
    :try_start_0
    sget-object v11, Lcom/veclink/healthy/photo/Const;->VideoPath:Ljava/lang/String;

    .line 163
    .local v11, "rootPath":Ljava/lang/String;
    if-nez v11, :cond_2

    .line 164
    const-string v0, "RecordService"

    const-string v1, "No directory to save video."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v11    # "rootPath":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 181
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "rootPath":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd_HH:mm:ss"

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 170
    .local v8, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "date":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clever_Cam"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->filePath:Ljava/lang/String;

    .line 174
    const-string v0, "RecordService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordService;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v0, "RecordService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlaybackRotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/veclink/healthy/photo/RecordService;->mPlaybackRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService;->videoRecorder:Lcom/veclink/healthy/photo/VideoRecorder;

    iget-object v3, p0, Lcom/veclink/healthy/photo/RecordService;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget v4, p0, Lcom/veclink/healthy/photo/RecordService;->mPlaybackRotation:I

    iget-object v5, p0, Lcom/veclink/healthy/photo/RecordService;->filePath:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/veclink/healthy/photo/VideoRecorder;->startRecording(Landroid/hardware/Camera;ILandroid/view/SurfaceHolder;ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopVideoRecord()Z
    .locals 4

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 189
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/veclink/healthy/photo/RecordService;->videoRecorder:Lcom/veclink/healthy/photo/VideoRecorder;

    invoke-virtual {v2}, Lcom/veclink/healthy/photo/VideoRecorder;->stopRecording()Z

    move-result v1

    .line 192
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/veclink/healthy/photo/RecordService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/healthy/photo/RecordService;->filePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/veclink/healthy/photo/AndroidUtil;->fileScan(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public takePicture(Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 131
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v1, p0, Lcom/veclink/healthy/photo/RecordService;->recordState:I

    if-nez v1, :cond_0

    .line 136
    const/4 v1, 0x1

    iput v1, p0, Lcom/veclink/healthy/photo/RecordService;->recordState:I

    .line 138
    move-object v0, p1

    .line 139
    .local v0, "cam":Landroid/hardware/Camera;
    new-instance v1, Lcom/veclink/healthy/photo/RecordService$3;

    invoke-direct {v1, p0, v0}, Lcom/veclink/healthy/photo/RecordService$3;-><init>(Lcom/veclink/healthy/photo/RecordService;Landroid/hardware/Camera;)V

    invoke-virtual {v1}, Lcom/veclink/healthy/photo/RecordService$3;->start()V

    goto :goto_0
.end method

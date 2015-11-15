.class Lcom/veclink/healthy/photo/RecordService$2;
.super Ljava/lang/Thread;
.source "RecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/healthy/photo/RecordService;->silentTakePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/photo/RecordService;

.field final synthetic val$sv:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Lcom/veclink/healthy/photo/RecordService;Landroid/view/SurfaceView;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/veclink/healthy/photo/RecordService$2;->this$0:Lcom/veclink/healthy/photo/RecordService;

    iput-object p2, p0, Lcom/veclink/healthy/photo/RecordService$2;->val$sv:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v0, "camIdx":Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/veclink/healthy/photo/CameraUtil;->getCameraInstance(ZLjava/lang/StringBuffer;)Landroid/hardware/Camera;

    move-result-object v1

    .line 112
    .local v1, "camera":Landroid/hardware/Camera;
    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/veclink/healthy/photo/RecordService$2;->val$sv:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 122
    iget-object v3, p0, Lcom/veclink/healthy/photo/RecordService$2;->this$0:Lcom/veclink/healthy/photo/RecordService;

    # getter for: Lcom/veclink/healthy/photo/RecordService;->pictureHandler:Lcom/veclink/healthy/photo/PictureHandler;
    invoke-static {v3}, Lcom/veclink/healthy/photo/RecordService;->access$100(Lcom/veclink/healthy/photo/RecordService;)Lcom/veclink/healthy/photo/PictureHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/healthy/photo/RecordService$2;->this$0:Lcom/veclink/healthy/photo/RecordService;

    # getter for: Lcom/veclink/healthy/photo/RecordService;->mPlaybackRotation:I
    invoke-static {v4}, Lcom/veclink/healthy/photo/RecordService;->access$000(Lcom/veclink/healthy/photo/RecordService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/veclink/healthy/photo/PictureHandler;->setImageRotation(I)V

    .line 123
    iget-object v3, p0, Lcom/veclink/healthy/photo/RecordService$2;->this$0:Lcom/veclink/healthy/photo/RecordService;

    # getter for: Lcom/veclink/healthy/photo/RecordService;->pictureHandler:Lcom/veclink/healthy/photo/PictureHandler;
    invoke-static {v3}, Lcom/veclink/healthy/photo/RecordService;->access$100(Lcom/veclink/healthy/photo/RecordService;)Lcom/veclink/healthy/photo/PictureHandler;

    move-result-object v3

    invoke-virtual {v1, v5, v5, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 124
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 126
    :cond_0
    return-void

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    const-string v3, "RecordService"

    const-string v4, "Can not get camera instance !"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

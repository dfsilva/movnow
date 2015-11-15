.class Lcom/veclink/healthy/photo/RecordService$3;
.super Ljava/lang/Thread;
.source "RecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/healthy/photo/RecordService;->takePicture(Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/photo/RecordService;

.field final synthetic val$cam:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Lcom/veclink/healthy/photo/RecordService;Landroid/hardware/Camera;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/veclink/healthy/photo/RecordService$3;->this$0:Lcom/veclink/healthy/photo/RecordService;

    iput-object p2, p0, Lcom/veclink/healthy/photo/RecordService$3;->val$cam:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService$3;->val$cam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService$3;->this$0:Lcom/veclink/healthy/photo/RecordService;

    # getter for: Lcom/veclink/healthy/photo/RecordService;->pictureHandler:Lcom/veclink/healthy/photo/PictureHandler;
    invoke-static {v0}, Lcom/veclink/healthy/photo/RecordService;->access$100(Lcom/veclink/healthy/photo/RecordService;)Lcom/veclink/healthy/photo/PictureHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/photo/RecordService$3;->this$0:Lcom/veclink/healthy/photo/RecordService;

    # getter for: Lcom/veclink/healthy/photo/RecordService;->mPlaybackRotation:I
    invoke-static {v1}, Lcom/veclink/healthy/photo/RecordService;->access$000(Lcom/veclink/healthy/photo/RecordService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/photo/PictureHandler;->setImageRotation(I)V

    .line 146
    iget-object v0, p0, Lcom/veclink/healthy/photo/RecordService$3;->val$cam:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/veclink/healthy/photo/RecordService$3;->this$0:Lcom/veclink/healthy/photo/RecordService;

    # getter for: Lcom/veclink/healthy/photo/RecordService;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v1}, Lcom/veclink/healthy/photo/RecordService;->access$200(Lcom/veclink/healthy/photo/RecordService;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/veclink/healthy/photo/RecordService$3;->this$0:Lcom/veclink/healthy/photo/RecordService;

    # getter for: Lcom/veclink/healthy/photo/RecordService;->pictureHandler:Lcom/veclink/healthy/photo/PictureHandler;
    invoke-static {v3}, Lcom/veclink/healthy/photo/RecordService;->access$100(Lcom/veclink/healthy/photo/RecordService;)Lcom/veclink/healthy/photo/PictureHandler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 148
    :cond_0
    return-void
.end method

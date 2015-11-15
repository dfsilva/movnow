.class Lcom/veclink/movnow_q2/activity/PhotographicActivity$5;
.super Ljava/lang/Object;
.source "PhotographicActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/PhotographicActivity;->initRecordService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "rawBinder"    # Landroid/os/IBinder;

    .prologue
    .line 410
    const-string v0, "MainActivity"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    check-cast p2, Lcom/veclink/healthy/photo/RecordService$LocalBinder;

    .end local p2    # "rawBinder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/veclink/healthy/photo/RecordService$LocalBinder;->getService()Lcom/veclink/healthy/photo/RecordService;

    move-result-object v0

    # setter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$402(Lcom/veclink/healthy/photo/RecordService;)Lcom/veclink/healthy/photo/RecordService;

    .line 414
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mFacingFront:Z
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$600(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->cameraPreview(Z)V

    .line 415
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "classname"    # Landroid/content/ComponentName;

    .prologue
    .line 419
    const/4 v0, 0x0

    # setter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mRecordService:Lcom/veclink/healthy/photo/RecordService;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$402(Lcom/veclink/healthy/photo/RecordService;)Lcom/veclink/healthy/photo/RecordService;

    .line 420
    return-void
.end method

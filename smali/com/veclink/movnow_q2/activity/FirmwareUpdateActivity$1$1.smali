.class Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1$1;
.super Ljava/lang/Object;
.source "FirmwareUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1$1;->this$1:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1$1;->this$1:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;

    const v1, 0x8995

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    return-void
.end method

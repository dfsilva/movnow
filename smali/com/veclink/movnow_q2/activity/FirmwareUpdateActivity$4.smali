.class Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$4;
.super Ljava/lang/Object;
.source "FirmwareUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mConnAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-boolean v0, v0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->mDragging:Z

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->startAnimation()V

    .line 214
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    # invokes: Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->setCenterTip()V
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->access$300(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)V

    .line 216
    :cond_0
    return-void
.end method

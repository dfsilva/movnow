.class Lcom/veclink/movnow_q2/activity/BindbandActivity$6;
.super Ljava/lang/Object;
.source "BindbandActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectBand(Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BindbandActivity;->bindbandActivity:Lcom/veclink/movnow_q2/activity/BindbandActivity;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$200(Lcom/veclink/movnow_q2/activity/BindbandActivity;)Lcom/veclink/movnow_q2/activity/BindbandActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getUserHasBindBand(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectHandler:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$6;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->first_bind_tip_view:Landroid/widget/TextView;

    const v1, 0x7f0c017c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 322
    :cond_0
    return-void
.end method

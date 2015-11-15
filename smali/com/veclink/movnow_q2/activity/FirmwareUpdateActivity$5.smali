.class Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$5;
.super Ljava/lang/Object;
.source "FirmwareUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->finishFirwareActivity()V
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
    .line 287
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->access$100(Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->startActivity(Landroid/content/Intent;)V

    .line 293
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;->finish()V

    .line 294
    return-void
.end method

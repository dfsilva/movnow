.class Lcom/veclink/movnow_q2/activity/BindbandActivity$3$1;
.super Ljava/lang/Object;
.source "BindbandActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/movnow_q2/activity/BindbandActivity$3;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/BindbandActivity$3;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3$1;->this$1:Lcom/veclink/movnow_q2/activity/BindbandActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3$1;->this$1:Lcom/veclink/movnow_q2/activity/BindbandActivity$3;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/BindbandActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connectHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    return-void
.end method

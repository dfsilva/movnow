.class Lcom/veclink/movnow_q2/activity/BindbandActivity$2;
.super Landroid/os/Handler;
.source "BindbandActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/BindbandActivity;
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
    .line 112
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    :pswitch_0
    return-void

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->first_bind_tip_view:Landroid/widget/TextView;

    const v1, 0x7f0c017d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/veclink/movnow_q2/activity/PhotographicActivity$2;
.super Landroid/os/Handler;
.source "PhotographicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/PhotographicActivity;
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
    .line 156
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 190
    return-void

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mLlWhiteBorder:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$000(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mLlWhiteBorder:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$000(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

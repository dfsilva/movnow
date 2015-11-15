.class Lcom/veclink/movnow_q2/activity/PhotographicActivity$1;
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
    .line 137
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mLlWhiteBorder:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$000(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/PhotographicActivity;->mLlWhiteBorder:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/PhotographicActivity;->access$000(Lcom/veclink/movnow_q2/activity/PhotographicActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

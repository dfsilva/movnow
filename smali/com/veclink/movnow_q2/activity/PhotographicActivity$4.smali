.class Lcom/veclink/movnow_q2/activity/PhotographicActivity$4;
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
    .line 228
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/PhotographicActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 240
    :pswitch_0
    return-void

    .line 232
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

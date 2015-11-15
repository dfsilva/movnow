.class Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$1;
.super Landroid/os/Handler;
.source "SettingsActivityMyDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->bandLightTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$100(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$000(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->bandLightImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$300(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$200(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
    .end packed-switch
.end method

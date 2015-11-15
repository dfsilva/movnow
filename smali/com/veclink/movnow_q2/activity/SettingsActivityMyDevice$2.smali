.class Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;
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
    .line 105
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f080013

    const/4 v5, 0x5

    .line 109
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3eb

    if-ne v2, v3, :cond_2

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->batteryPowery:I
    invoke-static {v3, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$402(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I

    .line 111
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->band_power_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$500(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->batteryPowery:I
    invoke-static {v4}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$400(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v3, 0x7f0c0188

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "powerRemindText":Ljava/lang/String;
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->power_left_text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$600(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    const/4 v0, 0x1

    .line 116
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->batteryPowery:I
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$400(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->batteryPowery:I
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$400(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)I

    move-result v2

    if-lt v2, v5, :cond_3

    .line 117
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v3, 0x7f0c01b4

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->power_left_text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$600(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFindDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$700(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Lcom/veclink/movnow_q2/view/SettingsItemView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setEnabled(Z)V

    .line 125
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFirmwareUpdate:Lcom/veclink/movnow_q2/view/SettingsItemView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$800(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Lcom/veclink/movnow_q2/view/SettingsItemView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setEnabled(Z)V

    .line 126
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->power_left_text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$600(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .end local v0    # "enabled":Z
    .end local v1    # "powerRemindText":Ljava/lang/String;
    :cond_2
    return-void

    .line 119
    .restart local v0    # "enabled":Z
    .restart local v1    # "powerRemindText":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->batteryPowery:I
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$400(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)I

    move-result v2

    if-ge v2, v5, :cond_1

    .line 120
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v3, 0x7f0c01b3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v0, 0x0

    .line 122
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->power_left_text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$600(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

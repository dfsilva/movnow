.class Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;
.super Ljava/lang/Object;
.source "SettingsActivityMyDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BandLightSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;


# direct methods
.method private constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;
    .param p2, "x1"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$1;

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "band_light_color":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 502
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # invokes: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->doChangeLightColorTask(I)V
    invoke-static {v1, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$1300(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)V

    .line 503
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->selectBandLightColorDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$1400(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 504
    return-void

    .line 475
    :pswitch_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v2, 0x7f0200ce

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$202(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I

    .line 476
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v2, 0x7f0c0181

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$002(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I

    .line 477
    const/4 v0, 0x0

    .line 478
    goto :goto_0

    .line 481
    :pswitch_2
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v2, 0x7f0200d1

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$202(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I

    .line 482
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v2, 0x7f0c0183

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$002(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I

    .line 483
    const/4 v0, 0x1

    .line 484
    goto :goto_0

    .line 487
    :pswitch_3
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v2, 0x7f0200cf

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$202(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I

    .line 488
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v2, 0x7f0c0182

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$002(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I

    .line 489
    const/4 v0, 0x2

    .line 490
    goto :goto_0

    .line 493
    :pswitch_4
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v2, 0x7f0200d0

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$202(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I

    .line 494
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v2, 0x7f0c0184

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$002(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I

    .line 495
    const/4 v0, 0x3

    .line 496
    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x7f0601bb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

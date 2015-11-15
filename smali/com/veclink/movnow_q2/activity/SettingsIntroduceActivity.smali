.class public Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "SettingsIntroduceActivity.java"


# instance fields
.field private barRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private introduce_img1:Landroid/widget/ImageView;

.field private introduce_img2:Landroid/widget/ImageView;

.field private introduce_img3:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->setContentView(I)V

    .line 23
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->barRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 24
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->barRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c00da

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 25
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->introduce_img1:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->introduce_img2:Landroid/widget/ImageView;

    .line 27
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->introduce_img3:Landroid/widget/ImageView;

    .line 28
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isSpanish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->introduce_img1:Landroid/widget/ImageView;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->introduce_img2:Landroid/widget/ImageView;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->introduce_img3:Landroid/widget/ImageView;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->introduce_img1:Landroid/widget/ImageView;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->introduce_img2:Landroid/widget/ImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsIntroduceActivity;->introduce_img3:Landroid/widget/ImageView;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

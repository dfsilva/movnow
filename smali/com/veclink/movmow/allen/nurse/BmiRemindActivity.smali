.class public Lcom/veclink/movmow/allen/nurse/BmiRemindActivity;
.super Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;
.source "BmiRemindActivity.java"


# instance fields
.field remind_label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 3

    .prologue
    .line 20
    invoke-super {p0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->initView()V

    .line 21
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/BmiRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/BmiRemindActivity;->remind_label:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/BmiRemindActivity;->remind_label:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/BmiRemindActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0101

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/BmiRemindActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/BmiRemindActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/BmiRemindActivity;->setContentView(I)V

    .line 14
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/BmiRemindActivity;->initView()V

    .line 15
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/BmiRemindActivity;->initWheelViewData()V

    .line 17
    return-void
.end method

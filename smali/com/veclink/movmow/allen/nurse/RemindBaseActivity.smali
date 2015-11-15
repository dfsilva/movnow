.class public Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "RemindBaseActivity.java"


# instance fields
.field protected hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field protected mContext:Landroid/content/Context;

.field protected minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field protected remindtitleLabel:Landroid/widget/TextView;

.field protected res:Landroid/content/res/Resources;

.field protected titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHourWheelIntValue()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected getMinuteWheelIntValue()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected getTimeStringValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initView()V
    .locals 2

    .prologue
    .line 31
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 32
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 33
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->remindtitleLabel:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 35
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 36
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 37
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c00f4

    invoke-virtual {p0, v1}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightText(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    new-instance v1, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity$1;-><init>(Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method protected initWheelViewData()V
    .locals 8

    .prologue
    .line 49
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/4 v2, 0x0

    const/16 v3, 0x17

    const-string v4, "%02d"

    const v5, 0x7f030050

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 50
    .local v0, "hourNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 51
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 52
    new-instance v1, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/4 v3, 0x0

    const/16 v4, 0x3b

    const-string v5, "%02d"

    const v6, 0x7f030050

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 53
    .local v1, "minuterNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 54
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 56
    .local v7, "currentItemSize":I
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 57
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 58
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v3, 0x7f020124

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 59
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v3, 0x7f02018f

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 60
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v3, 0x7f020124

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 61
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v3, 0x7f02018f

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 62
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 63
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iput-object p0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->res:Landroid/content/res/Resources;

    .line 28
    return-void
.end method

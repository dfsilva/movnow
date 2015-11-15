.class public Lcom/veclink/movnow_q2/activity/WaterHistoryRecordActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "WaterHistoryRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/WaterHistoryRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/WaterHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 27
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WaterHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/WaterHistoryRecordActivity;->setContentView(I)V

    .line 21
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/WaterHistoryRecordActivity;->initView()V

    .line 24
    return-void
.end method

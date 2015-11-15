.class public Lcom/veclink/movnow_q2/activity/ResetPasswordSuccessTipActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "ResetPasswordSuccessTipActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResetPasswordSuccessTipActivity"


# instance fields
.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 21
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ResetPasswordSuccessTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordSuccessTipActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 23
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordSuccessTipActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c008c

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ResetPasswordSuccessTipActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 28
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ResetPasswordSuccessTipActivity;->setContentView(I)V

    .line 18
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ResetPasswordSuccessTipActivity;->initView()V

    .line 19
    return-void
.end method

.class public Lcom/veclink/movnow_q2/view/WaitDialogUtil;
.super Ljava/lang/Object;
.source "WaitDialogUtil.java"


# instance fields
.field private mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    invoke-direct {v0, p1}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->createDialog()Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->getProgressDialogIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->dismiss()V

    .line 25
    :cond_0
    return-void
.end method

.method public getProgressDialogIsShowing()Z
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    invoke-virtual {v0, p1}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->setMessage(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    .line 33
    return-void
.end method

.method public showDialog()V
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->getProgressDialogIsShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->showDialog()V

    .line 29
    :cond_0
    return-void
.end method

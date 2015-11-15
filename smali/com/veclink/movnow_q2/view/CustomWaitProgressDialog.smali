.class public Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;
.super Landroid/app/Dialog;
.source "CustomWaitProgressDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_tvMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const v0, 0x7f0b000e

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public createDialog()Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 47
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 49
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 50
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 53
    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->m_tvMsg:Landroid/widget/TextView;

    .line 54
    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 64
    const v2, 0x7f060097

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    .local v0, "img_loading":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f040007

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/RotateAnimation;

    .line 72
    .local v1, "rotateAnimation":Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 74
    return-void
.end method

.method public setMessage(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;
    .locals 1
    .param p1, "strMessage"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->m_tvMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-object p0
.end method

.method public setTitile(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;
    .locals 0
    .param p1, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 85
    return-object p0
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->show()V

    .line 78
    return-void
.end method

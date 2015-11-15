.class public Lcom/veclink/movnow_q2/view/CustomAlertDialog;
.super Landroid/app/Dialog;
.source "CustomAlertDialog.java"


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_btnEditCancel:Landroid/widget/Button;

.field private m_btnEditSure:Landroid/widget/Button;

.field private m_tvCancelReason:Landroid/widget/TextView;

.field private m_tvTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const v0, 0x7f0b000e

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/CustomAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_Context:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public createDialog()Lcom/veclink/movnow_q2/view/CustomAlertDialog;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 59
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 61
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 62
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_tvTip:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_tvTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v0, 0x7f06008b

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_tvCancelReason:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_tvCancelReason:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v0, 0x7f06008d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditCancel:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_Context:Landroid/content/Context;

    const v2, 0x7f0c0047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f06008e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditSure:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditSure:Landroid/widget/Button;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_Context:Landroid/content/Context;

    const v2, 0x7f0c0046

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-object p0
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditCancel:Landroid/widget/Button;

    return-object v0
.end method

.method public getSureButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditSure:Landroid/widget/Button;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 77
    return-void
.end method

.method public setCancelText(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomAlertDialog;
    .locals 1
    .param p1, "strCancelText"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_tvCancelReason:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/veclink/movnow_q2/view/CustomAlertDialog;
    .locals 2
    .param p1, "negStr"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditCancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditCancel:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditCancel:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 127
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/veclink/movnow_q2/view/CustomAlertDialog;
    .locals 2
    .param p1, "posStr"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditSure:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditSure:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_btnEditSure:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 114
    return-object p0
.end method

.method public setTip(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomAlertDialog;
    .locals 1
    .param p1, "strTip"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->m_tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomAlertDialog;
    .locals 0
    .param p1, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    return-object p0
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomAlertDialog;->show()V

    .line 81
    return-void
.end method

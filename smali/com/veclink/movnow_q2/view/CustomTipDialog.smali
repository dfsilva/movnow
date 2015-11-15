.class public Lcom/veclink/movnow_q2/view/CustomTipDialog;
.super Landroid/app/Dialog;
.source "CustomTipDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const v0, 0x7f0b000e

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/CustomTipDialog;-><init>(Landroid/content/Context;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public createDialog()Lcom/veclink/movnow_q2/view/CustomTipDialog;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 29
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomTipDialog;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomTipDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 31
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomTipDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 32
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomTipDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomTipDialog;->setCanceledOnTouchOutside(Z)V

    .line 34
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

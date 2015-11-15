.class public Lcom/veclink/movnow_q2/view/TakePhotoDialog;
.super Landroid/app/Dialog;
.source "TakePhotoDialog.java"


# instance fields
.field private btnPortaitCancle:Landroid/widget/Button;

.field private btnSelectLoclPic:Landroid/widget/Button;

.field private btnTakePic:Landroid/widget/Button;

.field private chooseLocalImgListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private takePhotoListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030033

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const v3, 0x7f0600a3

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->btnTakePic:Landroid/widget/Button;

    .line 46
    const v3, 0x7f0600a4

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->btnSelectLoclPic:Landroid/widget/Button;

    .line 47
    const v3, 0x7f0600a5

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->btnPortaitCancle:Landroid/widget/Button;

    .line 48
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->takePhotoListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->btnTakePic:Landroid/widget/Button;

    iget-object v4, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->takePhotoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :cond_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->chooseLocalImgListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->btnSelectLoclPic:Landroid/widget/Button;

    iget-object v4, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->chooseLocalImgListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->btnPortaitCancle:Landroid/widget/Button;

    new-instance v4, Lcom/veclink/movnow_q2/view/TakePhotoDialog$1;

    invoke-direct {v4, p0}, Lcom/veclink/movnow_q2/view/TakePhotoDialog$1;-><init>(Lcom/veclink/movnow_q2/view/TakePhotoDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 57
    .local v1, "window":Landroid/view/Window;
    const v3, 0x7f0b0018

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 58
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 59
    .local v2, "wl":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 60
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 61
    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 62
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->setCanceledOnTouchOutside(Z)V

    .line 63
    return-void
.end method

.method public setChooseLocalImgListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "chooseLocalImgListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->chooseLocalImgListener:Landroid/view/View$OnClickListener;

    .line 71
    return-void
.end method

.method public setTakePhotoListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "takePhotoListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/TakePhotoDialog;->takePhotoListener:Landroid/view/View$OnClickListener;

    .line 67
    return-void
.end method

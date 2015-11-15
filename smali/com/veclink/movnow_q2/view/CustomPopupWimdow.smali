.class public Lcom/veclink/movnow_q2/view/CustomPopupWimdow;
.super Landroid/widget/PopupWindow;
.source "CustomPopupWimdow.java"


# instance fields
.field private contentView:Landroid/view/View;

.field private tvOne:Landroid/widget/TextView;

.field private tvThree:Landroid/widget/TextView;

.field private tvTwo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x1

    .line 26
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 27
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 29
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030029

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->contentView:Landroid/view/View;

    .line 30
    iget-object v5, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->contentView:Landroid/view/View;

    const v6, 0x7f060092

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->tvOne:Landroid/widget/TextView;

    .line 31
    iget-object v5, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->contentView:Landroid/view/View;

    const v6, 0x7f060093

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->tvTwo:Landroid/widget/TextView;

    .line 32
    iget-object v5, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->contentView:Landroid/view/View;

    const v6, 0x7f060094

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->tvThree:Landroid/widget/TextView;

    .line 34
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 35
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 36
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 37
    .local v4, "w":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 39
    .local v2, "h":I
    iget-object v5, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->contentView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setContentView(Landroid/view/View;)V

    .line 41
    div-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, -0x32

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setWidth(I)V

    .line 43
    const/4 v5, -0x2

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setHeight(I)V

    .line 45
    invoke-virtual {p0, v7}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setFocusable(Z)V

    .line 46
    invoke-virtual {p0, v7}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setOutsideTouchable(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->update()V

    .line 50
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 52
    .local v1, "dw":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const v5, 0x7f0b000c

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setAnimationStyle(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public setOneBtnText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->tvOne:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public setOneOnclicListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->tvOne:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method public setThreeOnclicListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->tvThree:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public setThreeVisisble(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->tvThree:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    return-void
.end method

.method public setTwoBtnText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->tvTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setTwoOnclicListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->tvTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

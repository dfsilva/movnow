.class public Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "TitleBarRelativeLayout.java"


# instance fields
.field private tvLeft:Landroid/widget/TextView;

.field private tvRight:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->initView(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->initView(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->initView(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030063

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    const v1, 0x7f0601c9

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvLeft:Landroid/widget/TextView;

    .line 48
    const v1, 0x7f0601cb

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvRight:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0601ca

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvTitle:Landroid/widget/TextView;

    .line 50
    new-instance v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout$1;-><init>(Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;)V

    .line 57
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getLeftTxt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "leftTxt":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    .end local v0    # "leftTxt":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "leftTxt":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRightTxt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "rightTxt":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    .end local v0    # "rightTxt":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "rightTxt":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isRightVisisble()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public setLeftTextBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 73
    return-void
.end method

.method public setLeftTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    return-void
.end method

.method public setLeftVisisble(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    return-void
.end method

.method public setLefttButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public setRightBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 146
    return-void
.end method

.method public setRightButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public setRightEnalbe(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 177
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public setRightVisisble(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    return-void
.end method

.method public setTitleButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

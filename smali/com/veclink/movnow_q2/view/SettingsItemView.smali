.class public Lcom/veclink/movnow_q2/view/SettingsItemView;
.super Landroid/widget/RelativeLayout;
.source "SettingsItemView.java"


# instance fields
.field private leftTextView:Landroid/widget/TextView;

.field private rightTextView:Landroid/widget/TextView;

.field private rlSettingItemBg:Landroid/widget/RelativeLayout;

.field private tvarrow:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->initView(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->initView(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->initView(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    const v0, 0x7f0600f6

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->rlSettingItemBg:Landroid/widget/RelativeLayout;

    .line 43
    const v0, 0x7f0600f7

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->leftTextView:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0600f9

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->rightTextView:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0600f8

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->tvarrow:Landroid/widget/TextView;

    .line 46
    return-void
.end method


# virtual methods
.method public getRightText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRightTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->rightTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->leftTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setRightTextBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    return-void
.end method

.method public setRightVisisble(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->tvarrow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    return-void
.end method

.method public setSettingsItemBg(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SettingsItemView;->rlSettingItemBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 76
    return-void
.end method

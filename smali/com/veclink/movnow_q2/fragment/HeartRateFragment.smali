.class public Lcom/veclink/movnow_q2/fragment/HeartRateFragment;
.super Landroid/support/v4/app/Fragment;
.source "HeartRateFragment.java"


# instance fields
.field private tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const v1, 0x7f030037

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "contextView":Landroid/view/View;
    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/HeartRateFragment;->tvTime:Landroid/widget/TextView;

    .line 29
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/HeartRateFragment;->tvTime:Landroid/widget/TextView;

    const-string v1, "yyyy/MM/dd EEEE"

    invoke-static {v1}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

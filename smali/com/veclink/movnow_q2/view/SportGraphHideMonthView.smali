.class public Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;
.super Landroid/widget/LinearLayout;
.source "SportGraphHideMonthView.java"


# instance fields
.field dataAreaView:Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;

.field headView:Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030062

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->addView(Landroid/view/View;)V

    .line 40
    const v1, 0x7f0601c5

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->headView:Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;

    .line 41
    const v1, 0x7f0601c7

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->dataAreaView:Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;

    .line 42
    return-void
.end method


# virtual methods
.method public postInvalidate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    .line 59
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->headView:Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->postInvalidate()V

    .line 60
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->dataAreaView:Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->postInvalidate()V

    .line 61
    return-void
.end method

.method public setDataInfo(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .local p2, "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->headView:Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;

    invoke-virtual {v0, p2}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->setDataInfo(Ljava/util/List;)V

    .line 51
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->dataAreaView:Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;

    invoke-virtual {v0, p1}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->setDataInfo(Ljava/util/List;)V

    .line 52
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->postInvalidate()V

    .line 54
    return-void
.end method

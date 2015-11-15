.class public Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;
.super Landroid/widget/LinearLayout;
.source "SleepHideBarGraphView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field dataAreaGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;

.field headGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarHeadGraphView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030060

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->addView(Landroid/view/View;)V

    .line 44
    const v1, 0x7f0601c4

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->dataAreaGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;

    .line 45
    const v1, 0x7f0601c3

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/SleepHideBarHeadGraphView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->headGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarHeadGraphView;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public init(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .param p3, "isAtnight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .local p2, "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->headGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarHeadGraphView;

    invoke-virtual {v0, p2, p3}, Lcom/veclink/movnow_q2/view/SleepHideBarHeadGraphView;->init(Ljava/util/List;Z)V

    .line 30
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->dataAreaGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;

    invoke-virtual {v0, p1, p3}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->init(Ljava/util/List;Z)V

    .line 32
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->headGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarHeadGraphView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SleepHideBarHeadGraphView;->invalidate()V

    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->dataAreaGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->invalidate()V

    .line 57
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    .line 63
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->headGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarHeadGraphView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SleepHideBarHeadGraphView;->postInvalidate()V

    .line 64
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->dataAreaGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->postInvalidate()V

    .line 65
    return-void
.end method

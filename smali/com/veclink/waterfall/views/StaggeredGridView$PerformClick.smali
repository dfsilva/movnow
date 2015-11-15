.class Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;
.super Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/veclink/waterfall/views/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V
    .locals 1

    .prologue
    .line 2728
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;
    .param p2, "x1"    # Lcom/veclink/waterfall/views/StaggeredGridView$1;

    .prologue
    .line 2728
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2735
    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z
    invoke-static {v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$400(Lcom/veclink/waterfall/views/StaggeredGridView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2752
    :cond_0
    :goto_0
    return-void

    .line 2738
    :cond_1
    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$800(Lcom/veclink/waterfall/views/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2739
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    .line 2740
    .local v1, "motionPosition":I
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I
    invoke-static {v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$700(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2743
    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I
    invoke-static {v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1600(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2747
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2748
    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

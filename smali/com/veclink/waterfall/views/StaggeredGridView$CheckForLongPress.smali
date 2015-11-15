.class Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;
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
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/waterfall/views/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V
    .locals 1

    .prologue
    .line 2704
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;
    .param p2, "x1"    # Lcom/veclink/waterfall/views/StaggeredGridView$1;

    .prologue
    .line 2704
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2706
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I
    invoke-static {v6}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$2300(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v5

    .line 2707
    .local v5, "motionPosition":I
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    iget-object v7, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I
    invoke-static {v7}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1600(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2708
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2709
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I
    invoke-static {v6}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$2300(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v4

    .line 2710
    .local v4, "longPressPosition":I
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v6}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$800(Lcom/veclink/waterfall/views/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I
    invoke-static {v7}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$2300(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 2712
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 2713
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z
    invoke-static {v6}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$400(Lcom/veclink/waterfall/views/StaggeredGridView;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2714
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v6, v0, v4, v2, v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 2717
    :cond_0
    if-eqz v1, :cond_2

    .line 2718
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    const/4 v7, 0x6

    # setter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I
    invoke-static {v6, v7}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$302(Lcom/veclink/waterfall/views/StaggeredGridView;I)I

    .line 2719
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v6, v8}, Lcom/veclink/waterfall/views/StaggeredGridView;->setPressed(Z)V

    .line 2720
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 2725
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    .end local v4    # "longPressPosition":I
    :cond_1
    :goto_0
    return-void

    .line 2722
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    .restart local v4    # "longPressPosition":I
    :cond_2
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    const/4 v7, 0x5

    # setter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I
    invoke-static {v6, v7}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$302(Lcom/veclink/waterfall/views/StaggeredGridView;I)I

    goto :goto_0
.end method

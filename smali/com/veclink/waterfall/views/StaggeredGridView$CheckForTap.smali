.class final Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/waterfall/views/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 2650
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 2652
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I
    invoke-static {v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$300(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 2654
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    const/4 v5, 0x4

    # setter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$302(Lcom/veclink/waterfall/views/StaggeredGridView;I)I

    .line 2655
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    iget-object v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I
    invoke-static {v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$2300(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v5

    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I
    invoke-static {v6}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1600(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2656
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2658
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z
    invoke-static {v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$400(Lcom/veclink/waterfall/views/StaggeredGridView;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2659
    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    .line 2660
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2662
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v4, v7}, Lcom/veclink/waterfall/views/StaggeredGridView;->setPressed(Z)V

    .line 2663
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->layoutChildren(Z)V

    .line 2664
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    iget-object v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I
    invoke-static {v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$2300(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 2665
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->refreshDrawableState()V

    .line 2667
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 2669
    .local v3, "longPressTimeout":I
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->isLongClickable()Z

    move-result v2

    .line 2671
    .local v2, "longClickable":Z
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    iget-object v4, v4, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 2672
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    iget-object v4, v4, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2673
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 2674
    if-eqz v2, :cond_3

    .line 2675
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2683
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2684
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;
    invoke-static {v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$2400(Lcom/veclink/waterfall/views/StaggeredGridView;)Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2685
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    new-instance v5, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;

    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V

    # setter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;
    invoke-static {v4, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$2402(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;)Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;

    .line 2687
    :cond_1
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;
    invoke-static {v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$2400(Lcom/veclink/waterfall/views/StaggeredGridView;)Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 2689
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    iget-object v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;
    invoke-static {v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$2400(Lcom/veclink/waterfall/views/StaggeredGridView;)Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/veclink/waterfall/views/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2695
    :goto_1
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->postInvalidate()V

    .line 2701
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_2
    :goto_2
    return-void

    .line 2678
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 2692
    :cond_4
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # setter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v8}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$302(Lcom/veclink/waterfall/views/StaggeredGridView;I)I

    goto :goto_1

    .line 2697
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_5
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # setter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v8}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$302(Lcom/veclink/waterfall/views/StaggeredGridView;I)I

    goto :goto_2
.end method

.class Lcom/veclink/movnow_q2/view/wheel/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/veclink/movnow_q2/view/wheel/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/view/wheel/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # getter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->isScrollingPerformed:Z
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$000(Lcom/veclink/movnow_q2/view/wheel/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 196
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # setter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->isScrollingPerformed:Z
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$002(Lcom/veclink/movnow_q2/view/wheel/WheelView;Z)Z

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # setter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$202(Lcom/veclink/movnow_q2/view/wheel/WheelView;I)I

    .line 200
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->invalidate()V

    .line 201
    return-void
.end method

.method public onJustify()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # getter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$200(Lcom/veclink/movnow_q2/view/wheel/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # getter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->scroller:Lcom/veclink/movnow_q2/view/wheel/WheelScroller;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$300(Lcom/veclink/movnow_q2/view/wheel/WheelView;)Lcom/veclink/movnow_q2/view/wheel/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # getter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$200(Lcom/veclink/movnow_q2/view/wheel/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelScroller;->scroll(II)V

    .line 208
    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 180
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # invokes: Lcom/veclink/movnow_q2/view/wheel/WheelView;->doScroll(I)V
    invoke-static {v1, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$100(Lcom/veclink/movnow_q2/view/wheel/WheelView;I)V

    .line 182
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v0

    .line 183
    .local v0, "height":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # getter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$200(Lcom/veclink/movnow_q2/view/wheel/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # setter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I
    invoke-static {v1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$202(Lcom/veclink/movnow_q2/view/wheel/WheelView;I)I

    .line 185
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # getter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->scroller:Lcom/veclink/movnow_q2/view/wheel/WheelScroller;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$300(Lcom/veclink/movnow_q2/view/wheel/WheelView;)Lcom/veclink/movnow_q2/view/wheel/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelScroller;->stopScrolling()V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # getter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$200(Lcom/veclink/movnow_q2/view/wheel/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    neg-int v2, v0

    # setter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$202(Lcom/veclink/movnow_q2/view/wheel/WheelView;I)I

    .line 188
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    # getter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->scroller:Lcom/veclink/movnow_q2/view/wheel/WheelScroller;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$300(Lcom/veclink/movnow_q2/view/wheel/WheelView;)Lcom/veclink/movnow_q2/view/wheel/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelScroller;->stopScrolling()V

    goto :goto_0
.end method

.method public onStarted()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v1, 0x1

    # setter for: Lcom/veclink/movnow_q2/view/wheel/WheelView;->isScrollingPerformed:Z
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->access$002(Lcom/veclink/movnow_q2/view/wheel/WheelView;Z)Z

    .line 175
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;->this$0:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->notifyScrollingListenersAboutStart()V

    .line 176
    return-void
.end method

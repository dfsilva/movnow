.class Lcom/veclink/waterfall/views/StaggeredGridView$1;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/waterfall/views/StaggeredGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;


# direct methods
.method constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;Landroid/view/View;Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$1;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    iput-object p2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$1;->val$performClick:Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 829
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$1;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    const/4 v1, 0x6

    # setter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$302(Lcom/veclink/waterfall/views/StaggeredGridView;I)I

    .line 830
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 831
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$1;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v0, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->setPressed(Z)V

    .line 832
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$1;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z
    invoke-static {v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$400(Lcom/veclink/waterfall/views/StaggeredGridView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$1;->val$performClick:Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;

    invoke-virtual {v0}, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->run()V

    .line 835
    :cond_0
    return-void
.end method

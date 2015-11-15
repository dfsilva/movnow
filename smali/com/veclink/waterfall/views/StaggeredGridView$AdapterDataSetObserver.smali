.class Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/waterfall/views/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 2410
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;
    .param p2, "x1"    # Lcom/veclink/waterfall/views/StaggeredGridView$1;

    .prologue
    .line 2410
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2414
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    const/4 v3, 0x1

    # setter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z
    invoke-static {v2, v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$402(Lcom/veclink/waterfall/views/StaggeredGridView;Z)Z

    .line 2415
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$800(Lcom/veclink/waterfall/views/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    # setter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I
    invoke-static {v2, v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$702(Lcom/veclink/waterfall/views/StaggeredGridView;I)I

    .line 2418
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$900(Lcom/veclink/waterfall/views/StaggeredGridView;)Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->clearTransientViews()V

    .line 2420
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mHasStableIds:Z
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1000(Lcom/veclink/waterfall/views/StaggeredGridView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2422
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1100(Lcom/veclink/waterfall/views/StaggeredGridView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 2423
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # invokes: Lcom/veclink/waterfall/views/StaggeredGridView;->recycleAllViews()V
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1200(Lcom/veclink/waterfall/views/StaggeredGridView;)V

    .line 2426
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1300(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v0

    .line 2427
    .local v0, "colCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2428
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1400(Lcom/veclink/waterfall/views/StaggeredGridView;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I
    invoke-static {v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1500(Lcom/veclink/waterfall/views/StaggeredGridView;)[I

    move-result-object v3

    aget v3, v3, v1

    aput v3, v2, v1

    .line 2427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2434
    .end local v0    # "colCount":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1600(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I
    invoke-static {v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$700(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$800(Lcom/veclink/waterfall/views/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I
    invoke-static {v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1600(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstAdapterId:J
    invoke-static {v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1700(Lcom/veclink/waterfall/views/StaggeredGridView;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 2436
    :cond_1
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # setter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I
    invoke-static {v2, v6}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1602(Lcom/veclink/waterfall/views/StaggeredGridView;I)I

    .line 2437
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1500(Lcom/veclink/waterfall/views/StaggeredGridView;)[I

    move-result-object v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([II)V

    .line 2438
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1400(Lcom/veclink/waterfall/views/StaggeredGridView;)[I

    move-result-object v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([II)V

    .line 2440
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mRestoreOffsets:[I
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1800(Lcom/veclink/waterfall/views/StaggeredGridView;)[I

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2441
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView;->mRestoreOffsets:[I
    invoke-static {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$1800(Lcom/veclink/waterfall/views/StaggeredGridView;)[I

    move-result-object v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([II)V

    .line 2446
    :cond_2
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->requestLayout()V

    .line 2447
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 2451
    return-void
.end method

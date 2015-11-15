.class Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecycleBin"
.end annotation


# instance fields
.field private mMaxScrap:I

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/veclink/waterfall/views/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 2320
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;
    .param p2, "x1"    # Lcom/veclink/waterfall/views/StaggeredGridView$1;

    .prologue
    .line 2320
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public addScrap(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2364
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    .line 2365
    .local v1, "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2366
    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 2367
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 2369
    :cond_0
    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v4, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->position:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2382
    :cond_1
    :goto_0
    return-void

    .line 2373
    :cond_2
    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 2374
    .local v0, "childCount":I
    iget v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-le v0, v3, :cond_3

    .line 2375
    iput v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mMaxScrap:I

    .line 2378
    :cond_3
    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    iget v4, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->viewType:I

    aget-object v2, v3, v4

    .line 2379
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-ge v3, v4, :cond_1

    .line 2380
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 2348
    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    .line 2349
    .local v1, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2350
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2352
    :cond_0
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 2353
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 2355
    :cond_1
    return-void
.end method

.method public clearTransientViews()V
    .locals 1

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2359
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2361
    :cond_0
    return-void
.end method

.method public getScrapView(I)Landroid/view/View;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 2397
    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v3, p1

    .line 2398
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2399
    const/4 v1, 0x0

    .line 2405
    :goto_0
    return-object v1

    .line 2402
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 2403
    .local v0, "index":I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2404
    .local v1, "result":Landroid/view/View;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getTransientStateView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2385
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 2386
    const/4 v0, 0x0

    .line 2393
    :cond_0
    :goto_0
    return-object v0

    .line 2389
    :cond_1
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2390
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2391
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public setViewTypeCount(I)V
    .locals 5
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 2328
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 2329
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must have at least one view type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " types reported)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2333
    :cond_0
    iget v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    if-ne p1, v2, :cond_1

    .line 2345
    :goto_0
    return-void

    .line 2338
    :cond_1
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 2340
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 2341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 2340
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2343
    :cond_2
    iput p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    .line 2344
    iput-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    goto :goto_0
.end method

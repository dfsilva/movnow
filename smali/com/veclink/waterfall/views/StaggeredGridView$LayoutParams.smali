.class public Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final LAYOUT_ATTRS:[I

.field private static final SPAN_INDEX:I


# instance fields
.field column:I

.field id:J

.field position:I

.field public span:I

.field viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2253
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101014d

    aput v2, v0, v1

    sput-object v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    const/4 v2, -0x1

    .line 2273
    invoke-direct {p0, v2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2258
    const/4 v0, 0x1

    iput v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->span:I

    .line 2270
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->id:J

    .line 2275
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    if-ne v0, v2, :cond_0

    .line 2276
    const-string v0, "StaggeredGridView"

    const-string v1, "Constructing LayoutParams with height FILL_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    const/4 v0, -0x2

    iput v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    .line 2281
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 2284
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2258
    iput v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->span:I

    .line 2270
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->id:J

    .line 2286
    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->width:I

    if-eq v1, v4, :cond_0

    .line 2287
    const-string v1, "StaggeredGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inflation setting LayoutParams width to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - must be MATCH_PARENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    iput v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->width:I

    .line 2291
    :cond_0
    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    if-ne v1, v4, :cond_1

    .line 2292
    const-string v1, "StaggeredGridView"

    const-string v2, "Inflation setting LayoutParams height to MATCH_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    const/4 v1, -0x2

    iput v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    .line 2298
    :cond_1
    sget-object v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2299
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->span:I

    .line 2300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2301
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, -0x1

    .line 2304
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2258
    const/4 v0, 0x1

    iput v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->span:I

    .line 2270
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->id:J

    .line 2306
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->width:I

    if-eq v0, v3, :cond_0

    .line 2307
    const-string v0, "StaggeredGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing LayoutParams with width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - must be MATCH_PARENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    iput v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->width:I

    .line 2311
    :cond_0
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 2312
    const-string v0, "StaggeredGridView"

    const-string v1, "Constructing LayoutParams with height MATCH_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    const/4 v0, -0x2

    iput v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    .line 2317
    :cond_1
    return-void
.end method

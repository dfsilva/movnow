.class final Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutRecord"
.end annotation


# instance fields
.field public column:I

.field public height:I

.field public id:J

.field private mMargins:[I

.field public span:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->id:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView$1;

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;-><init>()V

    return-void
.end method

.method private final ensureMargins()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    .line 275
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method public final getMarginAbove(I)I
    .locals 2
    .param p1, "col"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final getMarginBelow(I)I
    .locals 2
    .param p1, "col"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final setMarginAbove(II)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "margin"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->ensureMargins()V

    .line 298
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    aput p2, v0, v1

    goto :goto_0
.end method

.method public final setMarginBelow(II)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "margin"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->ensureMargins()V

    .line 306
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LayoutRecord{c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->column:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-eqz v2, :cond_1

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " margins[above, below]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 318
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    .end local v0    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.class public Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;
.super Landroid/view/View;
.source "SportGraphHideHeadView.java"


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChanged:Z

.field private mContext:Landroid/content/Context;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mbgViewHeight:I

.field private mbgViewWidth:I

.field private times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->times:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mContext:Landroid/content/Context;

    .line 40
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mbgViewWidth:I

    .line 43
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mbgViewHeight:I

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->setWillNotDraw(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 92
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mChanged:Z

    .line 94
    .local v4, "changed":Z
    if-eqz v4, :cond_0

    .line 95
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mChanged:Z

    .line 97
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->getWidth()I

    move-result v3

    .line 98
    .local v3, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->getHeight()I

    move-result v2

    .line 100
    .local v2, "availableHeight":I
    div-int/lit8 v10, v3, 0x2

    .line 101
    .local v10, "x":I
    div-int/lit8 v11, v2, 0x2

    .line 103
    .local v11, "y":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    .local v5, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 105
    .local v9, "w":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 106
    .local v6, "h":I
    if-eqz v4, :cond_1

    .line 107
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v10, v12

    div-int/lit8 v13, v6, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v10

    div-int/lit8 v15, v6, 0x2

    add-int/2addr v15, v11

    invoke-virtual {v5, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    :try_start_0
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 112
    .local v8, "origin":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080024

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090039

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->times:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->times:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mViewWidth:I

    int-to-double v13, v13

    const-wide v15, 0x3f9eb851eb851eb8L    # 0.03

    int-to-double v0, v7

    move-wide/from16 v17, v0

    const-wide v19, 0x3fef0a3d70a3d70aL    # 0.97

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->times:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    mul-double v17, v17, v19

    add-double v15, v15, v17

    mul-double/2addr v13, v15

    double-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mViewHeight:I

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 121
    .end local v7    # "i":I
    .end local v8    # "origin":Landroid/graphics/Paint;
    :catch_0
    move-exception v12

    .line 124
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 51
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 52
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 53
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 55
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 58
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mbgViewWidth:I

    if-ge v6, v7, :cond_0

    .line 60
    int-to-float v7, v6

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mbgViewWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 63
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mbgViewHeight:I

    if-ge v2, v7, :cond_1

    .line 65
    int-to-float v7, v2

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mbgViewHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 68
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 70
    .local v3, "scale":F
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mbgViewWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mbgViewHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->setMeasuredDimension(II)V

    .line 75
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mbgViewWidth:I

    invoke-static {v7, p1}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mViewWidth:I

    .line 76
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mbgViewHeight:I

    invoke-static {v7, p2}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mViewHeight:I

    .line 78
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mViewWidth:I

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mViewHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->setMeasuredDimension(II)V

    .line 79
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->mChanged:Z

    .line 85
    return-void
.end method

.method public setDataInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->times:Ljava/util/List;

    .line 133
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/SportGraphHideHeadView;->postInvalidate()V

    .line 135
    return-void
.end method

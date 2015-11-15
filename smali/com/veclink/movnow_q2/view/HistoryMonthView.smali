.class public Lcom/veclink/movnow_q2/view/HistoryMonthView;
.super Landroid/view/View;
.source "HistoryMonthView.java"


# instance fields
.field private XLength:F

.field private XPoint:I

.field private XScale:F

.field private YLength:F

.field private YPoint:I

.field private YScale:F

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;"
        }
    .end annotation
.end field

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
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/HistoryMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/veclink/movnow_q2/view/HistoryMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v1, 0x0

    iput v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->XPoint:I

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->datas:Ljava/util/List;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->times:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mContext:Landroid/content/Context;

    .line 50
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mbgViewWidth:I

    .line 53
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mbgViewHeight:I

    .line 54
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->times:Ljava/util/List;

    const-string v2, "0"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->times:Ljava/util/List;

    const-string v2, "5"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->times:Ljava/util/List;

    const-string v2, "10"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->times:Ljava/util/List;

    const-string v2, "15"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->times:Ljava/util/List;

    const-string v2, "20"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->times:Ljava/util/List;

    const-string v2, "25"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->times:Ljava/util/List;

    const-string v2, "30"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mChanged:Z

    .line 104
    .local v4, "changed":Z
    if-eqz v4, :cond_0

    .line 105
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mChanged:Z

    .line 107
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistoryMonthView;->getWidth()I

    move-result v3

    .line 108
    .local v3, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistoryMonthView;->getHeight()I

    move-result v2

    .line 109
    .local v2, "availableHeight":I
    div-int/lit8 v10, v3, 0x2

    .line 110
    .local v10, "x":I
    div-int/lit8 v11, v2, 0x2

    .line 111
    .local v11, "y":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    .local v5, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 113
    .local v9, "w":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 114
    .local v6, "h":I
    if-eqz v4, :cond_1

    .line 115
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v10, v12

    div-int/lit8 v13, v6, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v10

    div-int/lit8 v15, v6, 0x2

    add-int/2addr v15, v11

    invoke-virtual {v5, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 119
    .local v8, "origin":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistoryMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080024

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistoryMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090039

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->times:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->times:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mViewWidth:I

    int-to-double v13, v13

    const-wide v15, 0x3fa89374bc6a7efaL    # 0.048

    int-to-double v0, v7

    move-wide/from16 v17, v0

    const-wide v19, 0x3fc1eb851eb851ecL    # 0.14

    mul-double v17, v17, v19

    add-double v15, v15, v17

    mul-double/2addr v13, v15

    double-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mViewHeight:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    double-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 126
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 65
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 66
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 67
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 69
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 72
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mbgViewWidth:I

    if-ge v6, v7, :cond_0

    .line 74
    int-to-float v7, v6

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mbgViewWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 77
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mbgViewHeight:I

    if-ge v2, v7, :cond_1

    .line 79
    int-to-float v7, v2

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mbgViewHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 82
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 84
    .local v3, "scale":F
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mbgViewWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/veclink/movnow_q2/view/HistoryMonthView;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mbgViewHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/veclink/movnow_q2/view/HistoryMonthView;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/HistoryMonthView;->setMeasuredDimension(II)V

    .line 89
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mbgViewWidth:I

    invoke-static {v7, p1}, Lcom/veclink/movnow_q2/view/HistoryMonthView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mViewWidth:I

    .line 90
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mbgViewHeight:I

    invoke-static {v7, p2}, Lcom/veclink/movnow_q2/view/HistoryMonthView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mViewHeight:I

    .line 91
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mViewWidth:I

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mViewHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/HistoryMonthView;->setMeasuredDimension(II)V

    .line 92
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/HistoryMonthView;->mChanged:Z

    .line 98
    return-void
.end method

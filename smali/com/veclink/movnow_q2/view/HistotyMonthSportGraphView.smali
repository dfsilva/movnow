.class public Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;
.super Landroid/view/View;
.source "HistotyMonthSportGraphView.java"


# instance fields
.field private Titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private linePaint:Landroid/graphics/Paint;

.field private mChanged:Z

.field private mContext:Landroid/content/Context;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mbgViewHeight:I

.field private mbgViewWidth:I

.field private pointBitmap:Landroid/graphics/Bitmap;

.field private stepCountUnit:I

.field private zPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XPoint:I

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    .line 48
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->stepCountUnit:I

    .line 61
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mContext:Landroid/content/Context;

    .line 62
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mbgViewWidth:I

    .line 65
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mbgViewHeight:I

    .line 66
    return-void
.end method

.method private formatY(Ljava/lang/String;)F
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 237
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 241
    .local v1, "y":F
    iget v2, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->YPoint:I

    int-to-float v2, v2

    iget v3, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->YScale:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->stepCountUnit:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .end local v1    # "y":F
    :goto_0
    return v2

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const v2, -0x3b864000    # -999.0f

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 117
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mChanged:Z

    .line 119
    .local v9, "changed":Z
    if-eqz v9, :cond_0

    .line 120
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mChanged:Z

    .line 122
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->getWidth()I

    move-result v8

    .line 123
    .local v8, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->getHeight()I

    move-result v7

    .line 125
    .local v7, "availableHeight":I
    div-int/lit8 v16, v8, 0x2

    .line 126
    .local v16, "x":I
    div-int/lit8 v17, v7, 0x2

    .line 128
    .local v17, "y":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    .local v10, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 130
    .local v15, "w":I
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 131
    .local v11, "h":I
    if-eqz v9, :cond_1

    .line 132
    div-int/lit8 v1, v15, 0x2

    sub-int v1, v16, v1

    div-int/lit8 v2, v11, 0x2

    sub-int v2, v17, v2

    div-int/lit8 v3, v15, 0x2

    add-int v3, v3, v16

    div-int/lit8 v4, v11, 0x2

    add-int v4, v4, v17

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 135
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 136
    .local v13, "origin":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    :try_start_0
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 145
    .local v14, "p":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XPoint:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->YPoint:I

    int-to-float v2, v2

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->linePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 152
    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XPoint:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XScale:F

    add-int/lit8 v3, v12, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->formatY(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v14, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v12, v1, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XPoint:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XScale:F

    add-int/lit8 v3, v12, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->YPoint:I

    int-to-float v2, v2

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 159
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 160
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_4

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1f40

    if-lt v1, v2, :cond_5

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e9

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->pointBitmap:Landroid/graphics/Bitmap;

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->pointBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XPoint:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XScale:F

    add-int/lit8 v4, v12, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->formatY(Ljava/lang/String;)F

    move-result v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v1, v4

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 166
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XPoint:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XScale:F

    add-int/lit8 v3, v12, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->formatY(Ljava/lang/String;)F

    move-result v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XPoint:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XScale:F

    add-int/lit8 v5, v12, 0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->YPoint:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v12    # "i":I
    .end local v14    # "p":Landroid/graphics/Path;
    :cond_4
    :goto_2
    return-void

    .line 160
    .restart local v12    # "i":I
    .restart local v14    # "p":Landroid/graphics/Path;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 173
    .end local v12    # "i":I
    .end local v14    # "p":Landroid/graphics/Path;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 70
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 71
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 72
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 73
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 75
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 78
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mbgViewWidth:I

    if-ge v6, v7, :cond_0

    .line 80
    int-to-float v7, v6

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mbgViewWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 83
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mbgViewHeight:I

    if-ge v2, v7, :cond_1

    .line 85
    int-to-float v7, v2

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mbgViewHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 88
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 90
    .local v3, "scale":F
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mbgViewWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mbgViewHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->setMeasuredDimension(II)V

    .line 95
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mbgViewWidth:I

    invoke-static {v7, p1}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mViewWidth:I

    .line 96
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mbgViewHeight:I

    invoke-static {v7, p2}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mViewHeight:I

    .line 97
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mViewHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->YPoint:I

    .line 98
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mViewWidth:I

    int-to-double v7, v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XPoint:I

    .line 99
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mViewWidth:I

    int-to-float v7, v7

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XLength:F

    .line 100
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mViewHeight:I

    int-to-float v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->YLength:F

    .line 101
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XLength:F

    const/high16 v8, 0x41f80000    # 31.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XScale:F

    .line 102
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->YLength:F

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->YScale:F

    .line 103
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mViewWidth:I

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mViewHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->mChanged:Z

    .line 110
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 178
    const/4 v3, 0x0

    .line 179
    .local v3, "isOnClick":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 206
    :cond_0
    if-eqz v3, :cond_2

    .line 208
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 210
    :goto_0
    return v8

    .line 182
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 183
    .local v5, "x2":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 184
    .local v7, "y2":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 186
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v8}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x1f40

    if-lt v8, v9, :cond_1

    .line 187
    iget v8, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XPoint:I

    int-to-float v8, v8

    iget v9, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->XScale:F

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float v4, v8, v9

    .line 188
    .local v4, "x1":F
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v8}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->formatY(Ljava/lang/String;)F

    move-result v6

    .line 189
    .local v6, "y1":F
    sub-float v8, v4, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v9, v4, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    sub-float v9, v6, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v10, v6, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 190
    .local v0, "distance":D
    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    cmpg-double v8, v0, v8

    if-gez v8, :cond_1

    .line 192
    const/4 v3, 0x1

    .line 184
    .end local v0    # "distance":D
    .end local v4    # "x1":F
    .end local v6    # "y1":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    .end local v2    # "i":I
    .end local v5    # "x2":F
    .end local v7    # "y2":F
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setDataInfo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->datas:Ljava/util/List;

    .line 220
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->linePaint:Landroid/graphics/Paint;

    .line 221
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 226
    return-void
.end method

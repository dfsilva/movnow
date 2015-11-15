.class public Lcom/veclink/movnow_q2/view/HistotySleepDataView;
.super Landroid/view/View;
.source "HistotySleepDataView.java"


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
            "Lcom/veclink/healthy/database/entity/SleepData;",
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
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->XPoint:I

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->datas:Ljava/util/List;

    .line 49
    const/16 v1, 0xc8

    iput v1, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->stepCountUnit:I

    .line 62
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mContext:Landroid/content/Context;

    .line 63
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mbgViewWidth:I

    .line 66
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mbgViewHeight:I

    .line 67
    return-void
.end method

.method private formatY(Ljava/lang/String;)F
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 221
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    .local v1, "y":F
    iget v2, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->YPoint:I

    int-to-float v2, v2

    iget v3, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->YScale:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->stepCountUnit:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .end local v1    # "y":F
    :goto_0
    return v2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    const v2, -0x3b864000    # -999.0f

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 118
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mChanged:Z

    .line 120
    .local v3, "changed":Z
    if-eqz v3, :cond_0

    .line 121
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mChanged:Z

    .line 123
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->getWidth()I

    move-result v2

    .line 124
    .local v2, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->getHeight()I

    move-result v1

    .line 126
    .local v1, "availableHeight":I
    div-int/lit8 v10, v2, 0x2

    .line 127
    .local v10, "x":I
    div-int/lit8 v11, v1, 0x2

    .line 129
    .local v11, "y":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    .local v4, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 131
    .local v9, "w":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 132
    .local v5, "h":I
    if-eqz v3, :cond_1

    .line 133
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v10, v12

    div-int/lit8 v13, v5, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v10

    div-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v11

    invoke-virtual {v4, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .local v7, "origin":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080016

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090039

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    :try_start_0
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 143
    .local v8, "p":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->XPoint:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->YPoint:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->linePaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->linePaint:Landroid/graphics/Paint;

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->datas:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget v12, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->XPoint:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->XScale:F

    int-to-float v14, v6

    mul-float/2addr v13, v14

    add-float/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->datas:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v12}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->formatY(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v8, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->datas:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v6, v12, :cond_2

    .line 154
    move-object/from16 v0, p0

    iget v12, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->XPoint:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->XScale:F

    int-to-float v14, v6

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->YPoint:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 148
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 157
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v6    # "i":I
    .end local v8    # "p":Landroid/graphics/Path;
    :goto_1
    return-void

    .line 170
    :catch_0
    move-exception v12

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 72
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 73
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 74
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 76
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 77
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 79
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mbgViewWidth:I

    if-ge v6, v7, :cond_0

    .line 81
    int-to-float v7, v6

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mbgViewWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 84
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mbgViewHeight:I

    if-ge v2, v7, :cond_1

    .line 86
    int-to-float v7, v2

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mbgViewHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 89
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 91
    .local v3, "scale":F
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mbgViewWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mbgViewHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->setMeasuredDimension(II)V

    .line 96
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mbgViewWidth:I

    invoke-static {v7, p1}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mViewWidth:I

    .line 97
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mbgViewHeight:I

    invoke-static {v7, p2}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mViewHeight:I

    .line 98
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mViewHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->YPoint:I

    .line 99
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mViewWidth:I

    int-to-double v7, v7

    const-wide v9, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->XPoint:I

    .line 100
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mViewWidth:I

    int-to-float v7, v7

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->XLength:F

    .line 101
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mViewHeight:I

    int-to-float v7, v7

    const v8, 0x3f6b851f    # 0.92f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->YLength:F

    .line 102
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->XLength:F

    const/high16 v8, 0x40c00000    # 6.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->XScale:F

    .line 103
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->YLength:F

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->YScale:F

    .line 104
    iget v7, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mViewWidth:I

    iget v8, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mViewHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->setMeasuredDimension(II)V

    .line 105
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->mChanged:Z

    .line 111
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 195
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 177
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 178
    .local v1, "x2":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 179
    .local v2, "y2":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->datas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
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
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->datas:Ljava/util/List;

    .line 204
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->linePaint:Landroid/graphics/Paint;

    .line 205
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->linePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    return-void
.end method

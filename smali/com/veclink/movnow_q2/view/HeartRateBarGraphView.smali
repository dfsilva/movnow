.class public Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;
.super Landroid/view/View;
.source "HeartRateBarGraphView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private XLength:F

.field private XPoint:I

.field private YLength:F

.field private YPoint:I

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

.field private isAtnight:Z

.field private mContext:Landroid/content/Context;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mbgViewHeight:I

.field private mbgViewWidth:I

.field private paint:Landroid/graphics/Paint;

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

.field private zhuziMargin:I

.field private zhuziWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    const/16 v0, 0x14

    iput v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->XPoint:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->YPoint:I

    .line 47
    const/16 v0, 0xd

    iput v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziWidth:I

    .line 49
    const/16 v0, 0x12

    iput v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziMargin:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->times:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/16 v1, 0x14

    iput v1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->XPoint:I

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->YPoint:I

    .line 47
    const/16 v1, 0xd

    iput v1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziWidth:I

    .line 49
    const/16 v1, 0x12

    iput v1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziMargin:I

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->times:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 71
    .local v0, "dm":Landroid/util/DisplayMetrics;
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mbgViewWidth:I

    .line 73
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mbgViewHeight:I

    .line 74
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->paint:Landroid/graphics/Paint;

    .line 75
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/16 v0, 0x14

    iput v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->XPoint:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->YPoint:I

    .line 47
    const/16 v0, 0xd

    iput v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziWidth:I

    .line 49
    const/16 v0, 0x12

    iput v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziMargin:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->times:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public init(Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .param p3, "isAtnight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .local p2, "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->datas:Ljava/util/List;

    .line 56
    iput-object p2, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->times:Ljava/util/List;

    .line 57
    iput-boolean p3, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->isAtnight:Z

    .line 59
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 135
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->getWidth()I

    move-result v9

    .line 136
    .local v9, "availableWidth":I
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->getHeight()I

    move-result v8

    .line 137
    .local v8, "availableHeight":I
    div-int/lit8 v11, v9, 0x2

    .line 138
    .local v11, "x":I
    div-int/lit8 v12, v8, 0x2

    .line 139
    .local v12, "y":I
    iget v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewHeight:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v2, v0

    iget v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewHeight:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    iget-object v5, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 140
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 141
    .local v7, "rectpaint":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v0, 0x1f

    if-ge v10, v0, :cond_1

    .line 144
    iget v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->XPoint:I

    iget v2, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziWidth:I

    iget v3, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziMargin:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v10

    add-int/2addr v0, v2

    iget v2, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewWidth:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->XPoint:I

    iget v2, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziWidth:I

    iget v3, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziMargin:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v10

    add-int/2addr v0, v2

    int-to-float v3, v0

    iget v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewHeight:I

    rem-int/lit8 v2, v10, 0x4

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    iget v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->XPoint:I

    iget v2, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziWidth:I

    iget v6, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziMargin:I

    add-int/2addr v2, v6

    mul-int/2addr v2, v10

    add-int/2addr v0, v2

    iget v2, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->zhuziWidth:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewHeight:I

    int-to-float v6, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 143
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 148
    .local v5, "whitepaint":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f080000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    iget v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    int-to-float v2, v0

    iget v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewWidth:I

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    int-to-float v3, v0

    iget v0, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 92
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 93
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 94
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 96
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 97
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 99
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mbgViewWidth:I

    if-ge v6, v7, :cond_0

    .line 101
    int-to-float v7, v6

    iget v8, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mbgViewWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 104
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mbgViewHeight:I

    if-ge v2, v7, :cond_1

    .line 106
    int-to-float v7, v2

    iget v8, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mbgViewHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 109
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 111
    .local v3, "scale":F
    iget v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mbgViewWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mbgViewHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->setMeasuredDimension(II)V

    .line 116
    iget v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mbgViewWidth:I

    invoke-static {v7, p1}, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewWidth:I

    .line 117
    iget v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mbgViewHeight:I

    invoke-static {v7, p2}, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewHeight:I

    .line 118
    iget v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewHeight:I

    iput v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->YPoint:I

    .line 119
    iget v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewWidth:I

    mul-int/lit8 v7, v7, 0x7

    div-int/lit8 v7, v7, 0x8

    int-to-float v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->XLength:F

    .line 121
    iget v7, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewWidth:I

    iget v8, p0, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->mViewHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/HeartRateBarGraphView;->setMeasuredDimension(II)V

    .line 122
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 127
    return-void
.end method

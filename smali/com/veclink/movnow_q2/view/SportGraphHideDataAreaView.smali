.class public Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;
.super Landroid/view/View;
.source "SportGraphHideDataAreaView.java"


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

.field private pathPaint:Landroid/graphics/Paint;

.field private pointBitmap:Landroid/graphics/Bitmap;

.field private stepCountUnit:I

.field private zPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v2, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->stepCountUnit:I

    .line 70
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mContext:Landroid/content/Context;

    .line 71
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mbgViewWidth:I

    .line 74
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mbgViewHeight:I

    .line 75
    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->setWillNotDraw(Z)V

    .line 77
    return-void
.end method

.method private formatY(Ljava/lang/String;)F
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 305
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 309
    .local v2, "y":F
    iget v3, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->YPoint:I

    int-to-float v3, v3

    iget v4, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->YPoint:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->stepCountUnit:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 310
    .end local v2    # "y":F
    :goto_0
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const v1, -0x3b864000    # -999.0f

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 128
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mChanged:Z

    .line 130
    .local v13, "changed":Z
    if-eqz v13, :cond_0

    .line 131
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mChanged:Z

    .line 133
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getWidth()I

    move-result v12

    .line 134
    .local v12, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getHeight()I

    move-result v11

    .line 136
    .local v11, "availableHeight":I
    div-int/lit8 v21, v12, 0x2

    .line 137
    .local v21, "x":I
    div-int/lit8 v22, v11, 0x2

    .line 139
    .local v22, "y":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    .local v14, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 141
    .local v20, "w":I
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    .line 142
    .local v16, "h":I
    if-eqz v13, :cond_1

    .line 143
    div-int/lit8 v4, v20, 0x2

    sub-int v4, v21, v4

    div-int/lit8 v5, v16, 0x2

    sub-int v5, v22, v5

    div-int/lit8 v6, v20, 0x2

    add-int v6, v6, v21

    div-int/lit8 v7, v16, 0x2

    add-int v7, v7, v22

    invoke-virtual {v14, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    .line 153
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    .line 154
    .local v19, "p":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->YPoint:I

    int-to-float v5, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pathPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 158
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v23, 0x7f08001d

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    aput v10, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v23, 0x7f08001e

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    aput v10, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v23, 0x7f08001f

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    aput v10, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 160
    .local v2, "lg":Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 162
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XScale:F

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_2

    .line 167
    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XScale:F

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->YPoint:I

    int-to-float v5, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 170
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 172
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 174
    .local v18, "linepaint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v8, 0x3

    new-array v8, v8, [I

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08001a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    aput v23, v8, v10

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08001b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    aput v23, v8, v10

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08001c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    aput v23, v8, v10

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 176
    .local v3, "linearGradient":Landroid/graphics/LinearGradient;
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 179
    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_4

    .line 181
    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    int-to-float v4, v4

    add-int/lit8 v5, v17, -0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XScale:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    add-int/lit8 v6, v17, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XScale:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v8

    move-object/from16 v4, p1

    move-object/from16 v9, v18

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 180
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 185
    :cond_4
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_7

    .line 186
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 188
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 189
    .local v9, "paint":Landroid/graphics/Paint;
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020037

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    .line 192
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XScale:F

    move/from16 v0, v17

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v6, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 197
    .end local v9    # "paint":Landroid/graphics/Paint;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x1f40

    if-lt v4, v5, :cond_6

    .line 198
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 199
    .restart local v9    # "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XScale:F

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mViewHeight:I

    int-to-double v6, v4

    const-wide v23, 0x3fb4395810624dd3L    # 0.079

    mul-double v6, v6, v23

    double-to-float v6, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XScale:F

    move/from16 v0, v17

    int-to-float v8, v0

    mul-float/2addr v7, v8

    add-float/2addr v7, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->YPoint:I

    int-to-float v8, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200ec

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XScale:F

    move/from16 v0, v17

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v6, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v9    # "paint":Landroid/graphics/Paint;
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 211
    .end local v2    # "lg":Landroid/graphics/LinearGradient;
    .end local v3    # "linearGradient":Landroid/graphics/LinearGradient;
    .end local v17    # "i":I
    .end local v18    # "linepaint":Landroid/graphics/Paint;
    .end local v19    # "p":Landroid/graphics/Path;
    :catch_0
    move-exception v15

    .line 212
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 82
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 83
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 84
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 86
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 87
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 89
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mbgViewWidth:I

    if-ge v6, v7, :cond_0

    .line 91
    int-to-float v7, v6

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mbgViewWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 94
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mbgViewHeight:I

    if-ge v2, v7, :cond_1

    .line 96
    int-to-float v7, v2

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mbgViewHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 99
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 101
    .local v3, "scale":F
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mbgViewWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mbgViewHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->setMeasuredDimension(II)V

    .line 106
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mbgViewWidth:I

    invoke-static {v7, p1}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mViewWidth:I

    .line 107
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mbgViewHeight:I

    invoke-static {v7, p2}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mViewHeight:I

    .line 108
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mViewHeight:I

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->YPoint:I

    .line 109
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mViewWidth:I

    int-to-double v7, v7

    const-wide v9, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    .line 110
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mViewWidth:I

    int-to-float v7, v7

    const v8, 0x3f5c28f6    # 0.86f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XLength:F

    .line 111
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mViewHeight:I

    int-to-float v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->YLength:F

    .line 112
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XLength:F

    const/high16 v8, 0x42100000    # 36.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XScale:F

    .line 113
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->YLength:F

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->YScale:F

    .line 114
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mViewWidth:I

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mViewHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->setMeasuredDimension(II)V

    .line 115
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mChanged:Z

    .line 121
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, "isOnClick":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 247
    :cond_0
    if-eqz v3, :cond_2

    .line 248
    const/4 v8, 0x0

    .line 250
    :goto_0
    return v8

    .line 221
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 222
    .local v5, "x2":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 223
    .local v7, "y2":F
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    if-eqz v8, :cond_0

    .line 226
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 229
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 231
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v8}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x1f40

    if-lt v8, v9, :cond_1

    .line 232
    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XPoint:I

    int-to-float v8, v8

    iget v9, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->XScale:F

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float v4, v8, v9

    .line 233
    .local v4, "x1":F
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v8}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v6

    .line 234
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

    .line 235
    .local v0, "distance":D
    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    cmpg-double v8, v0, v8

    if-gez v8, :cond_1

    .line 237
    const/4 v3, 0x1

    .line 229
    .end local v0    # "distance":D
    .end local v4    # "x1":F
    .end local v6    # "y1":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 250
    .end local v2    # "i":I
    .end local v5    # "x2":F
    .end local v7    # "y2":F
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setDataInfo(Ljava/util/List;)V
    .locals 14
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
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    const/4 v13, 0x0

    .line 258
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 259
    iget v4, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->stepCountUnit:I

    .line 260
    .local v4, "maxStepCount":I
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 261
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/veclink/healthy/database/entity/SportData;

    .line 264
    .local v7, "sportData":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SportData;->getSportTime()Ljava/lang/String;

    move-result-object v10

    .line 265
    .local v10, "timeString":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 266
    .local v0, "hour":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 267
    .local v5, "minute":I
    mul-int/lit8 v11, v0, 0x3c

    add-int v6, v11, v5

    .line 268
    .local v6, "minutes":I
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 269
    .local v9, "stepCount":I
    if-le v9, v4, :cond_0

    move v4, v9

    .line 270
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 272
    .end local v0    # "hour":I
    .end local v5    # "minute":I
    .end local v6    # "minutes":I
    .end local v7    # "sportData":Lcom/veclink/healthy/database/entity/SportData;
    .end local v9    # "stepCount":I
    .end local v10    # "timeString":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SportData;->getSportTime()Ljava/lang/String;

    move-result-object v10

    .line 274
    .restart local v10    # "timeString":Ljava/lang/String;
    const/16 v1, 0xb4

    .local v1, "i":I
    :goto_1
    const/16 v11, 0x4ec

    if-ge v1, v11, :cond_3

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 276
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_2
    add-int/lit8 v1, v1, 0x1e

    goto :goto_1

    .line 278
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v10, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, "sportTime":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    div-int/lit8 v12, v1, 0x3c

    invoke-static {v12}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->intToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 280
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    rem-int/lit8 v12, v1, 0x3c

    invoke-static {v12}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->intToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 281
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->mContext:Landroid/content/Context;

    invoke-static {v11, v8}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->createSportData(Landroid/content/Context;Ljava/lang/String;)Lcom/veclink/healthy/database/entity/SportData;

    move-result-object v7

    .line 284
    .restart local v7    # "sportData":Lcom/veclink/healthy/database/entity/SportData;
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 288
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/veclink/healthy/database/entity/SportData;>;"
    .end local v7    # "sportData":Lcom/veclink/healthy/database/entity/SportData;
    .end local v8    # "sportTime":Ljava/lang/String;
    .end local v10    # "timeString":Ljava/lang/String;
    :cond_3
    iput v4, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->stepCountUnit:I

    .line 290
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pathPaint:Landroid/graphics/Paint;

    .line 291
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pathPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pathPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 293
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080016

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->pathPaint:Landroid/graphics/Paint;

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 295
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/SportGraphHideDataAreaView;->postInvalidate()V

    .line 297
    return-void
.end method

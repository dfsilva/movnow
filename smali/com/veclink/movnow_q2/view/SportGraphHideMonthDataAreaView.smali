.class public Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;
.super Landroid/view/View;
.source "SportGraphHideMonthDataAreaView.java"


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
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XPoint:I

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    .line 55
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->stepCountUnit:I

    .line 67
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mContext:Landroid/content/Context;

    .line 68
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mbgViewWidth:I

    .line 71
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mbgViewHeight:I

    .line 73
    return-void
.end method

.method private formatY(Ljava/lang/String;)F
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 267
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 271
    .local v1, "y":F
    iget v2, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->YPoint:I

    int-to-float v2, v2

    iget v3, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->YScale:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->stepCountUnit:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .end local v1    # "y":F
    :goto_0
    return v2

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const v2, -0x3b864000    # -999.0f

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 124
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 125
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mChanged:Z

    .line 126
    .local v13, "changed":Z
    if-eqz v13, :cond_0

    .line 127
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mChanged:Z

    .line 129
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getWidth()I

    move-result v12

    .line 130
    .local v12, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getHeight()I

    move-result v11

    .line 132
    .local v11, "availableHeight":I
    div-int/lit8 v21, v12, 0x2

    .line 133
    .local v21, "x":I
    div-int/lit8 v22, v11, 0x2

    .line 135
    .local v22, "y":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    .local v14, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 137
    .local v20, "w":I
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 138
    .local v15, "h":I
    if-eqz v13, :cond_1

    .line 139
    div-int/lit8 v4, v20, 0x2

    sub-int v4, v21, v4

    div-int/lit8 v5, v15, 0x2

    sub-int v5, v22, v5

    div-int/lit8 v6, v20, 0x2

    add-int v6, v6, v21

    div-int/lit8 v7, v15, 0x2

    add-int v7, v7, v22

    invoke-virtual {v14, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    .line 146
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 147
    .local v18, "p":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->YPoint:I

    int-to-float v5, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pathPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08001d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08001f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 153
    .local v2, "lg":Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 155
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_3

    .line 157
    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XScale:F

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XScale:F

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->YPoint:I

    int-to-float v5, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 155
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 165
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 167
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 169
    .local v17, "linepaint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v8, 0x3

    new-array v8, v8, [I

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v23, 0x7f08001a

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v23, 0x7f08001b

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v23, 0x7f08001c

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 171
    .local v3, "linearGradient":Landroid/graphics/LinearGradient;
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 174
    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 176
    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XPoint:I

    int-to-float v4, v4

    add-int/lit8 v5, v16, -0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XScale:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    add-int/lit8 v6, v16, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XPoint:I

    int-to-float v4, v4

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XScale:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v8

    move-object/from16 v4, p1

    move-object/from16 v9, v17

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 180
    :cond_4
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_6

    .line 181
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 182
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 183
    .local v19, "paint":Landroid/graphics/Paint;
    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020037

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    .line 186
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XScale:F

    move/from16 v0, v16

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v6, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 180
    .end local v19    # "paint":Landroid/graphics/Paint;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 191
    :cond_6
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_7

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x1f40

    if-lt v4, v5, :cond_8

    .line 193
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 194
    .restart local v19    # "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200ec

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    .line 199
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XPoint:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XScale:F

    move/from16 v0, v16

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v6, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pointBitmap:Landroid/graphics/Bitmap;

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

    .line 207
    .end local v2    # "lg":Landroid/graphics/LinearGradient;
    .end local v3    # "linearGradient":Landroid/graphics/LinearGradient;
    .end local v16    # "i":I
    .end local v17    # "linepaint":Landroid/graphics/Paint;
    .end local v18    # "p":Landroid/graphics/Path;
    .end local v19    # "paint":Landroid/graphics/Paint;
    :cond_7
    :goto_4
    return-void

    .line 191
    .restart local v2    # "lg":Landroid/graphics/LinearGradient;
    .restart local v3    # "linearGradient":Landroid/graphics/LinearGradient;
    .restart local v16    # "i":I
    .restart local v17    # "linepaint":Landroid/graphics/Paint;
    .restart local v18    # "p":Landroid/graphics/Path;
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 205
    .end local v2    # "lg":Landroid/graphics/LinearGradient;
    .end local v3    # "linearGradient":Landroid/graphics/LinearGradient;
    .end local v16    # "i":I
    .end local v17    # "linepaint":Landroid/graphics/Paint;
    .end local v18    # "p":Landroid/graphics/Path;
    :catch_0
    move-exception v4

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 78
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 79
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 80
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 82
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 85
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mbgViewWidth:I

    if-ge v6, v7, :cond_0

    .line 87
    int-to-float v7, v6

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mbgViewWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 90
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mbgViewHeight:I

    if-ge v2, v7, :cond_1

    .line 92
    int-to-float v7, v2

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mbgViewHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 95
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 97
    .local v3, "scale":F
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mbgViewWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mbgViewHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->setMeasuredDimension(II)V

    .line 102
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mbgViewWidth:I

    invoke-static {v7, p1}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mViewWidth:I

    .line 103
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mbgViewHeight:I

    invoke-static {v7, p2}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mViewHeight:I

    .line 104
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mViewHeight:I

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->YPoint:I

    .line 105
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mViewWidth:I

    int-to-double v7, v7

    const-wide v9, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XPoint:I

    .line 106
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mViewWidth:I

    int-to-float v7, v7

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XLength:F

    .line 107
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mViewHeight:I

    int-to-float v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->YLength:F

    .line 108
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XLength:F

    const/high16 v8, 0x40c00000    # 6.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XScale:F

    .line 109
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->YLength:F

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->YScale:F

    .line 110
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mViewWidth:I

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mViewHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->setMeasuredDimension(II)V

    .line 111
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->mChanged:Z

    .line 117
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    const/4 v3, 0x0

    .line 211
    .local v3, "isOnClick":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 241
    :cond_0
    if-eqz v3, :cond_2

    .line 242
    const/4 v8, 0x0

    .line 244
    :goto_0
    return v8

    .line 214
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 215
    .local v5, "x2":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 216
    .local v7, "y2":F
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 219
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 221
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v8}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x1f40

    if-lt v8, v9, :cond_1

    .line 222
    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XPoint:I

    int-to-float v8, v8

    iget v9, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->XScale:F

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float v4, v8, v9

    .line 223
    .local v4, "x1":F
    iget-object v8, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v8}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->formatY(Ljava/lang/String;)F

    move-result v6

    .line 224
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

    .line 225
    .local v0, "distance":D
    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    cmpg-double v8, v0, v8

    if-gez v8, :cond_1

    .line 227
    const/4 v3, 0x1

    .line 219
    .end local v0    # "distance":D
    .end local v4    # "x1":F
    .end local v6    # "y1":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    .end local v2    # "i":I
    .end local v5    # "x2":F
    .end local v7    # "y2":F
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_0

    .line 211
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
    .line 254
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->datas:Ljava/util/List;

    .line 255
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pathPaint:Landroid/graphics/Paint;

    .line 256
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 257
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pathPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 258
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/SportGraphHideMonthDataAreaView;->pathPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    return-void
.end method

.class public Lcom/veclink/movnow_q2/view/SportGraphView;
.super Landroid/view/View;
.source "SportGraphView.java"


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

.field private zPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/SportGraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/veclink/movnow_q2/view/SportGraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->XPoint:I

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->times:Ljava/util/List;

    .line 53
    const/4 v1, 0x1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->stepCountUnit:I

    .line 66
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mContext:Landroid/content/Context;

    .line 67
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mbgViewWidth:I

    .line 70
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mbgViewHeight:I

    .line 71
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->times:Ljava/util/List;

    const-string v2, "03:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->times:Ljava/util/List;

    const-string v2, "06:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->times:Ljava/util/List;

    const-string v2, "09:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->times:Ljava/util/List;

    const-string v2, "12:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->times:Ljava/util/List;

    const-string v2, "15:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->times:Ljava/util/List;

    const-string v2, "18:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->times:Ljava/util/List;

    const-string v2, "21:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method private formatY(Ljava/lang/String;)F
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 278
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 282
    .local v2, "y":F
    iget v3, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->YPoint:I

    int-to-float v3, v3

    iget v4, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->YPoint:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->stepCountUnit:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 284
    .end local v2    # "y":F
    :goto_0
    return v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
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
    .line 129
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->mChanged:Z

    .line 131
    .local v10, "changed":Z
    if-eqz v10, :cond_0

    .line 132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->mChanged:Z

    .line 134
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphView;->getWidth()I

    move-result v9

    .line 135
    .local v9, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphView;->getHeight()I

    move-result v8

    .line 137
    .local v8, "availableHeight":I
    div-int/lit8 v17, v9, 0x2

    .line 138
    .local v17, "x":I
    div-int/lit8 v18, v8, 0x2

    .line 140
    .local v18, "y":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    .local v11, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 142
    .local v16, "w":I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 143
    .local v12, "h":I
    if-eqz v10, :cond_1

    .line 144
    div-int/lit8 v2, v16, 0x2

    sub-int v2, v17, v2

    div-int/lit8 v3, v12, 0x2

    sub-int v3, v18, v3

    div-int/lit8 v4, v16, 0x2

    add-int v4, v4, v17

    div-int/lit8 v5, v12, 0x2

    add-int v5, v5, v18

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 148
    .local v14, "origin":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->times:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->times:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->mViewWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3f9eb851eb851eb8L    # 0.03

    int-to-double v0, v13

    move-wide/from16 v19, v0

    const-wide v21, 0x3fef0a3d70a3d70aL    # 0.97

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->times:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    mul-double v19, v19, v21

    add-double v5, v5, v19

    mul-double/2addr v3, v5

    double-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->mViewHeight:I

    int-to-double v4, v4

    const-wide v19, 0x3fee666666666666L    # 0.95

    mul-double v4, v4, v19

    double-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 150
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 155
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 159
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 160
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 161
    .local v15, "p":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->XPoint:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->YPoint:I

    int-to-float v3, v3

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->linePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->linePaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 166
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->XPoint:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->XScale:F

    int-to-float v4, v13

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/veclink/movnow_q2/view/SportGraphView;->formatY(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v15, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v13, v2, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->XPoint:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->XScale:F

    int-to-float v4, v13

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->YPoint:I

    int-to-float v3, v3

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 175
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 178
    .end local v15    # "p":Landroid/graphics/Path;
    :cond_5
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_7

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1f40

    if-lt v2, v3, :cond_6

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e9

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->pointBitmap:Landroid/graphics/Bitmap;

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->pointBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->XPoint:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->XScale:F

    int-to-float v5, v13

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/veclink/movnow_q2/view/SportGraphView;->formatY(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v2, v5

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 183
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 184
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SportGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 186
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->XPoint:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->XScale:F

    int-to-float v4, v13

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/veclink/movnow_q2/view/SportGraphView;->formatY(Ljava/lang/String;)F

    move-result v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->XPoint:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->XScale:F

    int-to-float v6, v13

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SportGraphView;->YPoint:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 190
    :catch_0
    move-exception v2

    .line 193
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 83
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 84
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 85
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 87
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 88
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 90
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mbgViewWidth:I

    if-ge v6, v7, :cond_0

    .line 92
    int-to-float v7, v6

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mbgViewWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 95
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mbgViewHeight:I

    if-ge v2, v7, :cond_1

    .line 97
    int-to-float v7, v2

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mbgViewHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 100
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 102
    .local v3, "scale":F
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mbgViewWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/veclink/movnow_q2/view/SportGraphView;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mbgViewHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/veclink/movnow_q2/view/SportGraphView;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SportGraphView;->setMeasuredDimension(II)V

    .line 107
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mbgViewWidth:I

    invoke-static {v7, p1}, Lcom/veclink/movnow_q2/view/SportGraphView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mViewWidth:I

    .line 108
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mbgViewHeight:I

    invoke-static {v7, p2}, Lcom/veclink/movnow_q2/view/SportGraphView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mViewHeight:I

    .line 109
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mViewHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->YPoint:I

    .line 110
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mViewWidth:I

    int-to-double v7, v7

    const-wide v9, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->XPoint:I

    .line 111
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mViewWidth:I

    int-to-float v7, v7

    const v8, 0x3f570a3d    # 0.84f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->XLength:F

    .line 112
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mViewHeight:I

    int-to-float v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->YLength:F

    .line 113
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->XLength:F

    const/high16 v8, 0x42100000    # 36.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->XScale:F

    .line 114
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->YLength:F

    const/high16 v8, 0x41000000    # 8.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->YScale:F

    .line 115
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mViewWidth:I

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mViewHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SportGraphView;->setMeasuredDimension(II)V

    .line 116
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mChanged:Z

    .line 122
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 223
    :cond_0
    const/4 v7, 0x0

    return v7

    .line 199
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 200
    .local v4, "x2":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 201
    .local v6, "y2":F
    iget-object v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 202
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 204
    iget-object v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x1f40

    if-lt v7, v8, :cond_1

    .line 205
    iget v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->XPoint:I

    int-to-float v7, v7

    iget v8, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->XScale:F

    add-int/lit8 v9, v2, 0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float v3, v7, v8

    .line 206
    .local v3, "x1":F
    iget-object v7, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/veclink/movnow_q2/view/SportGraphView;->formatY(Ljava/lang/String;)F

    move-result v5

    .line 207
    .local v5, "y1":F
    sub-float v7, v3, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v8, v3, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float v8, v5, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v9, v5, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 208
    .local v0, "distance":D
    const-wide/high16 v7, 0x4054000000000000L    # 80.0

    cmpg-double v7, v0, v7

    if-gez v7, :cond_1

    .line 202
    .end local v0    # "distance":D
    .end local v3    # "x1":F
    .end local v5    # "y1":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
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

    .line 230
    iget v4, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->stepCountUnit:I

    .line 231
    .local v4, "maxStepCount":I
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 232
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 233
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 235
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

    .line 236
    .local v7, "sportData":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SportData;->getSportTime()Ljava/lang/String;

    move-result-object v10

    .line 237
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

    .line 238
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

    .line 239
    .local v5, "minute":I
    mul-int/lit8 v11, v0, 0x3c

    add-int v6, v11, v5

    .line 240
    .local v6, "minutes":I
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 241
    .local v9, "stepCount":I
    if-le v9, v4, :cond_0

    move v4, v9

    .line 242
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
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

    .line 246
    .restart local v10    # "timeString":Ljava/lang/String;
    const/16 v1, 0xb4

    .local v1, "i":I
    :goto_1
    const/16 v11, 0x4ec

    if-ge v1, v11, :cond_3

    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 248
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_2
    add-int/lit8 v1, v1, 0x1e

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v10, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 251
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

    .line 252
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

    .line 253
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->mContext:Landroid/content/Context;

    invoke-static {v11, v8}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->createSportData(Landroid/content/Context;Ljava/lang/String;)Lcom/veclink/healthy/database/entity/SportData;

    move-result-object v7

    .line 256
    .restart local v7    # "sportData":Lcom/veclink/healthy/database/entity/SportData;
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->datas:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 260
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/veclink/healthy/database/entity/SportData;>;"
    .end local v7    # "sportData":Lcom/veclink/healthy/database/entity/SportData;
    .end local v8    # "sportTime":Ljava/lang/String;
    .end local v10    # "timeString":Ljava/lang/String;
    :cond_3
    iput v4, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->stepCountUnit:I

    .line 261
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->linePaint:Landroid/graphics/Paint;

    .line 262
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->linePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->linePaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 264
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/SportGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080016

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    iget-object v11, p0, Lcom/veclink/movnow_q2/view/SportGraphView;->linePaint:Landroid/graphics/Paint;

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 267
    return-void
.end method

.class public Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;
.super Landroid/view/View;
.source "SleepHideBarDataAreaGraphView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


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
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation
.end field

.field private isAtnight:Z

.field private mChanged:Z

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->XPoint:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->times:Ljava/util/List;

    .line 80
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->XPoint:I

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->times:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mContext:Landroid/content/Context;

    .line 65
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mbgViewWidth:I

    .line 68
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mbgViewHeight:I

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->XPoint:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->times:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private formatX(Ljava/lang/String;)F
    .locals 6
    .param p1, "datetime"    # Ljava/lang/String;

    .prologue
    .line 273
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 274
    .local v1, "hour":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 275
    .local v3, "minute":I
    const/16 v4, 0x1e

    if-ne v3, v4, :cond_0

    .line 276
    int-to-float v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    add-float v2, v4, v5

    .line 293
    .end local v1    # "hour":I
    .end local v3    # "minute":I
    :goto_0
    return v2

    .line 278
    .restart local v1    # "hour":I
    .restart local v3    # "minute":I
    :cond_0
    int-to-float v2, v1

    .local v2, "hour_result":F
    goto :goto_0

    .line 289
    .end local v1    # "hour":I
    .end local v2    # "hour_result":F
    .end local v3    # "minute":I
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const v2, -0x3b864000    # -999.0f

    goto :goto_0
.end method


# virtual methods
.method public init(Ljava/util/List;Z)V
    .locals 0
    .param p2, "isAtnight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->datas:Ljava/util/List;

    .line 52
    iput-boolean p2, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->isAtnight:Z

    .line 54
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 135
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mChanged:Z

    .line 137
    .local v10, "changed":Z
    if-eqz v10, :cond_0

    .line 138
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mChanged:Z

    .line 140
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->getWidth()I

    move-result v9

    .line 141
    .local v9, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->getHeight()I

    move-result v8

    .line 143
    .local v8, "availableHeight":I
    div-int/lit8 v16, v9, 0x2

    .line 144
    .local v16, "x":I
    div-int/lit8 v17, v8, 0x2

    .line 146
    .local v17, "y":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    .local v11, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 148
    .local v15, "w":I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 149
    .local v12, "h":I
    if-eqz v10, :cond_1

    .line 150
    div-int/lit8 v2, v15, 0x2

    sub-int v2, v16, v2

    div-int/lit8 v4, v12, 0x2

    sub-int v4, v17, v4

    div-int/lit8 v6, v15, 0x2

    add-int v6, v6, v16

    div-int/lit8 v19, v12, 0x2

    add-int v19, v19, v17

    move/from16 v0, v19

    invoke-virtual {v11, v2, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->paint:Landroid/graphics/Paint;

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f080007

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mViewWidth:I

    int-to-float v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 164
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 165
    .local v7, "sleepPaint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080013

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    const/16 v18, 0x0

    .line 169
    .local v18, "yValue":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->datas:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 170
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v13, v2, :cond_7

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v13, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    const/16 v18, 0x3

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080019

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v13, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v14

    .line 184
    .local v14, "startTime":I
    const-string v2, "SleepFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTime \uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v6, v14, 0x3c

    invoke-static {v6}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->isAtnight:Z

    if-eqz v2, :cond_6

    .line 187
    const/16 v2, 0x4ec

    if-lt v14, v2, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v13, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v2

    add-int/lit16 v14, v2, -0x4ec

    .line 196
    :cond_2
    :goto_2
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->XScale:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->XPoint:I

    int-to-float v4, v4

    add-float v3, v2, v4

    .line 197
    .local v3, "x_pre_position":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v13, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v2

    add-int/2addr v2, v14

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->XScale:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->XPoint:I

    int-to-float v4, v4

    add-float v5, v2, v4

    .line 198
    .local v5, "x_current_position":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mViewWidth:I

    int-to-double v0, v2

    move-wide/from16 v19, v0

    const-wide v21, 0x3fed1eb851eb851fL    # 0.91

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v2, v0

    cmpl-float v2, v5, v2

    if-lez v2, :cond_3

    .line 199
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mViewWidth:I

    int-to-double v0, v2

    move-wide/from16 v19, v0

    const-wide v21, 0x3fed1eb851eb851fL    # 0.91

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v5, v0

    .line 202
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->YPoint:I

    int-to-float v4, v2

    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->YScale:F

    mul-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->YPoint:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 170
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 175
    .end local v3    # "x_pre_position":F
    .end local v5    # "x_current_position":F
    .end local v14    # "startTime":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080018

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    const/16 v18, 0x2

    goto/16 :goto_1

    .line 189
    .restart local v14    # "startTime":I
    :cond_5
    if-ltz v14, :cond_2

    const/16 v2, 0x4ec

    if-ge v14, v2, :cond_2

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v13, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v2

    add-int/lit16 v14, v2, 0xb4

    goto/16 :goto_2

    .line 194
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v13, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v2

    add-int/lit16 v14, v2, -0x21c

    goto/16 :goto_2

    .line 268
    .end local v13    # "j":I
    .end local v14    # "startTime":I
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 88
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 89
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 90
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 92
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 95
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mbgViewWidth:I

    if-ge v6, v7, :cond_0

    .line 97
    int-to-float v7, v6

    iget v8, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mbgViewWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 100
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mbgViewHeight:I

    if-ge v2, v7, :cond_1

    .line 102
    int-to-float v7, v2

    iget v8, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mbgViewHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 105
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 107
    .local v3, "scale":F
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mbgViewWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mbgViewHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->setMeasuredDimension(II)V

    .line 112
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mbgViewWidth:I

    invoke-static {v7, p1}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mViewWidth:I

    .line 113
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mbgViewHeight:I

    invoke-static {v7, p2}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mViewHeight:I

    .line 114
    iput v9, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->YPoint:I

    .line 115
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mViewWidth:I

    int-to-double v7, v7

    const-wide v9, 0x3fb70a3d70a3d70aL    # 0.09

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->XPoint:I

    .line 116
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mViewWidth:I

    int-to-float v7, v7

    const v8, 0x3f51eb85    # 0.82f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->XLength:F

    .line 117
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mViewHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x3f400000    # 0.75f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->YLength:F

    .line 118
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->XLength:F

    const/high16 v8, 0x44340000    # 720.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->XScale:F

    .line 119
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->YLength:F

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->YScale:F

    .line 121
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mViewWidth:I

    iget v8, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mViewHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->setMeasuredDimension(II)V

    .line 122
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/SleepHideBarDataAreaGraphView;->mChanged:Z

    .line 128
    return-void
.end method

.class public Lcom/veclink/movnow_q2/view/SleepBarGraphView;
.super Landroid/view/View;
.source "SleepBarGraphView.java"


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
    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XPoint:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->times:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XPoint:I

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->times:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mContext:Landroid/content/Context;

    .line 70
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mbgViewWidth:I

    .line 73
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mbgViewHeight:I

    .line 81
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

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XPoint:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->times:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private formatX(Ljava/lang/String;)F
    .locals 6
    .param p1, "datetime"    # Ljava/lang/String;

    .prologue
    .line 214
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

    .line 215
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

    .line 216
    .local v3, "minute":I
    const/16 v4, 0x1e

    if-ne v3, v4, :cond_0

    .line 217
    int-to-float v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    add-float v2, v4, v5

    .line 225
    .end local v1    # "hour":I
    .end local v3    # "minute":I
    :goto_0
    return v2

    .line 219
    .restart local v1    # "hour":I
    .restart local v3    # "minute":I
    :cond_0
    int-to-float v2, v1

    .local v2, "hour_result":F
    goto :goto_0

    .line 221
    .end local v1    # "hour":I
    .end local v2    # "hour_result":F
    .end local v3    # "minute":I
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const v2, -0x3b864000    # -999.0f

    goto :goto_0
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
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->datas:Ljava/util/List;

    .line 56
    iput-object p2, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->times:Ljava/util/List;

    .line 57
    iput-boolean p3, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->isAtnight:Z

    .line 59
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 31
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 140
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mChanged:Z

    .line 142
    .local v10, "changed":Z
    if-eqz v10, :cond_0

    .line 143
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mChanged:Z

    .line 145
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->getWidth()I

    move-result v9

    .line 146
    .local v9, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->getHeight()I

    move-result v8

    .line 148
    .local v8, "availableHeight":I
    div-int/lit8 v18, v9, 0x2

    .line 149
    .local v18, "x":I
    div-int/lit8 v19, v8, 0x2

    .line 151
    .local v19, "y":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    .local v11, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 153
    .local v17, "w":I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 154
    .local v12, "h":I
    if-eqz v10, :cond_1

    .line 155
    div-int/lit8 v2, v17, 0x2

    sub-int v2, v18, v2

    div-int/lit8 v4, v12, 0x2

    sub-int v4, v19, v4

    div-int/lit8 v6, v17, 0x2

    add-int v6, v6, v18

    div-int/lit8 v21, v12, 0x2

    add-int v21, v21, v19

    move/from16 v0, v21

    invoke-virtual {v11, v2, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 159
    .local v15, "origin":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080016

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090039

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->times:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_2

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->times:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewWidth:I

    int-to-double v0, v4

    move-wide/from16 v21, v0

    const-wide v23, 0x3fa47ae147ae147bL    # 0.04

    int-to-double v0, v13

    move-wide/from16 v25, v0

    const-wide v27, 0x3fee666666666666L    # 0.95

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->times:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v29, v0

    div-double v27, v27, v29

    mul-double v25, v25, v27

    add-double v23, v23, v25

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewHeight:I

    int-to-double v0, v6

    move-wide/from16 v21, v0

    const-wide v23, 0x3fee666666666666L    # 0.95

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v6, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v6, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 161
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 164
    :cond_2
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 165
    .local v7, "sleepPaint":Landroid/graphics/Paint;
    const/16 v20, 0x0

    .line 166
    .local v20, "yValue":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->datas:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 167
    const/4 v14, 0x1

    .local v14, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v14, v2, :cond_8

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v14, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepState()Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    const/16 v20, 0x3

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080019

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v14, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v16

    .line 178
    .local v16, "startTime":I
    const-string v2, "SleepFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTime \uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v6, v16, 0x3c

    invoke-static {v6}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->isAtnight:Z

    if-eqz v2, :cond_7

    .line 181
    const/16 v2, 0x4ec

    move/from16 v0, v16

    if-lt v0, v2, :cond_6

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v14, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v2

    add-int/lit16 v0, v2, -0x4ec

    move/from16 v16, v0

    .line 190
    :cond_3
    :goto_3
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XScale:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XPoint:I

    int-to-float v4, v4

    add-float v3, v2, v4

    .line 191
    .local v3, "x_pre_position":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v14, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XScale:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XPoint:I

    int-to-float v4, v4

    add-float v5, v2, v4

    .line 192
    .local v5, "x_current_position":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewWidth:I

    int-to-double v0, v2

    move-wide/from16 v21, v0

    const-wide v23, 0x3fed1eb851eb851fL    # 0.91

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v2, v0

    cmpl-float v2, v5, v2

    if-lez v2, :cond_4

    .line 193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewWidth:I

    int-to-double v0, v2

    move-wide/from16 v21, v0

    const-wide v23, 0x3fed1eb851eb851fL    # 0.91

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v5, v0

    .line 196
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->YPoint:I

    int-to-float v4, v2

    move/from16 v0, v20

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->YScale:F

    mul-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->YPoint:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    const-string v2, "SleepFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x_pre_position\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v2, "SleepFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x_current_position\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v4, "SleepFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "datas.get(j-1).getSleepDuration()\uff1a"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->datas:Ljava/util/List;

    add-int/lit8 v21, v14, -0x1

    move/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 172
    .end local v3    # "x_pre_position":F
    .end local v5    # "x_current_position":F
    .end local v16    # "startTime":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080018

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    const/16 v20, 0x2

    goto/16 :goto_2

    .line 183
    .restart local v16    # "startTime":I
    :cond_6
    if-ltz v16, :cond_3

    const/16 v2, 0x4ec

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v14, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v2

    add-int/lit16 v0, v2, 0xb4

    move/from16 v16, v0

    goto/16 :goto_3

    .line 188
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->datas:Ljava/util/List;

    add-int/lit8 v4, v14, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v2

    add-int/lit16 v0, v2, -0x21c

    move/from16 v16, v0

    goto/16 :goto_3

    .line 203
    .end local v14    # "j":I
    .end local v16    # "startTime":I
    :cond_8
    const-string v2, "SleepFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XScale \u5355\u4f4d\u957f\u5ea6\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XScale:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v2, "SleepFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XPoint \u539f\u70b9\u5750\u6807\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XPoint:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v2, "SleepFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XLength X\u8f74\u957f\u5ea6\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XLength:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v2, "SleepFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(float)(mViewWidth*0.91)\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewWidth:I

    int-to-double v0, v6

    move-wide/from16 v21, v0

    const-wide v23, 0x3fed1eb851eb851fL    # 0.91

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 93
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 94
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 95
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 97
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 98
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 100
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mbgViewWidth:I

    if-ge v6, v7, :cond_0

    .line 102
    int-to-float v7, v6

    iget v8, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mbgViewWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 105
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mbgViewHeight:I

    if-ge v2, v7, :cond_1

    .line 107
    int-to-float v7, v2

    iget v8, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mbgViewHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 110
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 112
    .local v3, "scale":F
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mbgViewWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mbgViewHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->setMeasuredDimension(II)V

    .line 117
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mbgViewWidth:I

    invoke-static {v7, p1}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewWidth:I

    .line 118
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mbgViewHeight:I

    invoke-static {v7, p2}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->resolveSize(II)I

    move-result v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewHeight:I

    .line 119
    iput v9, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->YPoint:I

    .line 120
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewWidth:I

    int-to-double v7, v7

    const-wide v9, 0x3fb70a3d70a3d70aL    # 0.09

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XPoint:I

    .line 121
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewWidth:I

    int-to-float v7, v7

    const v8, 0x3f51eb85    # 0.82f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XLength:F

    .line 122
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewHeight:I

    int-to-float v7, v7

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->YLength:F

    .line 123
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XLength:F

    const/high16 v8, 0x44340000    # 720.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->XScale:F

    .line 124
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->YLength:F

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->YScale:F

    .line 126
    iget v7, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewWidth:I

    iget v8, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mViewHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->setMeasuredDimension(II)V

    .line 127
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->mChanged:Z

    .line 133
    return-void
.end method

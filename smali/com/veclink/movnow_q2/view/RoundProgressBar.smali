.class public Lcom/veclink/movnow_q2/view/RoundProgressBar;
.super Landroid/view/View;
.source "RoundProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/view/RoundProgressBar$RunCircleTask;
    }
.end annotation


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private handler:Landroid/os/Handler;

.field private mChanged:Z

.field private max:I

.field private mbgViewHeight:I

.field private mbgViewWidth:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private stopRun:Z

.field private style:I

.field private task:Ljava/util/TimerTask;

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/veclink/movnow_q2/view/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, -0xff0100

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v2, Lcom/veclink/movnow_q2/view/RoundProgressBar$1;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/view/RoundProgressBar$1;-><init>(Lcom/veclink/movnow_q2/view/RoundProgressBar;)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->handler:Landroid/os/Handler;

    .line 128
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    .line 131
    sget-object v2, Lcom/veclink/movnow/healthy_q2/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    .local v0, "mTypedArray":Landroid/content/res/TypedArray;
    const/high16 v2, -0x10000

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundColor:I

    .line 136
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundProgressColor:I

    .line 137
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->textColor:I

    .line 138
    const/4 v2, 0x4

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->textSize:F

    .line 139
    const/4 v2, 0x2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundWidth:F

    .line 140
    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->max:I

    .line 141
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->textIsDisplayable:Z

    .line 142
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->style:I

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 146
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0200f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mbgViewWidth:I

    .line 148
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mbgViewHeight:I

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/view/RoundProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/RoundProgressBar;

    .prologue
    .line 25
    iget v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I

    return v0
.end method

.method static synthetic access$002(Lcom/veclink/movnow_q2/view/RoundProgressBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/RoundProgressBar;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I

    return p1
.end method

.method static synthetic access$008(Lcom/veclink/movnow_q2/view/RoundProgressBar;)I
    .locals 2
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/RoundProgressBar;

    .prologue
    .line 25
    iget v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I

    return v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/view/RoundProgressBar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/RoundProgressBar;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->textSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 193
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mChanged:Z

    .line 194
    .local v10, "changed":Z
    if-eqz v10, :cond_0

    .line 195
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mChanged:Z

    .line 197
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->getWidth()I

    move-result v8

    .line 198
    .local v8, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->getHeight()I

    move-result v7

    .line 200
    .local v7, "availableHeight":I
    div-int/lit8 v17, v8, 0x2

    .line 201
    .local v17, "x":I
    div-int/lit8 v18, v7, 0x2

    .line 203
    .local v18, "y":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    .local v11, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 205
    .local v16, "w":I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 206
    .local v12, "h":I
    if-eqz v10, :cond_1

    .line 207
    div-int/lit8 v1, v16, 0x2

    sub-int v1, v17, v1

    div-int/lit8 v3, v12, 0x2

    sub-int v3, v18, v3

    div-int/lit8 v4, v16, 0x2

    add-int v4, v4, v17

    div-int/lit8 v5, v12, 0x2

    add-int v5, v5, v18

    invoke-virtual {v11, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 209
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->getWidth()I

    move-result v1

    div-int/lit8 v9, v1, 0x2

    .line 215
    .local v9, "centre":I
    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v14, v1

    .line 216
    .local v14, "radius":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundWidth:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    int-to-float v1, v9

    int-to-float v3, v9

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->textColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->textSize:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 229
    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->max:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v13, v1

    .line 230
    .local v13, "percent":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 232
    .local v15, "textWidth":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->textIsDisplayable:Z

    if-eqz v1, :cond_2

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->style:I

    if-nez v1, :cond_2

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v3, v9

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v15, v4

    sub-float/2addr v3, v4

    int-to-float v4, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->textSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 242
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundWidth:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundProgressColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    new-instance v2, Landroid/graphics/RectF;

    sub-int v1, v9, v14

    int-to-float v1, v1

    sub-int v3, v9, v14

    int-to-float v3, v3

    add-int v4, v9, v14

    int-to-float v4, v4

    add-int v5, v9, v14

    int-to-float v5, v5

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 247
    .local v2, "oval":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->style:I

    packed-switch v1, :pswitch_data_0

    .line 261
    :cond_3
    :goto_0
    return-void

    .line 249
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    const/high16 v3, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I

    mul-int/lit16 v1, v1, 0x168

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->max:I

    div-int/2addr v1, v4

    int-to-float v4, v1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 254
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I

    if-eqz v1, :cond_3

    .line 256
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I

    mul-int/lit16 v1, v1, 0x168

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->max:I

    div-int/2addr v1, v4

    int-to-float v4, v1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 159
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 160
    .local v7, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 161
    .local v8, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 162
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 164
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 165
    .local v0, "hScale":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 167
    .local v6, "vScale":F
    if-eqz v7, :cond_0

    iget v9, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mbgViewWidth:I

    if-ge v8, v9, :cond_0

    .line 169
    int-to-float v9, v8

    iget v10, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mbgViewWidth:I

    int-to-float v10, v10

    div-float v0, v9, v10

    .line 172
    :cond_0
    if-eqz v1, :cond_1

    iget v9, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mbgViewHeight:I

    if-ge v2, v9, :cond_1

    .line 174
    int-to-float v9, v2

    iget v10, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mbgViewHeight:I

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 177
    :cond_1
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 179
    .local v5, "scale":F
    iget v9, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mbgViewWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    invoke-static {v9, p1, v11}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->resolveSizeAndState(III)I

    move-result v9

    iget v10, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mbgViewHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v10, v10

    invoke-static {v10, p2, v11}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->resolveSizeAndState(III)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMeasuredDimension(II)V

    .line 184
    iget v9, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mbgViewWidth:I

    invoke-static {v9, p1}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->resolveSize(II)I

    move-result v4

    .line 185
    .local v4, "mViewWidth":I
    iget v9, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mbgViewHeight:I

    invoke-static {v9, p2}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->resolveSize(II)I

    move-result v3

    .line 186
    .local v3, "mViewHeight":I
    invoke-virtual {p0, v4, v3}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMeasuredDimension(II)V

    .line 187
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->mChanged:Z

    .line 155
    return-void
.end method

.method public setCricleColor(I)V
    .locals 0
    .param p1, "cricleColor"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundColor:I

    .line 313
    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0
    .param p1, "cricleProgressColor"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundProgressColor:I

    .line 321
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 273
    monitor-enter p0

    if-gez p1, :cond_0

    .line 274
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 276
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->max:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 293
    monitor-enter p0

    if-gez p1, :cond_0

    .line 294
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 296
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->max:I

    if-le p1, v0, :cond_1

    .line 297
    iget p1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->max:I

    .line 299
    :cond_1
    iget v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->max:I

    if-gt p1, v0, :cond_2

    .line 300
    iput p1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->progress:I

    .line 301
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0
    .param p1, "roundWidth"    # F

    .prologue
    .line 344
    iput p1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->roundWidth:F

    .line 345
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->textColor:I

    .line 329
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 336
    iput p1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->textSize:F

    .line 337
    return-void
.end method

.method public startRunCircle()V
    .locals 6

    .prologue
    .line 348
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->stopRunCircle()V

    .line 349
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 350
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->timer:Ljava/util/Timer;

    .line 351
    new-instance v0, Lcom/veclink/movnow_q2/view/RoundProgressBar$RunCircleTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/veclink/movnow_q2/view/RoundProgressBar$RunCircleTask;-><init>(Lcom/veclink/movnow_q2/view/RoundProgressBar;Lcom/veclink/movnow_q2/view/RoundProgressBar$1;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->task:Ljava/util/TimerTask;

    .line 352
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 353
    return-void
.end method

.method public stopRunCircle()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 357
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/RoundProgressBar;->timer:Ljava/util/Timer;

    .line 359
    return-void
.end method

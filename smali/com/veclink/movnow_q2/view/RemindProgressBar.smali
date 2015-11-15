.class public Lcom/veclink/movnow_q2/view/RemindProgressBar;
.super Landroid/view/View;
.source "RemindProgressBar.java"


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field public isRunningProgress:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private final mProgressTick:Ljava/lang/Runnable;

.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const-class v2, Lcom/veclink/movnow_q2/view/RemindProgressBar;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->TAG:Ljava/lang/String;

    .line 78
    new-instance v2, Lcom/veclink/movnow_q2/view/RemindProgressBar$1;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar$1;-><init>(Lcom/veclink/movnow_q2/view/RemindProgressBar;)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mProgressTick:Ljava/lang/Runnable;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    .line 99
    sget-object v2, Lcom/veclink/movnow/healthy_q2/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "mTypedArray":Landroid/content/res/TypedArray;
    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundColor:I

    .line 103
    const/4 v2, 0x1

    const v3, 0x7f08002f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundProgressColor:I

    .line 104
    const/4 v2, 0x3

    const v3, -0xff0100

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->textColor:I

    .line 105
    const/4 v2, 0x4

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->textSize:F

    .line 106
    const/4 v2, 0x2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundWidth:F

    .line 107
    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->max:I

    .line 108
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->textIsDisplayable:Z

    .line 109
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->style:I

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDial:Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDialWidth:I

    .line 113
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDialHeight:I

    .line 114
    iput v4, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->progress:I

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/view/RemindProgressBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/RemindProgressBar;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/view/RemindProgressBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/RemindProgressBar;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mProgressTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method private onDrawBackgroud(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->getWidth()I

    move-result v1

    .line 244
    .local v1, "availableWidth":I
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->getHeight()I

    move-result v0

    .line 246
    .local v0, "availableHeight":I
    div-int/lit8 v5, v1, 0x2

    .line 247
    .local v5, "x":I
    div-int/lit8 v6, v0, 0x2

    .line 249
    .local v6, "y":I
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDial:Landroid/graphics/drawable/Drawable;

    .line 250
    .local v2, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 251
    .local v4, "w":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 252
    .local v3, "h":I
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    return-void
.end method

.method private onTimeChanged()V
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->progress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->progress:I

    .line 135
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->progress:I

    iget v1, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->max:I

    if-le v0, v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->getId()I

    move-result v0

    const v1, 0x7f0600f1

    if-ne v0, v1, :cond_1

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->progress:I

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->invalidate()V

    .line 146
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->invalidate()V

    .line 141
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mProgressTick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->isRunningProgress:Z

    goto :goto_0
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->progress:I

    return v0
.end method

.method public getRoundWidth()F
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->textSize:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 121
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->onTimeChanged()V

    .line 122
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mProgressTick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->isRunningProgress:Z

    .line 124
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 129
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mProgressTick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->isRunningProgress:Z

    .line 131
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 189
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->onDrawBackgroud(Landroid/graphics/Canvas;)V

    .line 195
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 196
    .local v6, "centre":I
    int-to-float v0, v6

    iget v3, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundWidth:F

    div-float/2addr v3, v11

    sub-float/2addr v0, v3

    float-to-int v8, v0

    .line 197
    .local v8, "radius":I
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    int-to-float v0, v6

    int-to-float v3, v6

    int-to-float v5, v8

    iget-object v10, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 205
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->textColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->textSize:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 208
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 209
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->progress:I

    int-to-float v0, v0

    iget v3, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->max:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v7, v0

    .line 210
    .local v7, "percent":I
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 212
    .local v9, "textWidth":F
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->textIsDisplayable:Z

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->style:I

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v3, v6

    div-float v5, v9, v11

    sub-float/2addr v3, v5

    int-to-float v5, v6

    iget v10, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->textSize:F

    div-float/2addr v10, v11

    add-float/2addr v5, v10

    iget-object v10, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 222
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundProgressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    new-instance v1, Landroid/graphics/RectF;

    sub-int v0, v6, v8

    int-to-float v0, v0

    sub-int v3, v6, v8

    int-to-float v3, v3

    add-int v5, v6, v8

    int-to-float v5, v5

    add-int v10, v6, v8

    int-to-float v10, v10

    invoke-direct {v1, v0, v3, v5, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 226
    .local v1, "oval":Landroid/graphics/RectF;
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->style:I

    packed-switch v0, :pswitch_data_0

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->max:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->progress:I

    if-eqz v0, :cond_1

    .line 235
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->max:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 226
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

    .prologue
    const/4 v11, 0x0

    .line 164
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 165
    .local v7, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 166
    .local v8, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 167
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 168
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 169
    .local v0, "hScale":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 170
    .local v6, "vScale":F
    if-eqz v7, :cond_0

    iget v9, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDialWidth:I

    if-ge v8, v9, :cond_0

    .line 171
    int-to-float v9, v8

    iget v10, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDialWidth:I

    int-to-float v10, v10

    div-float v0, v9, v10

    .line 173
    :cond_0
    if-eqz v1, :cond_1

    iget v9, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDialHeight:I

    if-ge v2, v9, :cond_1

    .line 174
    int-to-float v9, v2

    iget v10, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDialHeight:I

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 177
    :cond_1
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 178
    .local v5, "scale":F
    iget v9, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDialWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    invoke-static {v9, p1, v11}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->resolveSizeAndState(III)I

    move-result v9

    iget v10, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDialHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v10, v10

    invoke-static {v10, p2, v11}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->resolveSizeAndState(III)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->setMeasuredDimension(II)V

    .line 180
    iget v9, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDialWidth:I

    invoke-static {v9, p1}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->resolveSize(II)I

    move-result v4

    .line 181
    .local v4, "mViewWidth":I
    iget v9, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mDialHeight:I

    invoke-static {v9, p2}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->resolveSize(II)I

    move-result v3

    .line 183
    .local v3, "mViewHeight":I
    invoke-virtual {p0, v4, v3}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->setMeasuredDimension(II)V

    .line 185
    return-void
.end method

.method public runFreshViewAgain()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->onTimeChanged()V

    .line 157
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mProgressTick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->isRunningProgress:Z

    .line 159
    return-void
.end method

.method public setCricleColor(I)V
    .locals 0
    .param p1, "cricleColor"    # I

    .prologue
    .line 306
    iput p1, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundColor:I

    .line 307
    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0
    .param p1, "cricleProgressColor"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundProgressColor:I

    .line 315
    return-void
.end method

.method public setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 266
    if-gez p1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iput p1, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->max:I

    .line 270
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 288
    if-gez p1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->max:I

    if-le p1, v0, :cond_1

    .line 292
    iget p1, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->max:I

    .line 294
    :cond_1
    iget v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->max:I

    if-gt p1, v0, :cond_2

    .line 295
    iput p1, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->progress:I

    .line 296
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->postInvalidate()V

    .line 299
    :cond_2
    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0
    .param p1, "roundWidth"    # F

    .prologue
    .line 338
    iput p1, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->roundWidth:F

    .line 339
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 322
    iput p1, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->textColor:I

    .line 323
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 330
    iput p1, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->textSize:F

    .line 331
    return-void
.end method

.method public stopFreshView()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->mProgressTick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/RemindProgressBar;->isRunningProgress:Z

    .line 152
    return-void
.end method

.class public Lcom/viewpagerindicator/LinePageIndicator;
.super Landroid/view/View;
.source "LinePageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/LinePageIndicator$1;,
        Lcom/viewpagerindicator/LinePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mGapWidth:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mLineWidth:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mPaintSelected:Landroid/graphics/Paint;

.field private final mPaintUnselected:Landroid/graphics/Paint;

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const v0, 0x7f010025

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    .line 44
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    .line 53
    const/high16 v10, -0x40800000    # -1.0f

    iput v10, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    .line 54
    const/4 v10, -0x1

    iput v10, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 68
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->isInEditMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 99
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 73
    .local v9, "res":Landroid/content/res/Resources;
    const v10, 0x7f08005c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 74
    .local v6, "defaultSelectedColor":I
    const v10, 0x7f08005d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 75
    .local v8, "defaultUnselectedColor":I
    const v10, 0x7f090051

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 76
    .local v5, "defaultLineWidth":F
    const v10, 0x7f090052

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 77
    .local v4, "defaultGapWidth":F
    const v10, 0x7f090053

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 78
    .local v7, "defaultStrokeWidth":F
    const v10, 0x7f070003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 81
    .local v3, "defaultCentered":Z
    sget-object v10, Lcom/veclink/movnow/healthy_q2/R$styleable;->LinePageIndicator:[I

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v10, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCentered:Z

    .line 84
    const/4 v10, 0x5

    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    .line 85
    const/4 v10, 0x6

    invoke-virtual {v0, v10, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/viewpagerindicator/LinePageIndicator;->mGapWidth:F

    .line 86
    const/4 v10, 0x3

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    invoke-virtual {p0, v10}, Lcom/viewpagerindicator/LinePageIndicator;->setStrokeWidth(F)V

    .line 87
    iget-object v10, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    const/4 v11, 0x4

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v10, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    const/4 v11, 0x2

    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 91
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 98
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v10

    iput v10, p0, Lcom/viewpagerindicator/LinePageIndicator;->mTouchSlop:I

    goto :goto_0
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 385
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 386
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 388
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 390
    int-to-float v0, v2

    .line 399
    .local v0, "result":F
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    return v3

    .line 393
    .end local v0    # "result":F
    :cond_1
    iget-object v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 395
    .restart local v0    # "result":F
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 396
    int-to-float v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 358
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 359
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 361
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 363
    :cond_0
    int-to-float v1, v3

    .line 373
    .local v1, "result":F
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    return v4

    .line 366
    .end local v1    # "result":F
    :cond_2
    iget-object v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 367
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v0

    iget v6, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/viewpagerindicator/LinePageIndicator;->mGapWidth:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 369
    .restart local v1    # "result":F
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 370
    int-to-float v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getGapWidth()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mGapWidth:F

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCentered:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 313
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 159
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    .line 165
    .local v6, "count":I
    if-eqz v6, :cond_0

    .line 169
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    if-lt v0, v6, :cond_2

    .line 170
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 174
    :cond_2
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->mGapWidth:F

    add-float v10, v0, v4

    .line 175
    .local v10, "lineWidthAndGap":F
    int-to-float v0, v6

    mul-float/2addr v0, v10

    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->mGapWidth:F

    sub-float v9, v0, v4

    .line 176
    .local v9, "indicatorWidth":F
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v13, v0

    .line 177
    .local v13, "paddingTop":F
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v0

    int-to-float v11, v0

    .line 178
    .local v11, "paddingLeft":F
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v0

    int-to-float v12, v0

    .line 180
    .local v12, "paddingRight":F
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v13

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v5

    add-float v2, v13, v0

    .line 181
    .local v2, "verticalOffset":F
    move v7, v11

    .line 182
    .local v7, "horizontalOffset":F
    iget-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCentered:Z

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v11

    sub-float/2addr v0, v12

    div-float/2addr v0, v5

    div-float v4, v9, v5

    sub-float/2addr v0, v4

    add-float/2addr v7, v0

    .line 187
    :cond_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 188
    int-to-float v0, v8

    mul-float/2addr v0, v10

    add-float v1, v7, v0

    .line 189
    .local v1, "dx1":F
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    add-float v3, v1, v0

    .line 190
    .local v3, "dx2":F
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    if-ne v8, v0, :cond_4

    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    :goto_2
    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 187
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 190
    :cond_4
    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/LinePageIndicator;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/LinePageIndicator;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setMeasuredDimension(II)V

    .line 347
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 320
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 327
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    .line 332
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 334
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 337
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 404
    move-object v0, p1

    check-cast v0, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    .line 405
    .local v0, "savedState":Lcom/viewpagerindicator/LinePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 406
    iget v1, v0, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    .line 407
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->requestLayout()V

    .line 408
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 412
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 413
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 414
    .local v0, "savedState":Lcom/viewpagerindicator/LinePageIndicator$SavedState;
    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->currentPage:I

    .line 415
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 196
    const/4 v12, 0x1

    .line 274
    :goto_0
    return v12

    .line 198
    :cond_0
    iget-object v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 199
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 203
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 274
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 205
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 210
    :pswitch_2
    iget v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 211
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 212
    .local v11, "x":F
    iget v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 214
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_4

    .line 215
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/viewpagerindicator/LinePageIndicator;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 216
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mIsDragging:Z

    .line 220
    :cond_4
    iget-boolean v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mIsDragging:Z

    if-eqz v12, :cond_3

    .line 221
    iput v11, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    .line 222
    iget-object v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 223
    :cond_5
    iget-object v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 232
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_9

    .line 233
    iget-object v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 234
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v10

    .line 235
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 236
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 238
    .local v9, "sixthWidth":F
    iget v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 239
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 240
    iget-object v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 242
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 243
    :cond_7
    iget v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 244
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 245
    iget-object v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 247
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 251
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mIsDragging:Z

    .line 252
    const/4 v12, -0x1

    iput v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 253
    iget-object v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 257
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 258
    .local v5, "index":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    .line 259
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 264
    .end local v5    # "index":I
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 265
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 266
    .local v7, "pointerId":I
    iget v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    if-ne v7, v12, :cond_a

    .line 267
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 268
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    .line 270
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 267
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .param p1, "centered"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCentered:Z

    .line 104
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 105
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 306
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mCurrentPage:I

    .line 307
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 308
    return-void
.end method

.method public setGapWidth(F)V
    .locals 0
    .param p1, "gapWidth"    # F

    .prologue
    .line 149
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mGapWidth:F

    .line 150
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 151
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .param p1, "lineWidth"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mLineWidth:F

    .line 131
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 132
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 342
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1
    .param p1, "selectedColor"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 123
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "lineHeight"    # F

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 142
    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 1
    .param p1, "unselectedColor"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 114
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 290
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 291
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 297
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/LinePageIndicator;->setCurrentItem(I)V

    .line 298
    return-void
.end method

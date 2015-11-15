.class public Lcom/viewpagerindicator/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/CirclePageIndicator$1;,
        Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const v0, 0x7f010023

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 79
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 52
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 53
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 65
    const/high16 v17, -0x40800000    # -1.0f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 66
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 117
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 84
    .local v16, "res":Landroid/content/res/Resources;
    const v17, 0x7f08005a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 85
    .local v11, "defaultPageColor":I
    const v17, 0x7f080059

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 86
    .local v9, "defaultFillColor":I
    const v17, 0x7f0a0005

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 87
    .local v10, "defaultOrientation":I
    const v17, 0x7f08005b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 88
    .local v14, "defaultStrokeColor":I
    const v17, 0x7f090050

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 89
    .local v15, "defaultStrokeWidth":F
    const v17, 0x7f09004f

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 90
    .local v12, "defaultRadius":F
    const v17, 0x7f070001

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 91
    .local v8, "defaultCentered":Z
    const v17, 0x7f070002

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 94
    .local v13, "defaultSnap":Z
    sget-object v17, Lcom/veclink/movnow/healthy_q2/R$styleable;->CirclePageIndicator:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 96
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/CirclePageIndicator;->mCentered:Z

    .line 97
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    .line 106
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    .line 108
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 109
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 110
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/viewpagerindicator/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 116
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v7}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/CirclePageIndicator;->mTouchSlop:I

    goto/16 :goto_0
.end method

.method private measureLong(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 465
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 466
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 468
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 470
    :cond_0
    move v1, v3

    .line 481
    .local v1, "result":I
    :cond_1
    :goto_0
    return v1

    .line 473
    .end local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 474
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 477
    .restart local v1    # "result":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 478
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 493
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 494
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 496
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 498
    move v0, v2

    .line 507
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 501
    .end local v0    # "result":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 503
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 504
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 402
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 208
    .local v3, "count":I
    if-eqz v3, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v3, :cond_2

    .line 213
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 221
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v12

    .line 223
    .local v12, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v11

    .line 224
    .local v11, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v10

    .line 225
    .local v10, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v15

    .line 233
    .local v15, "shortPaddingBefore":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    mul-float v16, v17, v18

    .line 234
    .local v16, "threeRadius":F
    int-to-float v0, v15

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v14, v17, v18

    .line 235
    .local v14, "shortOffset":F
    int-to-float v0, v11

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 236
    .local v9, "longOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mCentered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 237
    sub-int v17, v12, v11

    sub-int v17, v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    add-float v9, v9, v17

    .line 243
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    .line 244
    .local v13, "pageFillRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v13, v13, v17

    .line 249
    :cond_4
    const/4 v8, 0x0

    .local v8, "iLoop":I
    :goto_2
    if-ge v8, v3, :cond_9

    .line 250
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v7, v9, v17

    .line 251
    .local v7, "drawLong":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 252
    move v5, v7

    .line 253
    .local v5, "dX":F
    move v6, v14

    .line 259
    .local v6, "dY":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    if-lez v17, :cond_5

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v6, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    cmpl-float v17, v13, v17

    if-eqz v17, :cond_6

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 227
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    .end local v8    # "iLoop":I
    .end local v9    # "longOffset":F
    .end local v10    # "longPaddingAfter":I
    .end local v11    # "longPaddingBefore":I
    .end local v12    # "longSize":I
    .end local v13    # "pageFillRadius":F
    .end local v14    # "shortOffset":F
    .end local v15    # "shortPaddingBefore":I
    .end local v16    # "threeRadius":F
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getHeight()I

    move-result v12

    .line 228
    .restart local v12    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v11

    .line 229
    .restart local v11    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v10

    .line 230
    .restart local v10    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v15

    .restart local v15    # "shortPaddingBefore":I
    goto/16 :goto_1

    .line 255
    .restart local v7    # "drawLong":F
    .restart local v8    # "iLoop":I
    .restart local v9    # "longOffset":F
    .restart local v13    # "pageFillRadius":F
    .restart local v14    # "shortOffset":F
    .restart local v16    # "threeRadius":F
    :cond_8
    move v5, v14

    .line 256
    .restart local v5    # "dX":F
    move v6, v7

    .restart local v6    # "dY":F
    goto :goto_3

    .line 270
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnapPage:I

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v4, v17, v16

    .line 271
    .local v4, "cx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 272
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPageOffset:F

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v4, v4, v17

    .line 274
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 275
    add-float v5, v9, v4

    .line 276
    .restart local v5    # "dX":F
    move v6, v14

    .line 281
    .restart local v6    # "dY":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 270
    .end local v4    # "cx":F
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    goto :goto_4

    .line 278
    .restart local v4    # "cx":F
    :cond_c
    move v5, v14

    .line 279
    .restart local v5    # "dX":F
    add-float v6, v9, v4

    .restart local v6    # "dY":F
    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 449
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 450
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->measureShort(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->measureLong(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 406
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mScrollState:I

    .line 408
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 411
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 415
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 416
    iput p2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPageOffset:F

    .line 417
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 419
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 422
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_1

    .line 427
    :cond_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 428
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnapPage:I

    .line 429
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 435
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 512
    move-object v0, p1

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    .line 513
    .local v0, "savedState":Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 514
    iget v1, v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 515
    iget v1, v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnapPage:I

    .line 516
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    .line 517
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 521
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 522
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 523
    .local v0, "savedState":Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    .line 524
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 286
    const/4 v12, 0x1

    .line 364
    :goto_0
    return v12

    .line 288
    :cond_0
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 289
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 293
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 364
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 295
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 300
    :pswitch_2
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 301
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 302
    .local v11, "x":F
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 304
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_4

    .line 305
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 306
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    .line 310
    :cond_4
    iget-boolean v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-eqz v12, :cond_3

    .line 311
    iput v11, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 312
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 313
    :cond_5
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 322
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_9

    .line 323
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 324
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v10

    .line 325
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 326
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 328
    .local v9, "sixthWidth":F
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 329
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 330
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 332
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 333
    :cond_7
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 334
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 335
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 337
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 341
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    .line 342
    const/4 v12, -0x1

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 343
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 347
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 348
    .local v5, "index":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 349
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 354
    .end local v5    # "index":I
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 355
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 356
    .local v7, "pointerId":I
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    if-ne v7, v12, :cond_a

    .line 357
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 358
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 360
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 357
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 293
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
    .line 121
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCentered:Z

    .line 122
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 123
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 395
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 396
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 397
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 141
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 440
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    .line 152
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    .line 158
    return-void

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 132
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 183
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    .line 184
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 185
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    .line 193
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 194
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 167
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 174
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 176
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 375
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 379
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 380
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 386
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 387
    return-void
.end method

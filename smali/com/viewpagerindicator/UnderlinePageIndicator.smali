.class public Lcom/viewpagerindicator/UnderlinePageIndicator;
.super Landroid/view/View;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final FADE_FRAME_MS:I = 0x1e

.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCurrentPage:I

.field private mFadeBy:I

.field private mFadeDelay:I

.field private mFadeLength:I

.field private final mFadeRunnable:Ljava/lang/Runnable;

.field private mFades:Z

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPositionOffset:F

.field private mScrollState:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const v0, 0x7f010028

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    .line 58
    const/4 v8, -0x1

    iput v8, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 61
    new-instance v8, Lcom/viewpagerindicator/UnderlinePageIndicator$1;

    invoke-direct {v8, p0}, Lcom/viewpagerindicator/UnderlinePageIndicator$1;-><init>(Lcom/viewpagerindicator/UnderlinePageIndicator;)V

    iput-object v8, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    .line 84
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 111
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 89
    .local v7, "res":Landroid/content/res/Resources;
    const v8, 0x7f070005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 90
    .local v5, "defaultFades":Z
    const v8, 0x7f0a0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 91
    .local v3, "defaultFadeDelay":I
    const v8, 0x7f0a0009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 92
    .local v4, "defaultFadeLength":I
    const v8, 0x7f080061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 95
    .local v6, "defaultSelectedColor":I
    sget-object v8, Lcom/veclink/movnow/healthy_q2/R$styleable;->UnderlinePageIndicator:[I

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setFades(Z)V

    .line 98
    invoke-virtual {v0, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setSelectedColor(I)V

    .line 99
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setFadeDelay(I)V

    .line 100
    const/4 v8, 0x4

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setFadeLength(I)V

    .line 102
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 110
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v8

    iput v8, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mTouchSlop:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/viewpagerindicator/UnderlinePageIndicator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/viewpagerindicator/UnderlinePageIndicator;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFades:Z

    return v0
.end method

.method static synthetic access$100(Lcom/viewpagerindicator/UnderlinePageIndicator;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/viewpagerindicator/UnderlinePageIndicator;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/viewpagerindicator/UnderlinePageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/viewpagerindicator/UnderlinePageIndicator;

    .prologue
    .line 39
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeBy:I

    return v0
.end method

.method static synthetic access$300(Lcom/viewpagerindicator/UnderlinePageIndicator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/viewpagerindicator/UnderlinePageIndicator;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getFadeDelay()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeDelay:I

    return v0
.end method

.method public getFadeLength()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeLength:I

    return v0
.end method

.method public getFades()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFades:Z

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 308
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    .line 164
    .local v6, "count":I
    if-eqz v6, :cond_0

    .line 168
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    if-lt v0, v6, :cond_2

    .line 169
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingLeft()I

    move-result v7

    .line 174
    .local v7, "paddingLeft":I
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getWidth()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v9, v6

    mul-float/2addr v5, v9

    div-float v8, v0, v5

    .line 175
    .local v8, "pageWidth":F
    int-to-float v0, v7

    iget v5, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    int-to-float v5, v5

    iget v9, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPositionOffset:F

    add-float/2addr v5, v9

    mul-float/2addr v5, v8

    add-float v1, v0, v5

    .line 176
    .local v1, "left":F
    add-float v3, v1, v8

    .line 177
    .local v3, "right":F
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 178
    .local v2, "top":F
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v4, v0

    .line 179
    .local v4, "bottom":F
    iget-object v5, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mScrollState:I

    .line 314
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 317
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 321
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    .line 322
    iput p2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPositionOffset:F

    .line 323
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFades:Z

    if-eqz v0, :cond_0

    .line 324
    if-lez p3, :cond_2

    .line 325
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 331
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 333
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 336
    :cond_1
    return-void

    .line 327
    :cond_2
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/viewpagerindicator/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 340
    iget v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mScrollState:I

    if-nez v0, :cond_0

    .line 341
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPositionOffset:F

    .line 343
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 344
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 349
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 358
    move-object v0, p1

    check-cast v0, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;

    .line 359
    .local v0, "savedState":Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 360
    iget v1, v0, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    .line 361
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->requestLayout()V

    .line 362
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 366
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 367
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 368
    .local v0, "savedState":Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;
    iget v2, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/viewpagerindicator/UnderlinePageIndicator$SavedState;->currentPage:I

    .line 369
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 184
    const/4 v12, 0x1

    .line 262
    :goto_0
    return v12

    .line 186
    :cond_0
    iget-object v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 187
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 191
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 262
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 193
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 198
    :pswitch_2
    iget v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 199
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 200
    .local v11, "x":F
    iget v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 202
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_4

    .line 203
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 204
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    .line 208
    :cond_4
    iget-boolean v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    if-eqz v12, :cond_3

    .line 209
    iput v11, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    .line 210
    iget-object v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 211
    :cond_5
    iget-object v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 220
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_9

    .line 221
    iget-object v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 222
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->getWidth()I

    move-result v10

    .line 223
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 224
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 226
    .local v9, "sixthWidth":F
    iget v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 227
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 228
    iget-object v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 230
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 231
    :cond_7
    iget v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 232
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 233
    iget-object v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 235
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 239
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mIsDragging:Z

    .line 240
    const/4 v12, -0x1

    iput v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 241
    iget-object v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 245
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 246
    .local v5, "index":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    .line 247
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 252
    .end local v5    # "index":I
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 253
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 254
    .local v7, "pointerId":I
    iget v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    if-ne v7, v12, :cond_a

    .line 255
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 256
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    .line 258
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 255
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 191
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

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 301
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mCurrentPage:I

    .line 302
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 303
    return-void
.end method

.method public setFadeDelay(I)V
    .locals 0
    .param p1, "fadeDelay"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeDelay:I

    .line 136
    return-void
.end method

.method public setFadeLength(I)V
    .locals 2
    .param p1, "fadeLength"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeLength:I

    .line 144
    const/16 v0, 0xff

    iget v1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeLength:I

    div-int/lit8 v1, v1, 0x1e

    div-int/2addr v0, v1

    iput v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeBy:I

    .line 145
    return-void
.end method

.method public setFades(Z)V
    .locals 2
    .param p1, "fades"    # Z

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFades:Z

    if-eq p1, v0, :cond_0

    .line 119
    iput-boolean p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFades:Z

    .line 120
    if-eqz p1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 124
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 354
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1
    .param p1, "selectedColor"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 154
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 274
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 278
    iget-object v0, p0, Lcom/viewpagerindicator/UnderlinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 279
    invoke-virtual {p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    .line 280
    new-instance v0, Lcom/viewpagerindicator/UnderlinePageIndicator$2;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/UnderlinePageIndicator$2;-><init>(Lcom/viewpagerindicator/UnderlinePageIndicator;)V

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 292
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setCurrentItem(I)V

    .line 293
    return-void
.end method

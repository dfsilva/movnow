.class public Lcn/sharesdk/framework/gui/ViewPagerClassic;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:I

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/view/VelocityTracker;

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcn/sharesdk/framework/gui/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(IZ)V
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v1, v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getScrollX()I

    move-result v1

    if-eqz p2, :cond_2

    move v5, v2

    :goto_1
    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->invalidate()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, v4, 0x2

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/framework/gui/g;

    invoke-direct {v2, p0}, Lcn/sharesdk/framework/gui/g;-><init>(Lcn/sharesdk/framework/gui/ViewPagerClassic;)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->b:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->g:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->h:I

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->d:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->e:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v5, v0

    iget v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->g:I

    if-le v4, v0, :cond_3

    move v0, v1

    :goto_0
    iget v4, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->g:I

    if-le v5, v4, :cond_0

    move v2, v1

    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    iput v1, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    iput v3, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->d:F

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->i:Lcn/sharesdk/framework/gui/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->d:F

    sub-float/2addr v1, v0

    float-to-int v1, v1

    iput v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->d:F

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getScrollX()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getScrollX()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->scrollBy(II)V

    goto :goto_0

    :cond_2
    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getScrollX()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->scrollBy(II)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a(IZ)V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->i:Lcn/sharesdk/framework/gui/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->scrollTo(II)V

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->postInvalidate()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getWidth()I

    move-result v3

    div-int v0, v2, v3

    rem-int/2addr v2, v3

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    iget v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->i:Lcn/sharesdk/framework/gui/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->i:Lcn/sharesdk/framework/gui/f;

    iget v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/gui/f;->a(II)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->i:Lcn/sharesdk/framework/gui/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getDrawingTime()J

    move-result-wide v0

    iget v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    if-lez v2, :cond_2

    iget v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_2
    iget v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->i:Lcn/sharesdk/framework/gui/f;

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    if-lez v1, :cond_2

    iget v1, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2

    iget v1, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a(I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v3, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->d:F

    iput v3, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->e:F

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    :cond_4
    iput v1, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->i:Lcn/sharesdk/framework/gui/f;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildCount()I

    move-result v5

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v5, :cond_0

    invoke-virtual {p0, v1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    add-int v7, v0, v3

    invoke-virtual {v6, v0, v2, v7, v4}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->i:Lcn/sharesdk/framework/gui/f;

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/framework/utils/R;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-le v0, v1, :cond_3

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v5, v1}, Landroid/view/ViewGroup;->onMeasure(II)V

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_0

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->i:Lcn/sharesdk/framework/gui/f;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iput v3, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->d:F

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->h:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_6

    iget v3, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    if-lez v3, :cond_6

    iget v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a(I)V

    :goto_2
    iget-object v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->c:Landroid/view/VelocityTracker;

    :cond_5
    iput v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    goto :goto_1

    :cond_6
    const/16 v3, -0x1f4

    if-ge v2, v3, :cond_7

    iget v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_7

    iget v2, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->getScrollX()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    div-int v2, v3, v2

    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/gui/ViewPagerClassic;->a(I)V

    goto :goto_2

    :pswitch_3
    iput v0, p0, Lcn/sharesdk/framework/gui/ViewPagerClassic;->f:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

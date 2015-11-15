.class public Lcn/sharesdk/framework/gui/PullToRefreshView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Lcn/sharesdk/framework/gui/c;

.field private b:I

.field private c:I

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->a()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcn/sharesdk/framework/gui/d;

    invoke-direct {v0, p0}, Lcn/sharesdk/framework/gui/d;-><init>(Lcn/sharesdk/framework/gui/PullToRefreshView;)V

    iput-object v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->g:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/gui/PullToRefreshView;)V
    .locals 0

    invoke-direct {p0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->d()V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->h:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->e:Z

    iget-object v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->a:Lcn/sharesdk/framework/gui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->a:Lcn/sharesdk/framework/gui/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/gui/c;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/framework/gui/PullToRefreshView;)V
    .locals 0

    invoke-direct {p0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->e:Z

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    invoke-virtual {p0, v0, v0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->scrollTo(II)V

    iget-object v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->a:Lcn/sharesdk/framework/gui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->a:Lcn/sharesdk/framework/gui/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/gui/c;->c()V

    :cond_0
    return-void
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->a:Lcn/sharesdk/framework/gui/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/gui/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->d:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-boolean v1, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->e:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->d:F

    sub-float v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    iget v1, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    if-lez v1, :cond_4

    iget v1, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    neg-int v1, v1

    invoke-virtual {p0, v4, v1}, Lcn/sharesdk/framework/gui/PullToRefreshView;->scrollTo(II)V

    iget-boolean v1, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->e:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->a:Lcn/sharesdk/framework/gui/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->a:Lcn/sharesdk/framework/gui/c;

    iget v2, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->b:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/gui/c;->a(I)V

    :cond_2
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/gui/PullToRefreshView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_3
    :goto_1
    iput v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->d:F

    goto :goto_0

    :cond_4
    iput v4, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    invoke-virtual {p0, v4, v4}, Lcn/sharesdk/framework/gui/PullToRefreshView;->scrollTo(II)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->e:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    iget v1, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->b:I

    if-le v0, v1, :cond_6

    iget v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->b:I

    iput v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    iget v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    neg-int v0, v0

    invoke-virtual {p0, v4, v0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->scrollTo(II)V

    iget-object v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->a:Lcn/sharesdk/framework/gui/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->a:Lcn/sharesdk/framework/gui/c;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/gui/c;->a(I)V

    :cond_5
    invoke-direct {p0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->b()V

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/gui/PullToRefreshView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->d()V

    iget-object v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->a:Lcn/sharesdk/framework/gui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->a:Lcn/sharesdk/framework/gui/c;

    invoke-virtual {v0, v4}, Lcn/sharesdk/framework/gui/c;->a(I)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->b:I

    iput v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    iget v0, p0, Lcn/sharesdk/framework/gui/PullToRefreshView;->c:I

    neg-int v0, v0

    invoke-virtual {p0, v4, v0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->scrollTo(II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

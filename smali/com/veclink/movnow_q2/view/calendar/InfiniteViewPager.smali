.class public Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "InfiniteViewPager.java"


# static fields
.field public static final OFFSET:I = 0x3e8


# instance fields
.field private datesInMonth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private rowHeight:I

.field private sixWeeksInCalendar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->enabled:Z

    .line 38
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->sixWeeksInCalendar:Z

    .line 43
    iput v1, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->rowHeight:I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->enabled:Z

    .line 38
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->sixWeeksInCalendar:Z

    .line 43
    iput v1, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->rowHeight:I

    .line 74
    return-void
.end method


# virtual methods
.method public getDatesInMonth()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->datesInMonth:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->enabled:Z

    return v0
.end method

.method public isSixWeeksInCalendar()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->sixWeeksInCalendar:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/high16 v8, -0x80000000

    .line 115
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 117
    iget-object v7, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->datesInMonth:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v3, v7, 0x7

    .line 118
    .local v3, "rows":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    if-ne v7, v8, :cond_1

    const/4 v5, 0x1

    .line 119
    .local v5, "wrapHeight":Z
    :goto_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->getMeasuredHeight()I

    move-result v2

    .line 120
    .local v2, "height":I
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->rowHeight:I

    if-nez v7, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->getMeasuredWidth()I

    move-result v4

    .line 129
    .local v4, "width":I
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 134
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 135
    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "firstChild":Landroid/view/View;
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, p1, v6}, Landroid/view/View;->measure(II)V

    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 142
    div-int v6, v2, v3

    iput v6, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->rowHeight:I

    .line 146
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v4    # "width":I
    :cond_0
    const/4 v0, 0x0

    .line 148
    .local v0, "calHeight":I
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->sixWeeksInCalendar:Z

    if-eqz v6, :cond_2

    .line 149
    iget v6, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->rowHeight:I

    mul-int/lit8 v0, v6, 0x6

    .line 154
    :goto_1
    add-int/lit8 v0, v0, 0x3

    .line 155
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 156
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 157
    return-void

    .end local v0    # "calHeight":I
    .end local v2    # "height":I
    .end local v5    # "wrapHeight":Z
    :cond_1
    move v5, v6

    .line 118
    goto :goto_0

    .line 151
    .restart local v0    # "calHeight":I
    .restart local v2    # "height":I
    .restart local v5    # "wrapHeight":Z
    :cond_2
    iget v6, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->rowHeight:I

    mul-int v0, v6, v3

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 84
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setCurrentItem(I)V

    .line 85
    return-void
.end method

.method public setDatesInMonth(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "datesInMonth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhirondelle/date4j/DateTime;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->datesInMonth:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->enabled:Z

    .line 52
    return-void
.end method

.method public setSixWeeksInCalendar(Z)V
    .locals 1
    .param p1, "sixWeeksInCalendar"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->sixWeeksInCalendar:Z

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->rowHeight:I

    .line 69
    return-void
.end method

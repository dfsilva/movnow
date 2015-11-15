.class public Lcom/viewpagerindicator/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/TabPageIndicator$TabView;,
        Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;
    }
.end annotation


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/CharSequence;


# instance fields
.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field private final mTabClickListener:Landroid/view/View$OnClickListener;

.field private final mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

.field private mTabReselectedListener:Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, ""

    sput-object v0, Lcom/viewpagerindicator/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/viewpagerindicator/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/TabPageIndicator$1;-><init>(Lcom/viewpagerindicator/TabPageIndicator;)V

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 86
    new-instance v0, Lcom/viewpagerindicator/IcsLinearLayout;

    const v1, 0x7f010027

    invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    .line 87
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/viewpagerindicator/TabPageIndicator;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/viewpagerindicator/TabPageIndicator;)Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/viewpagerindicator/TabPageIndicator;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabReselectedListener:Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/viewpagerindicator/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/viewpagerindicator/TabPageIndicator;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/viewpagerindicator/TabPageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/viewpagerindicator/TabPageIndicator;

    .prologue
    .line 38
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I

    return v0
.end method

.method private addTab(ILjava/lang/CharSequence;I)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "iconResId"    # I

    .prologue
    const/4 v5, 0x0

    .line 154
    new-instance v0, Lcom/viewpagerindicator/TabPageIndicator$TabView;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;-><init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V

    .line 155
    .local v0, "tabView":Lcom/viewpagerindicator/TabPageIndicator$TabView;
    # setter for: Lcom/viewpagerindicator/TabPageIndicator$TabView;->mIndex:I
    invoke-static {v0, p1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->access$302(Lcom/viewpagerindicator/TabPageIndicator$TabView;I)I

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->setFocusable(Z)V

    .line 157
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {v0, p2}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    if-eqz p3, :cond_0

    .line 161
    invoke-virtual {v0, p3, v5, v5, v5}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lcom/viewpagerindicator/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-void
.end method

.method private animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 122
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v1, p1}, Lcom/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 126
    :cond_0
    new-instance v1, Lcom/viewpagerindicator/TabPageIndicator$2;

    invoke-direct {v1, p0, v0}, Lcom/viewpagerindicator/TabPageIndicator$2;-><init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    .line 133
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 7

    .prologue
    .line 207
    iget-object v6, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v6}, Lcom/viewpagerindicator/IcsLinearLayout;->removeAllViews()V

    .line 208
    iget-object v6, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 209
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    const/4 v3, 0x0

    .line 210
    .local v3, "iconAdapter":Lcom/viewpagerindicator/IconPagerAdapter;
    instance-of v6, v0, Lcom/viewpagerindicator/IconPagerAdapter;

    if-eqz v6, :cond_0

    move-object v3, v0

    .line 211
    check-cast v3, Lcom/viewpagerindicator/IconPagerAdapter;

    .line 213
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 214
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 215
    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 216
    .local v5, "title":Ljava/lang/CharSequence;
    if-nez v5, :cond_1

    .line 217
    sget-object v5, Lcom/viewpagerindicator/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    .line 219
    :cond_1
    const/4 v4, 0x0

    .line 220
    .local v4, "iconResId":I
    if-eqz v3, :cond_2

    .line 221
    invoke-interface {v3, v2}, Lcom/viewpagerindicator/IconPagerAdapter;->getIconResId(I)I

    move-result v4

    .line 223
    :cond_2
    invoke-direct {p0, v2, v5, v4}, Lcom/viewpagerindicator/TabPageIndicator;->addTab(ILjava/lang/CharSequence;I)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v4    # "iconResId":I
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_3
    iget v6, p0, Lcom/viewpagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    if-le v6, v1, :cond_4

    .line 226
    add-int/lit8 v6, v1, -0x1

    iput v6, p0, Lcom/viewpagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    .line 228
    :cond_4
    iget v6, p0, Lcom/viewpagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 229
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->requestLayout()V

    .line 230
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 139
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 143
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 148
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 97
    .local v4, "widthMode":I
    if-ne v4, v7, :cond_2

    move v1, v5

    .line 98
    .local v1, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setFillViewport(Z)V

    .line 100
    iget-object v6, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v6}, Lcom/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    .line 101
    .local v0, "childCount":I
    if-le v0, v5, :cond_4

    if-eq v4, v7, :cond_0

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    .line 102
    :cond_0
    const/4 v5, 0x2

    if-le v0, v5, :cond_3

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I

    .line 111
    :goto_1
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v3

    .line 112
    .local v3, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 113
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v2

    .line 115
    .local v2, "newWidth":I
    if-eqz v1, :cond_1

    if-eq v3, v2, :cond_1

    .line 117
    iget v5, p0, Lcom/viewpagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v5}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 119
    :cond_1
    return-void

    .line 97
    .end local v0    # "childCount":I
    .end local v1    # "lockedExpanded":Z
    .end local v2    # "newWidth":I
    .end local v3    # "oldWidth":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 105
    .restart local v0    # "childCount":I
    .restart local v1    # "lockedExpanded":Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_1

    .line 108
    :cond_4
    const/4 v5, -0x1

    iput v5, p0, Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 172
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 179
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 184
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 6
    .param p1, "item"    # I

    .prologue
    .line 240
    iget-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_0

    .line 241
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ViewPager has not been bound."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 243
    :cond_0
    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mSelectedTabIndex:I

    .line 244
    iget-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 246
    iget-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v4}, Lcom/viewpagerindicator/IcsLinearLayout;->getChildCount()I

    move-result v3

    .line 247
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 248
    iget-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabLayout:Lcom/viewpagerindicator/IcsLinearLayout;

    invoke-virtual {v4, v1}, Lcom/viewpagerindicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 250
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 251
    if-eqz v2, :cond_1

    .line 252
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->animateToTab(I)V

    .line 247
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "isSelected":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 255
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 260
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mTabReselectedListener:Lcom/viewpagerindicator/TabPageIndicator$OnTabReselectedListener;

    .line 92
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v1, p1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 198
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_2

    .line 199
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPager does not have adapter instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 202
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 203
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 235
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 236
    return-void
.end method

.class public Lcom/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;
.source "TitlePageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/TitlePageIndicator$1;,
        Lcom/viewpagerindicator/TitlePageIndicator$SavedState;,
        Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;,
        Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;,
        Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;
    }
.end annotation


# static fields
.field private static final BOLD_FADE_PERCENTAGE:F = 0.05f

.field private static final EMPTY_TITLE:Ljava/lang/String; = ""

.field private static final INVALID_POINTER:I = -0x1

.field private static final SELECTION_FADE_PERCENTAGE:F = 0.25f


# instance fields
.field private mActivePointerId:I

.field private mBoldText:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

.field private mClipPadding:F

.field private mColorSelected:I

.field private mColorText:I

.field private mCurrentPage:I

.field private mFooterIndicatorHeight:F

.field private mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field private mFooterIndicatorUnderlinePadding:F

.field private mFooterLineHeight:F

.field private mFooterPadding:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mLinePosition:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageOffset:F

.field private final mPaintFooterIndicator:Landroid/graphics/Paint;

.field private final mPaintFooterLine:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mScrollState:I

.field private mTitlePadding:F

.field private mTopPadding:F

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 157
    const v0, 0x7f010026

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 161
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 123
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    .line 127
    new-instance v25, Landroid/graphics/Path;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    .line 128
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    .line 129
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    .line 132
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    .line 145
    const/high16 v25, -0x40800000    # -1.0f

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 146
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->isInEditMode()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 217
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 166
    .local v23, "res":Landroid/content/res/Resources;
    const v25, 0x7f08005e

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 167
    .local v9, "defaultFooterColor":I
    const v25, 0x7f090055

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 168
    .local v13, "defaultFooterLineHeight":F
    const v25, 0x7f0a0006

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 169
    .local v11, "defaultFooterIndicatorStyle":I
    const v25, 0x7f090056

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 170
    .local v10, "defaultFooterIndicatorHeight":F
    const v25, 0x7f090057

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 171
    .local v12, "defaultFooterIndicatorUnderlinePadding":F
    const v25, 0x7f090058

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 172
    .local v14, "defaultFooterPadding":F
    const v25, 0x7f0a0007

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 173
    .local v15, "defaultLinePosition":I
    const v25, 0x7f08005f

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    .line 174
    .local v17, "defaultSelectedColor":I
    const v25, 0x7f070004

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 175
    .local v16, "defaultSelectedBold":Z
    const v25, 0x7f080060

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 176
    .local v18, "defaultTextColor":I
    const v25, 0x7f090059

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    .line 177
    .local v19, "defaultTextSize":F
    const v25, 0x7f09005a

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    .line 178
    .local v20, "defaultTitlePadding":F
    const v25, 0x7f090054

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 179
    .local v8, "defaultClipPadding":F
    const v25, 0x7f09005b

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    .line 182
    .local v21, "defaultTopPadding":F
    sget-object v25, Lcom/veclink/movnow/healthy_q2/R$styleable;->TitlePageIndicator:[I

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    move/from16 v3, p3

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 185
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v25, 0x6

    move/from16 v0, v25

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    .line 186
    const/16 v25, 0x7

    move/from16 v0, v25

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 187
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    .line 188
    const/16 v25, 0x9

    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    .line 189
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    .line 190
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;->fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLinePosition:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    .line 191
    const/16 v25, 0xe

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    .line 192
    const/16 v25, 0xd

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    .line 193
    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    .line 194
    const/16 v25, 0x3

    move/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    .line 195
    const/16 v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    .line 196
    const/16 v25, 0xc

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    .line 198
    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v24

    .line 199
    .local v24, "textSize":F
    const/16 v25, 0x5

    move/from16 v0, v25

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v22

    .line 200
    .local v22, "footerColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 209
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 210
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/viewpagerindicator/TitlePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 216
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v7}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTouchSlop:I

    goto/16 :goto_0
.end method

.method private calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "index"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 701
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 702
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 703
    .local v1, "title":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 704
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 705
    return-object v0
.end method

.method private calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 673
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v8, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 676
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v7

    .line 677
    .local v7, "width":I
    div-int/lit8 v3, v7, 0x2

    .line 678
    .local v3, "halfWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 679
    invoke-direct {p0, v4, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v0

    .line 680
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v8, v9

    .line 681
    .local v6, "w":I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v9

    .line 682
    .local v2, "h":I
    int-to-float v8, v3

    int-to-float v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    sub-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 683
    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 684
    const/4 v8, 0x0

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 685
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 686
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 689
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "h":I
    .end local v6    # "w":I
    :cond_0
    return-object v5
.end method

.method private clipViewOnTheLeft(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "curViewBound"    # Landroid/graphics/Rect;
    .param p2, "curViewWidth"    # F
    .param p3, "left"    # I

    .prologue
    .line 662
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 663
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 664
    return-void
.end method

.method private clipViewOnTheRight(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "curViewBound"    # Landroid/graphics/Rect;
    .param p2, "curViewWidth"    # F
    .param p3, "right"    # I

    .prologue
    .line 649
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 650
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 651
    return-void
.end method

.method private getTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 865
    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 866
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 867
    const-string v0, ""

    .line 869
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getClipPadding()F
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    return v0
.end method

.method public getFooterColor()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFooterIndicatorHeight()F
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    return v0
.end method

.method public getFooterIndicatorPadding()F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    return v0
.end method

.method public getFooterIndicatorStyle()Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public getFooterLineHeight()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    return v0
.end method

.method public getLinePosition()Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mLinePosition:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTitlePadding()F
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isSelectedBold()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 733
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 43
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 356
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v15

    .line 362
    .local v15, "count":I
    if-eqz v15, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_2

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 372
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/viewpagerindicator/TitlePageIndicator;->calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v12

    .line 373
    .local v12, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 376
    .local v13, "boundsSize":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    if-lt v4, v13, :cond_3

    .line 377
    add-int/lit8 v4, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 381
    :cond_3
    add-int/lit8 v16, v15, -0x1

    .line 382
    .local v16, "countMinusOne":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v24, v4, v6

    .line 383
    .local v24, "halfWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getLeft()I

    move-result v29

    .line 384
    .local v29, "left":I
    move/from16 v0, v29

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float v31, v4, v6

    .line 385
    .local v31, "leftClip":F
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v42

    .line 386
    .local v42, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getHeight()I

    move-result v25

    .line 387
    .local v25, "height":I
    add-int v35, v29, v42

    .line 388
    .local v35, "right":I
    move/from16 v0, v35

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    sub-float v37, v4, v6

    .line 390
    .local v37, "rightClip":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v34, v0

    .line 392
    .local v34, "page":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    float-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_7

    .line 393
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    move/from16 v33, v0

    .line 398
    .local v33, "offsetPercent":F
    :goto_1
    const/high16 v4, 0x3e800000    # 0.25f

    cmpg-float v4, v33, v4

    if-gtz v4, :cond_8

    const/16 v21, 0x1

    .line 399
    .local v21, "currentSelected":Z
    :goto_2
    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v4, v33, v4

    if-gtz v4, :cond_9

    const/16 v19, 0x1

    .line 400
    .local v19, "currentBold":Z
    :goto_3
    const/high16 v4, 0x3e800000    # 0.25f

    sub-float v4, v4, v33

    const/high16 v6, 0x3e800000    # 0.25f

    div-float v39, v4, v6

    .line 403
    .local v39, "selectedPercent":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Rect;

    .line 404
    .local v17, "curPageBound":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v18, v0

    .line 405
    .local v18, "curPageWidth":F
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v31

    if-gez v4, :cond_4

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;FI)V

    .line 409
    :cond_4
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v37

    if-lez v4, :cond_5

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;FI)V

    .line 415
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    if-lez v4, :cond_a

    .line 416
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v28, v4, -0x1

    .local v28, "i":I
    :goto_4
    if-ltz v28, :cond_a

    .line 417
    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 419
    .local v11, "bound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v31

    if-gez v4, :cond_6

    .line 420
    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int v41, v4, v6

    .line 422
    .local v41, "w":I
    move/from16 v0, v41

    int-to-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v11, v4, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;FI)V

    .line 424
    add-int/lit8 v4, v28, 0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/graphics/Rect;

    .line 426
    .local v36, "rightBound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v4, v6

    move-object/from16 v0, v36

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_6

    .line 427
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v41

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 428
    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v41

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 416
    .end local v36    # "rightBound":Landroid/graphics/Rect;
    .end local v41    # "w":I
    :cond_6
    add-int/lit8 v28, v28, -0x1

    goto :goto_4

    .line 395
    .end local v11    # "bound":Landroid/graphics/Rect;
    .end local v17    # "curPageBound":Landroid/graphics/Rect;
    .end local v18    # "curPageWidth":F
    .end local v19    # "currentBold":Z
    .end local v21    # "currentSelected":Z
    .end local v28    # "i":I
    .end local v33    # "offsetPercent":F
    .end local v39    # "selectedPercent":F
    :cond_7
    add-int/lit8 v34, v34, 0x1

    .line 396
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    sub-float v33, v4, v6

    .restart local v33    # "offsetPercent":F
    goto/16 :goto_1

    .line 398
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 399
    .restart local v21    # "currentSelected":Z
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 434
    .restart local v17    # "curPageBound":Landroid/graphics/Rect;
    .restart local v18    # "curPageWidth":F
    .restart local v19    # "currentBold":Z
    .restart local v39    # "selectedPercent":F
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v0, v16

    if-ge v4, v0, :cond_c

    .line 435
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v28, v4, 0x1

    .restart local v28    # "i":I
    :goto_5
    move/from16 v0, v28

    if-ge v0, v15, :cond_c

    .line 436
    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 438
    .restart local v11    # "bound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v37

    if-lez v4, :cond_b

    .line 439
    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int v41, v4, v6

    .line 441
    .restart local v41    # "w":I
    move/from16 v0, v41

    int-to-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v11, v4, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;FI)V

    .line 443
    add-int/lit8 v4, v28, -0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/graphics/Rect;

    .line 445
    .local v30, "leftBound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v4, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_b

    .line 446
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 447
    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v41

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 435
    .end local v30    # "leftBound":Landroid/graphics/Rect;
    .end local v41    # "w":I
    :cond_b
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 454
    .end local v11    # "bound":Landroid/graphics/Rect;
    .end local v28    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    ushr-int/lit8 v14, v4, 0x18

    .line 455
    .local v14, "colorTextAlpha":I
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_6
    move/from16 v0, v28

    if-ge v0, v15, :cond_14

    .line 457
    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 459
    .restart local v11    # "bound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->left:I

    move/from16 v0, v29

    if-le v4, v0, :cond_d

    iget v4, v11, Landroid/graphics/Rect;->left:I

    move/from16 v0, v35

    if-lt v4, v0, :cond_e

    :cond_d
    iget v4, v11, Landroid/graphics/Rect;->right:I

    move/from16 v0, v29

    if-le v4, v0, :cond_11

    iget v4, v11, Landroid/graphics/Rect;->right:I

    move/from16 v0, v35

    if-ge v4, v0, :cond_11

    .line 460
    :cond_e
    move/from16 v0, v28

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    const/16 v20, 0x1

    .line 461
    .local v20, "currentPage":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 464
    .local v5, "pageTitle":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    if-eqz v20, :cond_13

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    if-eqz v20, :cond_f

    if-eqz v21, :cond_f

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    int-to-float v6, v14

    mul-float v6, v6, v39

    float-to-int v6, v6

    sub-int v6, v14, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 474
    :cond_f
    add-int/lit8 v4, v13, -0x1

    move/from16 v0, v28

    if-ge v0, v4, :cond_10

    .line 475
    add-int/lit8 v4, v28, 0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/graphics/Rect;

    .line 477
    .restart local v36    # "rightBound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v4, v6

    move-object/from16 v0, v36

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_10

    .line 478
    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int v41, v4, v6

    .line 479
    .restart local v41    # "w":I
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v41

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 480
    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v41

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 483
    .end local v36    # "rightBound":Landroid/graphics/Rect;
    .end local v41    # "w":I
    :cond_10
    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v8, v4

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr v9, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 486
    if-eqz v20, :cond_11

    if-eqz v21, :cond_11

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    ushr-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    mul-float v6, v6, v39

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 489
    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v8, v4

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr v9, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 455
    .end local v5    # "pageTitle":Ljava/lang/CharSequence;
    .end local v20    # "currentPage":Z
    :cond_11
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    .line 460
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 464
    .restart local v5    # "pageTitle":Ljava/lang/CharSequence;
    .restart local v20    # "currentPage":Z
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 495
    .end local v5    # "pageTitle":Ljava/lang/CharSequence;
    .end local v11    # "bound":Landroid/graphics/Rect;
    .end local v20    # "currentPage":Z
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v23, v0

    .line 496
    .local v23, "footerLineHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v22, v0

    .line 497
    .local v22, "footerIndicatorLineHeight":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mLinePosition:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    sget-object v6, Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;->Top:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    if-ne v4, v6, :cond_15

    .line 498
    const/16 v25, 0x0

    .line 499
    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .line 500
    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    .line 504
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v23, v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v42

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v23, v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 510
    move/from16 v0, v25

    int-to-float v4, v0

    sub-float v26, v4, v23

    .line 511
    .local v26, "heightMinusLine":F
    sget-object v4, Lcom/viewpagerindicator/TitlePageIndicator$1;->$SwitchMap$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v6}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 513
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    sub-float v6, v26, v22

    move/from16 v0, v24

    invoke-virtual {v4, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    add-float v6, v24, v22

    move/from16 v0, v26

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    sub-float v6, v24, v22

    move/from16 v0, v26

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 522
    :pswitch_1
    if-eqz v21, :cond_0

    move/from16 v0, v34

    if-ge v0, v13, :cond_0

    .line 526
    move/from16 v0, v34

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/graphics/Rect;

    .line 527
    .local v40, "underlineBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v40

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    add-float v38, v4, v6

    .line 528
    .local v38, "rightPlusPadding":F
    move-object/from16 v0, v40

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    sub-float v32, v4, v6

    .line 529
    .local v32, "leftMinusPadding":F
    sub-float v27, v26, v22

    .line 531
    .local v27, "heightMinusLineMinusIndicator":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v6, v6, v39

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 794
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 798
    .local v3, "measuredWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 799
    .local v1, "heightSpecMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_1

    .line 801
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v0, v4

    .line 811
    .local v0, "height":F
    :cond_0
    :goto_0
    float-to-int v2, v0

    .line 813
    .local v2, "measuredHeight":I
    invoke-virtual {p0, v3, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    .line 814
    return-void

    .line 804
    .end local v0    # "height":F
    .end local v2    # "measuredHeight":I
    :cond_1
    iget-object v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 805
    iget-object v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 806
    iget-object v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float v0, v4, v5

    .line 807
    .restart local v0    # "height":F
    iget-object v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    sget-object v5, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    if-eq v4, v5, :cond_0

    .line 808
    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    add-float/2addr v0, v4

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 756
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    .line 758
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 761
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 765
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 766
    iput p2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    .line 767
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 769
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 772
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 776
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    if-nez v0, :cond_0

    .line 777
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 778
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 784
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 818
    move-object v0, p1

    check-cast v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    .line 819
    .local v0, "savedState":Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 820
    iget v1, v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 821
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    .line 822
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 826
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 827
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 828
    .local v0, "savedState":Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    .line 829
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 546
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 547
    const/16 v17, 0x1

    .line 637
    :goto_0
    return v17

    .line 549
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v17

    if-nez v17, :cond_2

    .line 550
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 553
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    .line 554
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 637
    :cond_3
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 556
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 557
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 561
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 562
    .local v3, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 563
    .local v16, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v5, v16, v17

    .line 565
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 566
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 567
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    .line 571
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 572
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 574
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto/16 :goto_1

    .line 583
    .end local v3    # "activePointerIndex":I
    .end local v5    # "deltaX":F
    .end local v16    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    .line 585
    .local v4, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v15

    .line 586
    .local v15, "width":I
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v17, v18

    .line 587
    .local v7, "halfWidth":F
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x40c00000    # 6.0f

    div-float v14, v17, v18

    .line 588
    .local v14, "sixthWidth":F
    sub-float v9, v7, v14

    .line 589
    .local v9, "leftThird":F
    add-float v13, v7, v14

    .line 590
    .local v13, "rightThird":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 592
    .local v6, "eventX":F
    cmpg-float v17, v6, v9

    if-gez v17, :cond_7

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    if-lez v17, :cond_a

    .line 594
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_6

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 597
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 599
    :cond_7
    cmpl-float v17, v6, v13

    if-lez v17, :cond_9

    .line 600
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 601
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_8

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 604
    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 608
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_a

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;->onCenterItemClick(I)V

    .line 614
    .end local v4    # "count":I
    .end local v6    # "eventX":F
    .end local v7    # "halfWidth":F
    .end local v9    # "leftThird":F
    .end local v13    # "rightThird":F
    .end local v14    # "sixthWidth":F
    .end local v15    # "width":I
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    .line 615
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 620
    :pswitch_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 621
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 622
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 627
    .end local v8    # "index":I
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v12

    .line 628
    .local v12, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 629
    .local v11, "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v11, v0, :cond_b

    .line 630
    if-nez v12, :cond_c

    const/4 v10, 0x1

    .line 631
    .local v10, "newPointerIndex":I
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 633
    .end local v10    # "newPointerIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 630
    :cond_c
    const/4 v10, 0x0

    goto :goto_2

    .line 554
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

.method public setClipPadding(F)V
    .locals 0
    .param p1, "clipPadding"    # F

    .prologue
    .line 336
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    .line 337
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 338
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 746
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 750
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 751
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 752
    return-void
.end method

.method public setFooterColor(I)V
    .locals 1
    .param p1, "footerColor"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 228
    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .locals 0
    .param p1, "footerTriangleHeight"    # F

    .prologue
    .line 245
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    .line 246
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 247
    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .locals 0
    .param p1, "footerIndicatorPadding"    # F

    .prologue
    .line 254
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    .line 255
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 256
    return-void
.end method

.method public setFooterIndicatorStyle(Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;)V
    .locals 0
    .param p1, "indicatorStyle"    # Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 264
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 265
    return-void
.end method

.method public setFooterLineHeight(F)V
    .locals 2
    .param p1, "footerLineHeight"    # F

    .prologue
    .line 235
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    .line 236
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 238
    return-void
.end method

.method public setLinePosition(Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;)V
    .locals 0
    .param p1, "linePosition"    # Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mLinePosition:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    .line 273
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 274
    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    .line 742
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 789
    return-void
.end method

.method public setSelectedBold(Z)V
    .locals 0
    .param p1, "selectedBold"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    .line 291
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 292
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1, "selectedColor"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    .line 282
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 283
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    .line 301
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 302
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .prologue
    .line 309
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 310
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 311
    return-void
.end method

.method public setTitlePadding(F)V
    .locals 0
    .param p1, "titlePadding"    # F

    .prologue
    .line 318
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    .line 319
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 320
    return-void
.end method

.method public setTopPadding(F)V
    .locals 0
    .param p1, "topPadding"    # F

    .prologue
    .line 327
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    .line 328
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 329
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 342
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 343
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 722
    :goto_0
    return-void

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 716
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 717
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 720
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 721
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 727
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    .line 728
    return-void
.end method

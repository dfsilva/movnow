.class Lcom/veclink/waterfall/views/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/waterfall/views/FastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static MIN_PAGES:I = 0x0

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2


# instance fields
.field private mChangedBounds:Z

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mItemCount:I

.field private mList:Lcom/veclink/waterfall/views/StaggeredGridView;

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mListOffset:I

.field private mLongList:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlaySize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/veclink/waterfall/views/FastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbW:I

.field private mThumbY:I

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x4

    sput v0, Lcom/veclink/waterfall/views/FastScroller;->MIN_PAGES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/veclink/waterfall/views/StaggeredGridView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mItemCount:I

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p2, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    .line 89
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/views/FastScroller;->init(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/waterfall/views/FastScroller;)Lcom/veclink/waterfall/views/StaggeredGridView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/FastScroller;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 377
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 378
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v0, v8}, Lcom/veclink/waterfall/views/StaggeredGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 379
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 380
    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    .line 268
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 269
    .local v0, "adapter":Landroid/widget/Adapter;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 271
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 272
    check-cast v1, Landroid/widget/ListAdapter;

    iput-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mListAdapter:Landroid/widget/ListAdapter;

    .line 273
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 274
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mSections:[Ljava/lang/Object;

    .line 281
    :goto_0
    return-void

    .line 277
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    check-cast v0, Landroid/widget/ListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mListAdapter:Landroid/widget/ListAdapter;

    .line 278
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, " "

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, "res":Landroid/content/res/Resources;
    const v4, 0x7f02012b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/veclink/waterfall/views/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 138
    const v4, 0x7f020063

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    iput-boolean v6, p0, Lcom/veclink/waterfall/views/FastScroller;->mScrollCompleted:Z

    .line 142
    invoke-direct {p0}, Lcom/veclink/waterfall/views/FastScroller;->getSectionsFromIndexer()V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlaySize:I

    .line 145
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 146
    new-instance v4, Lcom/veclink/waterfall/views/FastScroller$ScrollFade;

    invoke-direct {v4, p0}, Lcom/veclink/waterfall/views/FastScroller$ScrollFade;-><init>(Lcom/veclink/waterfall/views/FastScroller;)V

    iput-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mScrollFade:Lcom/veclink/waterfall/views/FastScroller$ScrollFade;

    .line 147
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mPaint:Landroid/graphics/Paint;

    .line 148
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 150
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlaySize:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v5, v6, [I

    const v6, 0x1010036

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 152
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 153
    .local v2, "textColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 154
    .local v3, "textColorNormal":I
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iput v7, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    .line 158
    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    .line 119
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWidth()I

    move-result v0

    .line 122
    .local v0, "viewWidth":I
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 124
    return-void
.end method

.method private scrollTo(F)V
    .locals 20
    .param p1, "position"    # F

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/veclink/waterfall/views/StaggeredGridView;->getCount()I

    move-result v2

    .line 285
    .local v2, "count":I
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/waterfall/views/FastScroller;->mScrollCompleted:Z

    .line 286
    const/high16 v18, 0x3f800000    # 1.0f

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41000000    # 8.0f

    div-float v6, v18, v19

    .line 287
    .local v6, "fThreshold":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 289
    .local v16, "sections":[Ljava/lang/Object;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    .line 290
    move-object/from16 v0, v16

    array-length v8, v0

    .line 291
    .local v8, "nSections":I
    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v14, v0

    .line 292
    .local v14, "section":I
    if-lt v14, v8, :cond_0

    .line 293
    add-int/lit8 v14, v8, -0x1

    .line 295
    :cond_0
    move v3, v14

    .line 296
    .local v3, "exactSection":I
    move v15, v14

    .line 297
    .local v15, "sectionIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 304
    .local v7, "index":I
    move v9, v2

    .line 305
    .local v9, "nextIndex":I
    move v12, v7

    .line 306
    .local v12, "prevIndex":I
    move v13, v14

    .line 307
    .local v13, "prevSection":I
    add-int/lit8 v11, v14, 0x1

    .line 309
    .local v11, "nextSection":I
    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 314
    :cond_1
    if-ne v9, v7, :cond_3

    .line 316
    :cond_2
    if-lez v14, :cond_3

    .line 317
    add-int/lit8 v14, v14, -0x1

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 319
    if-eq v12, v7, :cond_4

    .line 320
    move v13, v14

    .line 321
    move v15, v14

    .line 338
    :cond_3
    :goto_0
    add-int/lit8 v10, v11, 0x1

    .line 339
    .local v10, "nextNextSection":I
    :goto_1
    if-ge v10, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v9, :cond_5

    .line 340
    add-int/lit8 v10, v10, 0x1

    .line 341
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 323
    .end local v10    # "nextNextSection":I
    :cond_4
    if-nez v14, :cond_2

    .line 328
    const/4 v15, 0x0

    .line 329
    goto :goto_0

    .line 346
    .restart local v10    # "nextNextSection":I
    :cond_5
    int-to-float v0, v13

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v5, v18, v19

    .line 347
    .local v5, "fPrev":F
    int-to-float v0, v11

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v4, v18, v19

    .line 348
    .local v4, "fNext":F
    if-ne v13, v3, :cond_8

    sub-float v18, p1, v5

    cmpg-float v18, v18, v6

    if-gez v18, :cond_8

    .line 349
    move v7, v12

    .line 354
    :goto_2
    add-int/lit8 v18, v2, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_6

    .line 355
    add-int/lit8 v7, v2, -0x1

    .line 357
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/FastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/veclink/waterfall/views/StaggeredGridView;->setSelection(I)V

    .line 367
    .end local v3    # "exactSection":I
    .end local v4    # "fNext":F
    .end local v5    # "fPrev":F
    .end local v8    # "nSections":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v13    # "prevSection":I
    .end local v14    # "section":I
    :goto_3
    if-ltz v15, :cond_b

    .line 368
    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/veclink/waterfall/views/FastScroller;->mSectionText:Ljava/lang/String;

    .line 369
    .local v17, "text":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    :cond_7
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_a

    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/waterfall/views/FastScroller;->mDrawOverlay:Z

    .line 373
    .end local v17    # "text":Ljava/lang/String;
    :goto_5
    return-void

    .line 351
    .restart local v3    # "exactSection":I
    .restart local v4    # "fNext":F
    .restart local v5    # "fPrev":F
    .restart local v8    # "nSections":I
    .restart local v9    # "nextIndex":I
    .restart local v10    # "nextNextSection":I
    .restart local v11    # "nextSection":I
    .restart local v12    # "prevIndex":I
    .restart local v13    # "prevSection":I
    .restart local v14    # "section":I
    :cond_8
    sub-int v18, v9, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, p1, v5

    mul-float v18, v18, v19

    sub-float v19, v4, v5

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v7, v12, v18

    goto :goto_2

    .line 360
    .end local v3    # "exactSection":I
    .end local v4    # "fNext":F
    .end local v5    # "fPrev":F
    .end local v7    # "index":I
    .end local v8    # "nSections":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextSection":I
    .end local v12    # "prevIndex":I
    .end local v13    # "prevSection":I
    .end local v14    # "section":I
    .end local v15    # "sectionIndex":I
    :cond_9
    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v7, v0

    .line 362
    .restart local v7    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/FastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/veclink/waterfall/views/StaggeredGridView;->setSelection(I)V

    .line 364
    const/4 v15, -0x1

    .restart local v15    # "sectionIndex":I
    goto :goto_3

    .line 369
    .restart local v17    # "text":Ljava/lang/String;
    :cond_a
    const/16 v18, 0x0

    goto :goto_4

    .line 371
    .end local v17    # "text":Ljava/lang/String;
    :cond_b
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/veclink/waterfall/views/FastScroller;->mDrawOverlay:Z

    goto :goto_5
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 127
    iput-object p2, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbW:I

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mChangedBounds:Z

    .line 131
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 170
    iget v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    if-nez v8, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v7, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbY:I

    .line 176
    .local v7, "y":I
    iget-object v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v8}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWidth()I

    move-result v6

    .line 177
    .local v6, "viewWidth":I
    iget-object v5, p0, Lcom/veclink/waterfall/views/FastScroller;->mScrollFade:Lcom/veclink/waterfall/views/FastScroller$ScrollFade;

    .line 179
    .local v5, "scrollFade":Lcom/veclink/waterfall/views/FastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 180
    .local v0, "alpha":I
    iget v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    if-ne v8, v12, :cond_3

    .line 181
    invoke-virtual {v5}, Lcom/veclink/waterfall/views/FastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 182
    const/16 v8, 0x68

    if-ge v0, v8, :cond_2

    .line 183
    iget-object v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v9, v0, 0x2

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 185
    :cond_2
    iget v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbW:I

    mul-int/2addr v8, v0

    div-int/lit16 v8, v8, 0xd0

    sub-int v2, v6, v8

    .line 186
    .local v2, "left":I
    iget-object v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    invoke-virtual {v8, v2, v11, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mChangedBounds:Z

    .line 190
    .end local v2    # "left":I
    :cond_3
    int-to-float v8, v7

    invoke-virtual {p1, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    iget-object v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 192
    neg-int v8, v7

    int-to-float v8, v8

    invoke-virtual {p1, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    iget v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    iget-boolean v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mDrawOverlay:Z

    if-eqz v8, :cond_4

    .line 196
    iget-object v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    iget-object v3, p0, Lcom/veclink/waterfall/views/FastScroller;->mPaint:Landroid/graphics/Paint;

    .line 198
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v1

    .line 199
    .local v1, "descent":F
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 200
    .local v4, "rectF":Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mSectionText:Ljava/lang/String;

    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    iget v11, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    div-int/lit8 v10, v10, 0x2

    iget v11, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlaySize:I

    div-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    int-to-float v10, v10

    sub-float/2addr v10, v1

    invoke-virtual {p1, v8, v9, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 202
    .end local v1    # "descent":F
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "rectF":Landroid/graphics/RectF;
    :cond_4
    iget v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    if-ne v8, v12, :cond_0

    .line 203
    if-nez v0, :cond_5

    .line 204
    invoke-virtual {p0, v11}, Lcom/veclink/waterfall/views/FastScroller;->setState(I)V

    goto :goto_0

    .line 206
    :cond_5
    iget-object v8, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    iget v9, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbW:I

    sub-int v9, v6, v9

    iget v10, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    add-int/2addr v10, v7

    invoke-virtual {v8, v9, v7, v6, v10}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidate(IIII)V

    goto/16 :goto_0
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/veclink/waterfall/views/FastScroller;->getSectionsFromIndexer()V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    return v0
.end method

.method isPointInside(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 454
    iget-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbW:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbY:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbY:I

    iget v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 383
    iget v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/veclink/waterfall/views/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/FastScroller;->setState(I)V

    .line 386
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Lcom/veclink/waterfall/views/StaggeredGridView;III)V
    .locals 5
    .param p1, "view"    # Lcom/veclink/waterfall/views/StaggeredGridView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    iget v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mItemCount:I

    if-eq v0, p4, :cond_0

    if-lez p3, :cond_0

    .line 229
    iput p4, p0, Lcom/veclink/waterfall/views/FastScroller;->mItemCount:I

    .line 230
    iget v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mItemCount:I

    div-int/2addr v0, p3

    sget v3, Lcom/veclink/waterfall/views/FastScroller;->MIN_PAGES:I

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mLongList:Z

    .line 232
    :cond_0
    iget-boolean v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mLongList:Z

    if-nez v0, :cond_3

    .line 233
    iget v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0, v2}, Lcom/veclink/waterfall/views/FastScroller;->setState(I)V

    .line 254
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 230
    goto :goto_0

    .line 238
    :cond_3
    sub-int v0, p4, p3

    if-lez v0, :cond_4

    iget v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    if-eq v0, v4, :cond_4

    .line 239
    iget-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    sub-int/2addr v0, v3

    mul-int/2addr v0, p2

    sub-int v3, p4, p3

    div-int/2addr v0, v3

    iput v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbY:I

    .line 240
    iget-boolean v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_4

    .line 241
    invoke-direct {p0}, Lcom/veclink/waterfall/views/FastScroller;->resetThumbPos()V

    .line 242
    iput-boolean v2, p0, Lcom/veclink/waterfall/views/FastScroller;->mChangedBounds:Z

    .line 245
    :cond_4
    iput-boolean v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mScrollCompleted:Z

    .line 246
    iget v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mVisibleItem:I

    if-eq p2, v0, :cond_1

    .line 249
    iput p2, p0, Lcom/veclink/waterfall/views/FastScroller;->mVisibleItem:I

    .line 250
    iget v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    if-eq v0, v4, :cond_1

    .line 251
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/FastScroller;->setState(I)V

    .line 252
    iget-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mScrollFade:Lcom/veclink/waterfall/views/FastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbW:I

    sub-int v2, p1, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 216
    .local v0, "pos":Landroid/graphics/RectF;
    iget v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlaySize:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 217
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 218
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 219
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 220
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 393
    iget v6, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    if-nez v6, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v4

    .line 397
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 399
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/veclink/waterfall/views/FastScroller;->isPointInside(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 401
    invoke-virtual {p0, v8}, Lcom/veclink/waterfall/views/FastScroller;->setState(I)V

    .line 402
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    if-eqz v4, :cond_2

    .line 403
    invoke-direct {p0}, Lcom/veclink/waterfall/views/FastScroller;->getSectionsFromIndexer()V

    .line 405
    :cond_2
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    if-eqz v4, :cond_3

    .line 406
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v4, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->requestDisallowInterceptTouchEvent(Z)V

    .line 407
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v4, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->reportScrollStateChange(I)V

    .line 410
    :cond_3
    invoke-direct {p0}, Lcom/veclink/waterfall/views/FastScroller;->cancelFling()V

    move v4, v5

    .line 411
    goto :goto_0

    .line 413
    :cond_4
    if-ne v0, v5, :cond_6

    .line 415
    iget v6, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    if-ne v6, v8, :cond_0

    .line 416
    iget-object v6, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    if-eqz v6, :cond_5

    .line 420
    iget-object v6, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v6, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->requestDisallowInterceptTouchEvent(Z)V

    .line 421
    iget-object v6, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v6, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->reportScrollStateChange(I)V

    .line 423
    :cond_5
    invoke-virtual {p0, v7}, Lcom/veclink/waterfall/views/FastScroller;->setState(I)V

    .line 424
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mHandler:Landroid/os/Handler;

    .line 425
    .local v1, "handler":Landroid/os/Handler;
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mScrollFade:Lcom/veclink/waterfall/views/FastScroller$ScrollFade;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mScrollFade:Lcom/veclink/waterfall/views/FastScroller$ScrollFade;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v4, v5

    .line 427
    goto :goto_0

    .line 429
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_6
    if-ne v0, v7, :cond_0

    .line 430
    iget v6, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    if-ne v6, v8, :cond_0

    .line 431
    iget-object v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHeight()I

    move-result v3

    .line 433
    .local v3, "viewHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v6, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    sub-int/2addr v4, v6

    add-int/lit8 v2, v4, 0xa

    .line 434
    .local v2, "newThumbY":I
    if-gez v2, :cond_8

    .line 435
    const/4 v2, 0x0

    .line 439
    :cond_7
    :goto_1
    iget v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbY:I

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v7, :cond_9

    move v4, v5

    .line 440
    goto :goto_0

    .line 436
    :cond_8
    iget v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    add-int/2addr v4, v2

    if-le v4, v3, :cond_7

    .line 437
    iget v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    sub-int v2, v3, v4

    goto :goto_1

    .line 442
    :cond_9
    iput v2, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbY:I

    .line 444
    iget-boolean v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mScrollCompleted:Z

    if-eqz v4, :cond_a

    .line 445
    iget v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbY:I

    int-to-float v4, v4

    iget v6, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-direct {p0, v4}, Lcom/veclink/waterfall/views/FastScroller;->scrollTo(F)V

    :cond_a
    move v4, v5

    .line 447
    goto/16 :goto_0
.end method

.method public setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 111
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    .line 112
    return-void

    .line 95
    :pswitch_1
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/veclink/waterfall/views/FastScroller;->mScrollFade:Lcom/veclink/waterfall/views/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidate()V

    goto :goto_0

    .line 99
    :pswitch_2
    iget v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/veclink/waterfall/views/FastScroller;->resetThumbPos()V

    .line 104
    :cond_0
    :pswitch_3
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/veclink/waterfall/views/FastScroller;->mScrollFade:Lcom/veclink/waterfall/views/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWidth()I

    move-result v0

    .line 108
    .local v0, "viewWidth":I
    iget-object v1, p0, Lcom/veclink/waterfall/views/FastScroller;->mList:Lcom/veclink/waterfall/views/StaggeredGridView;

    iget v2, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbY:I

    iget v4, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbY:I

    iget v5, p0, Lcom/veclink/waterfall/views/FastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidate(IIII)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method stop()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/FastScroller;->setState(I)V

    .line 162
    return-void
.end method

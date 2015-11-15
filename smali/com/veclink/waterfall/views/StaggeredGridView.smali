.class public Lcom/veclink/waterfall/views/StaggeredGridView;
.super Landroid/view/ViewGroup;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/waterfall/views/StaggeredGridView$OnItemLongClickListener;,
        Lcom/veclink/waterfall/views/StaggeredGridView$OnItemClickListener;,
        Lcom/veclink/waterfall/views/StaggeredGridView$AdapterContextMenuInfo;,
        Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;,
        Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;,
        Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;,
        Lcom/veclink/waterfall/views/StaggeredGridView$SelectionBoundsAdjuster;,
        Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;,
        Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;,
        Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;,
        Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;,
        Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;,
        Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;,
        Lcom/veclink/waterfall/views/StaggeredGridView$OnScrollListener;,
        Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    }
.end annotation


# static fields
.field public static final COLUMN_COUNT_AUTO:I = -0x1

.field private static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final TAG:Ljava/lang/String; = "StaggeredGridView"

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x5

.field private static final TOUCH_MODE_DOWN:I = 0x3

.field private static final TOUCH_MODE_DRAGGING:I = 0x1

.field private static final TOUCH_MODE_FLINGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final TOUCH_MODE_REST:I = 0x6

.field private static final TOUCH_MODE_TAP:I = 0x4


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAreAllItemsSelectable:Z

.field private mBeginClick:Z

.field private final mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mColCount:I

.field private mColCountSetting:I

.field private mColMappings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mColWidth:I

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDataChanged:Z

.field mDrawSelectorOnTop:Z

.field private mFastChildLayout:Z

.field private mFastScrollEnabled:Z

.field private mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

.field private mFirstAdapterId:J

.field private mFirstPosition:I

.field private mFlingVelocity:I

.field private mHasStableIds:Z

.field private mInLayout:Z

.field private mIsChildViewEnabled:Z

.field private mItemBottoms:[I

.field private mItemCount:I

.field private mItemTops:[I

.field private mLastScrollState:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field mLayoutMode:I

.field private final mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMaximumVelocity:I

.field private mMinColWidth:I

.field private mMotionPosition:I

.field mNextSelectedPosition:I

.field mNextSelectedRowId:J

.field private final mObserver:Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;

.field mOnItemClickListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnItemLongClickListener;

.field private mOnScrollListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnScrollListener;

.field private mPendingCheckForLongPress:Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;

.field private mPopulating:Z

.field private final mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

.field private mRestoreOffsets:[I

.field private final mScroller:Lcom/veclink/waterfall/views/ScrollerCompat;

.field mSelectedPosition:I

.field mSelectedRowId:J

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field private final mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchRemainderY:F

.field private mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 375
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 379
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 382
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    iput v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCountSetting:I

    .line 121
    iput v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 122
    iput v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMinColWidth:I

    .line 133
    new-instance v2, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    invoke-direct {v2, p0, v3}, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V

    iput-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    .line 135
    new-instance v2, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;

    invoke-direct {v2, p0, v3}, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V

    iput-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mObserver:Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;

    .line 154
    iput-boolean v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSmoothScrollbarEnabled:Z

    .line 157
    iput-boolean v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScrollEnabled:Z

    .line 160
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    .line 170
    iput-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 173
    iput-boolean v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAreAllItemsSelectable:Z

    .line 174
    iput v7, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mNextSelectedPosition:I

    .line 177
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mNextSelectedRowId:J

    .line 181
    iput v7, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectedPosition:I

    .line 184
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectedRowId:J

    .line 194
    iput v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastScrollState:I

    .line 198
    iput-boolean v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 204
    iput v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionLeftPadding:I

    .line 207
    iput v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionTopPadding:I

    .line 210
    iput v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionRightPadding:I

    .line 213
    iput v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionBottomPadding:I

    .line 219
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 222
    iput v7, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorPosition:I

    .line 262
    iput v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutMode:I

    .line 371
    new-instance v2, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v2}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    .line 384
    if-eqz p2, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/veclink/movnow/healthy_q2/R$styleable;->StaggeredGridView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 387
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 389
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 391
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 397
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 398
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchSlop:I

    .line 399
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMaximumVelocity:I

    .line 400
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFlingVelocity:I

    .line 401
    invoke-static {p1}, Lcom/veclink/waterfall/views/ScrollerCompat;->from(Landroid/content/Context;)Lcom/veclink/waterfall/views/ScrollerCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mScroller:Lcom/veclink/waterfall/views/ScrollerCompat;

    .line 403
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 404
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 405
    invoke-virtual {p0, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->setWillNotDraw(Z)V

    .line 406
    invoke-virtual {p0, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->setClipToPadding(Z)V

    .line 407
    invoke-virtual {p0, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->setFocusableInTouchMode(Z)V

    .line 409
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->useDefaultSelector()V

    .line 412
    :cond_0
    return-void

    .line 393
    .end local v1    # "vc":Landroid/view/ViewConfiguration;
    :cond_1
    iput v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 394
    iput-boolean v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/veclink/waterfall/views/StaggeredGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mHasStableIds:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/veclink/waterfall/views/StaggeredGridView;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/veclink/waterfall/views/StaggeredGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->recycleAllViews()V

    return-void
.end method

.method static synthetic access$1300(Lcom/veclink/waterfall/views/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/veclink/waterfall/views/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/veclink/waterfall/views/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/veclink/waterfall/views/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method static synthetic access$1602(Lcom/veclink/waterfall/views/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    return p1
.end method

.method static synthetic access$1700(Lcom/veclink/waterfall/views/StaggeredGridView;)J
    .locals 2
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstAdapterId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/veclink/waterfall/views/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRestoreOffsets:[I

    return-object v0
.end method

.method static synthetic access$2100(Lcom/veclink/waterfall/views/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/veclink/waterfall/views/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/veclink/waterfall/views/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I

    return v0
.end method

.method static synthetic access$2400(Lcom/veclink/waterfall/views/StaggeredGridView;)Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;)Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;
    .param p1, "x1"    # Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$300(Lcom/veclink/waterfall/views/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/veclink/waterfall/views/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/veclink/waterfall/views/StaggeredGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$402(Lcom/veclink/waterfall/views/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/veclink/waterfall/views/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/veclink/waterfall/views/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/veclink/waterfall/views/StaggeredGridView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/veclink/waterfall/views/StaggeredGridView;)Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    return-object v0
.end method

.method private clearAllState()V
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 2112
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeAllViews()V

    .line 2115
    invoke-direct {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->resetStateForGridTop()V

    .line 2118
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    invoke-virtual {v0}, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->clear()V

    .line 2120
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2121
    const/4 v0, -0x1

    iput v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorPosition:I

    .line 2122
    return-void
.end method

.method private final contentFits()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1031
    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    if-eq v4, v5, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return v3

    .line 1035
    :cond_1
    const v2, 0x7fffffff

    .line 1036
    .local v2, "topmost":I
    const/high16 v0, -0x80000000

    .line 1037
    .local v0, "bottommost":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    if-ge v1, v4, :cond_4

    .line 1038
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    aget v4, v4, v1

    if-ge v4, v2, :cond_2

    .line 1039
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    aget v2, v4, v1

    .line 1041
    :cond_2
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    aget v4, v4, v1

    if-le v4, v0, :cond_3

    .line 1042
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    aget v0, v4, v1

    .line 1037
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1046
    :cond_4
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingTop()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private displayMapping()V
    .locals 8

    .prologue
    .line 1893
    const-string v6, "DISPLAY"

    const-string v7, "MAP ****************"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1895
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1897
    .local v0, "col":I
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1898
    .local v4, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1900
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1901
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1902
    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1904
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_0
    const-string v6, "DISPLAY"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1906
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    .line 1907
    goto :goto_0

    .line 1908
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const-string v6, "DISPLAY"

    const-string v7, "MAP END ****************"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mBeginClick:Z

    if-eqz v1, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1191
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1192
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1194
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 878
    move v0, p1

    .line 879
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 880
    sub-int/2addr v0, p2

    .line 882
    :cond_0
    return v0
.end method

.method private getFirstChildAtColumn(I)Landroid/view/View;
    .locals 6
    .param p1, "column"    # I

    .prologue
    .line 1716
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v4

    if-le v4, p1, :cond_2

    .line 1717
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    if-ge v2, v4, :cond_2

    .line 1718
    invoke-virtual {p0, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1719
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1721
    .local v3, "left":I
    if-eqz v0, :cond_1

    .line 1723
    const/4 v1, 0x0

    .line 1726
    .local v1, "col":I
    :goto_1
    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColWidth:I

    mul-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 1729
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1732
    :cond_0
    if-ne v1, p1, :cond_1

    .line 1740
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "col":I
    .end local v2    # "i":I
    .end local v3    # "left":I
    :goto_2
    return-object v0

    .line 1717
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "left":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1740
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "left":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 2605
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorPosition:I

    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 869
    move v0, p1

    .line 870
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 871
    add-int/2addr v0, p2

    .line 873
    :cond_0
    return v0
.end method

.method private populate(Z)V
    .locals 7
    .param p1, "clearData"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1290
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHeight()I

    move-result v4

    if-nez v4, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 1295
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMinColWidth:I

    div-int v0, v4, v6

    .line 1296
    .local v0, "colCount":I
    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    if-eq v0, v4, :cond_2

    .line 1297
    iput v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 1301
    .end local v0    # "colCount":I
    :cond_2
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 1304
    .restart local v0    # "colCount":I
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    if-eq v4, v6, :cond_3

    .line 1305
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    if-ge v1, v4, :cond_3

    .line 1307
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1311
    .end local v1    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    array-length v4, v4

    if-eq v4, v0, :cond_5

    .line 1312
    :cond_4
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    .line 1313
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    .line 1315
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 1316
    iget-boolean v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mInLayout:Z

    if-eqz v4, :cond_7

    .line 1317
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeAllViewsInLayout()V

    .line 1323
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingTop()I

    move-result v3

    .line 1324
    .local v3, "top":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_a

    .line 1325
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRestoreOffsets:[I

    aget v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_4
    add-int v2, v3, v4

    .line 1328
    .local v2, "offset":I
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    if-nez v2, :cond_9

    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    aget v4, v4, v1

    :goto_5
    aput v4, v6, v1

    .line 1329
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    aget v2, v6, v1

    .end local v2    # "offset":I
    :cond_6
    aput v2, v4, v1

    .line 1324
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1319
    .end local v1    # "i":I
    .end local v3    # "top":I
    :cond_7
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeAllViews()V

    goto :goto_2

    .restart local v1    # "i":I
    .restart local v3    # "top":I
    :cond_8
    move v4, v5

    .line 1325
    goto :goto_4

    .restart local v2    # "offset":I
    :cond_9
    move v4, v2

    .line 1328
    goto :goto_5

    .line 1332
    .end local v2    # "offset":I
    :cond_a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPopulating:Z

    .line 1334
    iget-boolean v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    invoke-virtual {p0, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->layoutChildren(Z)V

    .line 1335
    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->fillDown(II)I

    .line 1336
    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->fillUp(II)I

    .line 1337
    iput-boolean v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPopulating:Z

    .line 1338
    iput-boolean v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    .line 1340
    if-eqz p1, :cond_0

    .line 1341
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v4, :cond_0

    .line 1342
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRestoreOffsets:[I

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    goto/16 :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2648
    return-void
.end method

.method private recycleAllViews()V
    .locals 3

    .prologue
    .line 1051
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    :cond_0
    iget-boolean v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mInLayout:Z

    if-eqz v1, :cond_1

    .line 1056
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeAllViewsInLayout()V

    .line 1060
    :goto_1
    return-void

    .line 1058
    :cond_1
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeAllViews()V

    goto :goto_1
.end method

.method private recycleOffscreenViews()V
    .locals 20

    .prologue
    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHeight()I

    move-result v12

    .line 1067
    .local v12, "height":I
    const/4 v6, 0x0

    .line 1068
    .local v6, "clearAbove":I
    move v7, v12

    .line 1069
    .local v7, "clearBelow":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v17

    add-int/lit8 v13, v17, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_0

    .line 1070
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1071
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v7, :cond_4

    .line 1086
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v17

    if-lez v17, :cond_1

    .line 1087
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1088
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v17

    if-ltz v17, :cond_6

    .line 1104
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v5

    .line 1105
    .local v5, "childCount":I
    if-lez v5, :cond_b

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    const v18, 0x7fffffff

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([II)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    const/high16 v18, -0x80000000

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([II)V

    .line 1111
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v5, :cond_9

    .line 1112
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1113
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    .line 1114
    .local v14, "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v16

    .line 1115
    .local v16, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1116
    .local v3, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v13

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .line 1118
    .local v15, "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    iget v0, v14, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->column:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    iget v0, v14, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->span:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v10, v17, v18

    .line 1119
    .local v10, "colEnd":I
    iget v8, v14, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->column:I

    .local v8, "col":I
    :goto_3
    if-ge v8, v10, :cond_8

    .line 1120
    iget v0, v14, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->column:I

    move/from16 v17, v0

    sub-int v17, v8, v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v17

    sub-int v11, v16, v17

    .line 1122
    .local v11, "colTop":I
    iget v0, v14, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->column:I

    move/from16 v17, v0

    sub-int v17, v8, v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v17

    add-int v9, v3, v17

    .line 1124
    .local v9, "colBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    aget v17, v17, v8

    move/from16 v0, v17

    if-ge v11, v0, :cond_2

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    aput v11, v17, v8

    .line 1127
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    aget v17, v17, v8

    move/from16 v0, v17

    if-le v9, v0, :cond_3

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    aput v9, v17, v8

    .line 1119
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1077
    .end local v3    # "bottom":I
    .end local v5    # "childCount":I
    .end local v8    # "col":I
    .end local v9    # "colBottom":I
    .end local v10    # "colEnd":I
    .end local v11    # "colTop":I
    .end local v14    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    .end local v15    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    .end local v16    # "top":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mInLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1078
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeViewsInLayout(II)V

    .line 1083
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1069
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_0

    .line 1080
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeViewAt(I)V

    goto :goto_4

    .line 1094
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mInLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1095
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeViewsInLayout(II)V

    .line 1100
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    goto/16 :goto_1

    .line 1097
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeViewAt(I)V

    goto :goto_5

    .line 1111
    .restart local v3    # "bottom":I
    .restart local v5    # "childCount":I
    .restart local v8    # "col":I
    .restart local v10    # "colEnd":I
    .restart local v14    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    .restart local v15    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    .restart local v16    # "top":I
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1133
    .end local v3    # "bottom":I
    .end local v4    # "child":Landroid/view/View;
    .end local v8    # "col":I
    .end local v10    # "colEnd":I
    .end local v14    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    .end local v15    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    .end local v16    # "top":I
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "col":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_b

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    aget v17, v17, v8

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, v8

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, v8

    .line 1133
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1141
    .end local v8    # "col":I
    :cond_b
    return-void
.end method

.method private resetStateForGridTop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2127
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 2128
    .local v0, "colCount":I
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 2129
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    .line 2130
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    .line 2132
    :cond_1
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingTop()I

    move-result v1

    .line 2133
    .local v1, "top":I
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2134
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2137
    iput v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    .line 2138
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_2

    .line 2139
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRestoreOffsets:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 2140
    :cond_2
    return-void
.end method

.method private trackMotionScroll(IZ)Z
    .locals 11
    .param p1, "deltaY"    # I
    .param p2, "allowOverScroll"    # Z

    .prologue
    .line 962
    invoke-direct {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->contentFits()Z

    move-result v2

    .line 963
    .local v2, "contentFits":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 967
    .local v0, "allowOverhang":I
    if-nez v2, :cond_7

    .line 970
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPopulating:Z

    .line 971
    if-lez p1, :cond_5

    .line 972
    iget v9, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->fillUp(II)I

    move-result v7

    .line 973
    .local v7, "overhang":I
    const/4 v8, 0x1

    .line 979
    .local v8, "up":Z
    :goto_0
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 980
    .local v4, "movedBy":I
    if-eqz v8, :cond_6

    move v9, v4

    :goto_1
    invoke-virtual {p0, v9}, Lcom/veclink/waterfall/views/StaggeredGridView;->offsetChildren(I)V

    .line 981
    invoke-direct {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->recycleOffscreenViews()V

    .line 982
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPopulating:Z

    .line 983
    sub-int v6, v0, v7

    .line 989
    .end local v7    # "overhang":I
    .end local v8    # "up":Z
    .local v6, "overScrolledBy":I
    :goto_2
    if-eqz p2, :cond_1

    .line 990
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v5

    .line 992
    .local v5, "overScrollMode":I
    if-eqz v5, :cond_0

    const/4 v9, 0x1

    if-ne v5, v9, :cond_1

    if-nez v2, :cond_1

    .line 994
    :cond_0
    if-lez v6, :cond_1

    .line 995
    if-lez p1, :cond_8

    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 996
    .local v3, "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :goto_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v3, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 997
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidate()V

    .line 1002
    .end local v3    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    .end local v5    # "overScrollMode":I
    :cond_1
    iget v9, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    .line 1003
    iget v9, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorPosition:I

    iget v10, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    sub-int v1, v9, v10

    .line 1004
    .local v1, "childIndex":I
    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 1005
    const/4 v9, -0x1

    invoke-virtual {p0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/veclink/waterfall/views/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 1010
    .end local v1    # "childIndex":I
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->invokeOnItemScrollListener()V

    .line 1012
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->awakenScrollBars()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1013
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidate()V

    .line 1015
    :cond_3
    if-eqz p1, :cond_4

    if-eqz v4, :cond_a

    :cond_4
    const/4 v9, 0x1

    :goto_5
    return v9

    .line 975
    .end local v4    # "movedBy":I
    .end local v6    # "overScrolledBy":I
    :cond_5
    iget v9, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0, v9, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->fillDown(II)I

    move-result v7

    .line 977
    .restart local v7    # "overhang":I
    const/4 v8, 0x0

    .restart local v8    # "up":Z
    goto :goto_0

    .line 980
    .restart local v4    # "movedBy":I
    :cond_6
    neg-int v9, v4

    goto :goto_1

    .line 985
    .end local v4    # "movedBy":I
    .end local v7    # "overhang":I
    .end local v8    # "up":Z
    :cond_7
    move v6, v0

    .line 986
    .restart local v6    # "overScrolledBy":I
    const/4 v4, 0x0

    .restart local v4    # "movedBy":I
    goto :goto_2

    .line 995
    .restart local v5    # "overScrollMode":I
    :cond_8
    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_3

    .line 1008
    .end local v5    # "overScrollMode":I
    :cond_9
    iget-object v9, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_4

    .line 1015
    :cond_a
    const/4 v9, 0x0

    goto :goto_5
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2561
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2563
    return-void
.end method


# virtual methods
.method public beginFastChildLayout()V
    .locals 1

    .prologue
    .line 1236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastChildLayout:Z

    .line 1237
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2169
    instance-of v0, p1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1144
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mScroller:Lcom/veclink/waterfall/views/ScrollerCompat;

    invoke-virtual {v6}, Lcom/veclink/waterfall/views/ScrollerCompat;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1145
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mScroller:Lcom/veclink/waterfall/views/ScrollerCompat;

    invoke-virtual {v6}, Lcom/veclink/waterfall/views/ScrollerCompat;->getCurrY()I

    move-result v4

    .line 1146
    .local v4, "y":I
    int-to-float v6, v4

    iget v7, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastTouchY:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 1147
    .local v0, "dy":I
    int-to-float v6, v4

    iput v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastTouchY:F

    .line 1148
    invoke-direct {p0, v0, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v3, 0x1

    .line 1150
    .local v3, "stopped":Z
    :goto_0
    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mScroller:Lcom/veclink/waterfall/views/ScrollerCompat;

    invoke-virtual {v6}, Lcom/veclink/waterfall/views/ScrollerCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1151
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->postInvalidate()V

    .line 1172
    .end local v0    # "dy":I
    .end local v3    # "stopped":Z
    .end local v4    # "y":I
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "dy":I
    .restart local v4    # "y":I
    :cond_1
    move v3, v5

    .line 1148
    goto :goto_0

    .line 1153
    .restart local v3    # "stopped":Z
    :cond_2
    if-eqz v3, :cond_4

    .line 1154
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    .line 1156
    .local v2, "overScrollMode":I
    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    .line 1158
    if-lez v0, :cond_5

    .line 1159
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1163
    .local v1, "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :goto_2
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mScroller:Lcom/veclink/waterfall/views/ScrollerCompat;

    invoke-virtual {v6}, Lcom/veclink/waterfall/views/ScrollerCompat;->getCurrVelocity()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1165
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->postInvalidate()V

    .line 1167
    .end local v1    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :cond_3
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mScroller:Lcom/veclink/waterfall/views/ScrollerCompat;

    invoke-virtual {v6}, Lcom/veclink/waterfall/views/ScrollerCompat;->abortAnimation()V

    .line 1169
    .end local v2    # "overScrollMode":I
    :cond_4
    iput v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    goto :goto_1

    .line 1161
    .restart local v2    # "overScrollMode":I
    :cond_5
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .restart local v1    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    goto :goto_2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 431
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 432
    iget-boolean v7, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 433
    mul-int/lit8 v2, v1, 0x64

    .line 435
    .local v2, "extent":I
    invoke-virtual {p0, v6}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 437
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getFillChildTop()I

    move-result v4

    .line 439
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 440
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 441
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 444
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 446
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getScrollChildBottom()I

    move-result v0

    .line 447
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 448
    if-lez v3, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 457
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 454
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 457
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 462
    iget v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    .line 463
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 464
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 465
    iget-boolean v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 466
    invoke-virtual {p0, v6}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 468
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getFillChildTop()I

    move-result v5

    .line 469
    .local v5, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 470
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 471
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 494
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v6

    .line 480
    :cond_1
    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    .line 481
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 482
    const/4 v4, 0x0

    .line 488
    .local v4, "index":I
    :goto_1
    int-to-float v8, v2

    int-to-float v9, v0

    int-to-float v10, v4

    int-to-float v11, v1

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 490
    .local v6, "vertOffset":I
    goto :goto_0

    .line 483
    .end local v4    # "index":I
    .end local v6    # "vertOffset":I
    :cond_2
    add-int v8, v2, v0

    if-ne v8, v1, :cond_3

    .line 484
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_1

    .line 486
    .end local v4    # "index":I
    :cond_3
    div-int/lit8 v8, v0, 0x2

    add-int v4, v2, v8

    .restart local v4    # "index":I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 514
    iget-boolean v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_0

    .line 515
    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 520
    .local v0, "result":I
    :goto_0
    return v0

    .line 517
    .end local v0    # "result":I
    :cond_0
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 2808
    new-instance v0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1176
    iget-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 1177
    .local v0, "drawSelectorOnTop":Z
    if-nez v0, :cond_0

    .line 1178
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1181
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1183
    if-eqz v0, :cond_1

    .line 1184
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1186
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 1198
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1200
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_2

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "needsInvalidate":Z
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1203
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 1204
    const/4 v0, 0x1

    .line 1206
    :cond_0
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1208
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWidth()I

    move-result v3

    .line 1209
    .local v3, "width":I
    neg-int v4, v3

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1210
    const/high16 v4, 0x43340000    # 180.0f

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1211
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 1212
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1213
    const/4 v0, 0x1

    .line 1216
    .end local v1    # "restoreCount":I
    .end local v3    # "width":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1217
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidate()V

    .line 1220
    .end local v0    # "needsInvalidate":Z
    :cond_2
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    if-eqz v4, :cond_3

    .line 1221
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getScrollY()I

    move-result v2

    .line 1222
    .local v2, "scrollY":I
    if-eqz v2, :cond_4

    .line 1224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1225
    .restart local v1    # "restoreCount":I
    int-to-float v4, v2

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1226
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    invoke-virtual {v4, p1}, Lcom/veclink/waterfall/views/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 1227
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1233
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollY":I
    :cond_3
    :goto_0
    return-void

    .line 1229
    .restart local v2    # "scrollY":I
    :cond_4
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    invoke-virtual {v4, p1}, Lcom/veclink/waterfall/views/FastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2901
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2902
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->updateSelectorState()V

    .line 2903
    return-void
.end method

.method public endFastChildLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1240
    iput-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastChildLayout:Z

    .line 1241
    invoke-direct {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->populate(Z)V

    .line 1242
    return-void
.end method

.method final fillDown(II)I
    .locals 34
    .param p1, "fromPosition"    # I
    .param p2, "overhang"    # I

    .prologue
    .line 1754
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingLeft()I

    move-result v24

    .line 1755
    .local v24, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingRight()I

    move-result v25

    .line 1758
    .local v25, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWidth()I

    move-result v32

    sub-int v32, v32, v24

    sub-int v32, v32, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v33, v0

    div-int v10, v32, v33

    .line 1760
    .local v10, "colWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHeight()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingBottom()I

    move-result v33

    sub-int v12, v32, v33

    .line 1761
    .local v12, "gridBottom":I
    add-int v11, v12, p2

    .line 1762
    .local v11, "fillTo":I
    invoke-virtual/range {p0 .. p1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getNextColumnDown(I)I

    move-result v23

    .line 1763
    .local v23, "nextCol":I
    move/from16 v26, p1

    .line 1766
    .local v26, "position":I
    :cond_0
    :goto_0
    if-ltz v23, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v32, v32, v23

    move/from16 v0, v32

    if-ge v0, v11, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v26

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 1768
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 1770
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1773
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    .line 1774
    .local v22, "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    if-nez v22, :cond_1

    .line 1775
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->generateDefaultLayoutParams()Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    move-result-object v22

    .line 1776
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1778
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    .line 1779
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mInLayout:Z

    move/from16 v32, v0

    if-eqz v32, :cond_8

    .line 1780
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1786
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v32, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->span:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 1787
    .local v28, "span":I
    mul-int v30, v10, v28

    .line 1788
    .local v30, "widthSize":I
    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 1792
    .local v31, "widthSpec":I
    const/16 v32, 0x1

    move/from16 v0, v28

    move/from16 v1, v32

    if-le v0, v1, :cond_9

    .line 1793
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->getNextRecordDown(II)Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    move-result-object v27

    .line 1799
    .local v27, "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    :goto_2
    const/16 v18, 0x0

    .line 1800
    .local v18, "invalidateAfter":Z
    if-nez v27, :cond_a

    .line 1801
    new-instance v27, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .end local v27    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    const/16 v32, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView$1;)V

    .line 1802
    .restart local v27    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1803
    move/from16 v0, v23

    move-object/from16 v1, v27

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->column:I

    .line 1804
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1813
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mHasStableIds:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    .line 1815
    .local v16, "id":J
    move-wide/from16 v0, v16

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->id:J

    .line 1816
    move-wide/from16 v0, v16

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->id:J

    .line 1819
    .end local v16    # "id":J
    :cond_4
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->column:I

    .line 1822
    move-object/from16 v0, v22

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    move/from16 v32, v0

    const/16 v33, -0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    .line 1823
    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1829
    .local v13, "heightSpec":I
    :goto_4
    move/from16 v0, v31

    invoke-virtual {v4, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1831
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1832
    .local v6, "childHeight":I
    if-nez v18, :cond_5

    move-object/from16 v0, v27

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v6, v0, :cond_6

    move-object/from16 v0, v27

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v32, v0

    if-lez v32, :cond_6

    .line 1834
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1836
    :cond_6
    move-object/from16 v0, v27

    iput v6, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->height:I

    .line 1839
    const/16 v32, 0x1

    move/from16 v0, v28

    move/from16 v1, v32

    if-le v0, v1, :cond_e

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v20, v32, v23

    .line 1841
    .local v20, "lowest":I
    add-int/lit8 v14, v23, 0x1

    .local v14, "i":I
    :goto_5
    add-int v32, v23, v28

    move/from16 v0, v32

    if-ge v14, v0, :cond_c

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v3, v32, v14

    .line 1843
    .local v3, "bottom":I
    move/from16 v0, v20

    if-le v3, v0, :cond_7

    .line 1844
    move/from16 v20, v3

    .line 1841
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1782
    .end local v3    # "bottom":I
    .end local v6    # "childHeight":I
    .end local v13    # "heightSpec":I
    .end local v14    # "i":I
    .end local v18    # "invalidateAfter":Z
    .end local v20    # "lowest":I
    .end local v27    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    .end local v28    # "span":I
    .end local v30    # "widthSize":I
    .end local v31    # "widthSpec":I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1796
    .restart local v28    # "span":I
    .restart local v30    # "widthSize":I
    .restart local v31    # "widthSpec":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .restart local v27    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    goto/16 :goto_2

    .line 1805
    .restart local v18    # "invalidateAfter":Z
    :cond_a
    move-object/from16 v0, v27

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v32, v0

    move/from16 v0, v28

    move/from16 v1, v32

    if-eq v0, v1, :cond_3

    .line 1806
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1807
    move/from16 v0, v23

    move-object/from16 v1, v27

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->column:I

    .line 1808
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 1826
    :cond_b
    move-object/from16 v0, v22

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    invoke-static/range {v32 .. v33}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .restart local v13    # "heightSpec":I
    goto/16 :goto_4

    .line 1847
    .restart local v6    # "childHeight":I
    .restart local v14    # "i":I
    .restart local v20    # "lowest":I
    :cond_c
    move/from16 v29, v20

    .line 1852
    .end local v14    # "i":I
    .end local v20    # "lowest":I
    .local v29, "startFrom":I
    :goto_6
    move/from16 v9, v29

    .line 1853
    .local v9, "childTop":I
    add-int v5, v9, v6

    .line 1854
    .local v5, "childBottom":I
    mul-int v32, v23, v10

    add-int v7, v24, v32

    .line 1856
    .local v7, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    add-int v8, v7, v32

    .line 1857
    .local v8, "childRight":I
    invoke-virtual {v4, v7, v9, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_10

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 1865
    .local v19, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 1866
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1849
    .end local v5    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v19    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "startFrom":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v29, v32, v23

    .restart local v29    # "startFrom":I
    goto :goto_6

    .line 1870
    .restart local v5    # "childBottom":I
    .restart local v7    # "childLeft":I
    .restart local v8    # "childRight":I
    .restart local v9    # "childTop":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1874
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_10
    move/from16 v14, v23

    .restart local v14    # "i":I
    :goto_8
    add-int v32, v23, v28

    move/from16 v0, v32

    if-ge v14, v0, :cond_11

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    sub-int v33, v14, v23

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v33

    add-int v33, v33, v5

    aput v33, v32, v14

    .line 1874
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1878
    :cond_11
    add-int/lit8 v26, v26, 0x1

    .line 1879
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getNextColumnDown(I)I

    move-result v23

    .line 1880
    goto/16 :goto_0

    .line 1882
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childBottom":I
    .end local v6    # "childHeight":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v13    # "heightSpec":I
    .end local v14    # "i":I
    .end local v18    # "invalidateAfter":Z
    .end local v22    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    .end local v27    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    .end local v28    # "span":I
    .end local v29    # "startFrom":I
    .end local v30    # "widthSize":I
    .end local v31    # "widthSpec":I
    :cond_12
    const/16 v21, 0x0

    .line 1883
    .local v21, "lowestView":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v14, v0, :cond_14

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v32, v32, v14

    move/from16 v0, v32

    move/from16 v1, v21

    if-le v0, v1, :cond_13

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v32, v0

    aget v21, v32, v14

    .line 1883
    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 1888
    :cond_14
    sub-int v32, v21, v12

    return v32
.end method

.method final fillUp(II)I
    .locals 33
    .param p1, "fromPosition"    # I
    .param p2, "overhang"    # I

    .prologue
    .line 1559
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingLeft()I

    move-result v21

    .line 1560
    .local v21, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingRight()I

    move-result v22

    .line 1563
    .local v22, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWidth()I

    move-result v31

    sub-int v31, v31, v21

    sub-int v31, v31, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v32, v0

    div-int v9, v31, v32

    .line 1565
    .local v9, "colWidth":I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColWidth:I

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingTop()I

    move-result v11

    .line 1567
    .local v11, "gridTop":I
    sub-int v10, v11, p2

    .line 1568
    .local v10, "fillTo":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getNextColumnUp()I

    move-result v20

    .line 1569
    .local v20, "nextCol":I
    move/from16 v23, p1

    .local v23, "position":I
    move/from16 v24, v23

    .line 1571
    .end local v23    # "position":I
    .local v24, "position":I
    :cond_0
    :goto_0
    if-ltz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    move-object/from16 v31, v0

    aget v31, v31, v20

    move/from16 v0, v31

    if-le v0, v10, :cond_11

    if-ltz v24, :cond_11

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1

    .line 1575
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v15, v0, :cond_1

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 1577
    move/from16 v20, v15

    .line 1585
    .end local v15    # "i":I
    :cond_1
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1587
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1590
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    .line 1592
    .local v19, "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    if-nez v19, :cond_2

    .line 1593
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->generateDefaultLayoutParams()Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    move-result-object v19

    .line 1594
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1597
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_3

    .line 1598
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mInLayout:Z

    move/from16 v31, v0

    if-eqz v31, :cond_a

    .line 1599
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1605
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->span:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 1606
    .local v26, "span":I
    mul-int v29, v9, v26

    .line 1607
    .local v29, "widthSize":I
    const/high16 v31, 0x40000000    # 2.0f

    move/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 1611
    .local v30, "widthSpec":I
    const/16 v31, 0x1

    move/from16 v0, v26

    move/from16 v1, v31

    if-le v0, v1, :cond_b

    .line 1612
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->getNextRecordUp(II)Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    move-result-object v25

    .line 1618
    .local v25, "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    :goto_3
    const/16 v18, 0x0

    .line 1619
    .local v18, "invalidateBefore":Z
    if-nez v25, :cond_c

    .line 1620
    new-instance v25, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .end local v25    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    const/16 v31, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView$1;)V

    .line 1621
    .restart local v25    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1622
    move/from16 v0, v20

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->column:I

    .line 1623
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1632
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mHasStableIds:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    .line 1634
    .local v16, "id":J
    move-wide/from16 v0, v16

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->id:J

    .line 1635
    move-wide/from16 v0, v16

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->id:J

    .line 1638
    .end local v16    # "id":J
    :cond_5
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->column:I

    .line 1641
    move-object/from16 v0, v19

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    move/from16 v31, v0

    const/16 v32, -0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 1642
    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1648
    .local v12, "heightSpec":I
    :goto_5
    move/from16 v0, v30

    invoke-virtual {v3, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1650
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1651
    .local v5, "childHeight":I
    if-nez v18, :cond_6

    move-object/from16 v0, v25

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v5, v0, :cond_7

    move-object/from16 v0, v25

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v31, v0

    if-lez v31, :cond_7

    .line 1653
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1655
    :cond_7
    move-object/from16 v0, v25

    iput v5, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->height:I

    .line 1660
    const/16 v31, 0x1

    move/from16 v0, v26

    move/from16 v1, v31

    if-le v0, v1, :cond_f

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    move-object/from16 v31, v0

    aget v13, v31, v20

    .line 1662
    .local v13, "highest":I
    add-int/lit8 v15, v20, 0x1

    .restart local v15    # "i":I
    :goto_6
    add-int v31, v20, v26

    move/from16 v0, v31

    if-ge v15, v0, :cond_e

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    move-object/from16 v31, v0

    aget v28, v31, v15

    .line 1664
    .local v28, "top":I
    move/from16 v0, v28

    if-ge v0, v13, :cond_8

    .line 1665
    move/from16 v13, v28

    .line 1662
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1575
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v12    # "heightSpec":I
    .end local v13    # "highest":I
    .end local v18    # "invalidateBefore":Z
    .end local v19    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    .end local v25    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    .end local v26    # "span":I
    .end local v28    # "top":I
    .end local v29    # "widthSize":I
    .end local v30    # "widthSpec":I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1601
    .end local v15    # "i":I
    .restart local v3    # "child":Landroid/view/View;
    .restart local v19    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    :cond_a
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->addView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1615
    .restart local v26    # "span":I
    .restart local v29    # "widthSize":I
    .restart local v30    # "widthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .restart local v25    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    goto/16 :goto_3

    .line 1624
    .restart local v18    # "invalidateBefore":Z
    :cond_c
    move-object/from16 v0, v25

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v31, v0

    move/from16 v0, v26

    move/from16 v1, v31

    if-eq v0, v1, :cond_4

    .line 1625
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1626
    move/from16 v0, v20

    move-object/from16 v1, v25

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->column:I

    .line 1627
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 1645
    :cond_d
    move-object/from16 v0, v19

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    invoke-static/range {v31 .. v32}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .restart local v12    # "heightSpec":I
    goto/16 :goto_5

    .line 1668
    .restart local v5    # "childHeight":I
    .restart local v13    # "highest":I
    .restart local v15    # "i":I
    :cond_e
    move/from16 v27, v13

    .line 1673
    .end local v13    # "highest":I
    .end local v15    # "i":I
    .local v27, "startFrom":I
    :goto_7
    move/from16 v4, v27

    .line 1674
    .local v4, "childBottom":I
    sub-int v8, v4, v5

    .line 1675
    .local v8, "childTop":I
    mul-int v31, v20, v9

    add-int v6, v21, v31

    .line 1677
    .local v6, "childLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    add-int v7, v6, v31

    .line 1686
    .local v7, "childRight":I
    invoke-virtual {v3, v6, v8, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 1688
    move/from16 v15, v20

    .restart local v15    # "i":I
    :goto_8
    add-int v31, v20, v26

    move/from16 v0, v31

    if-ge v15, v0, :cond_10

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    move-object/from16 v31, v0

    sub-int v32, v15, v20

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v32

    sub-int v32, v8, v32

    aput v32, v31, v15

    .line 1688
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1670
    .end local v4    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    .end local v15    # "i":I
    .end local v27    # "startFrom":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    move-object/from16 v31, v0

    aget v27, v31, v20

    .restart local v27    # "startFrom":I
    goto :goto_7

    .line 1692
    .restart local v4    # "childBottom":I
    .restart local v6    # "childLeft":I
    .restart local v7    # "childRight":I
    .restart local v8    # "childTop":I
    .restart local v15    # "i":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getNextColumnUp()I

    move-result v20

    .line 1693
    add-int/lit8 v23, v24, -0x1

    .end local v24    # "position":I
    .restart local v23    # "position":I
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    move/from16 v24, v23

    .line 1694
    .end local v23    # "position":I
    .restart local v24    # "position":I
    goto/16 :goto_0

    .line 1696
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childBottom":I
    .end local v5    # "childHeight":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    .end local v12    # "heightSpec":I
    .end local v15    # "i":I
    .end local v18    # "invalidateBefore":Z
    .end local v19    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    .end local v25    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    .end local v26    # "span":I
    .end local v27    # "startFrom":I
    .end local v29    # "widthSize":I
    .end local v30    # "widthSpec":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHeight()I

    move-result v14

    .line 1698
    .local v14, "highestView":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v15, v0, :cond_12

    .line 1699
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/veclink/waterfall/views/StaggeredGridView;->getFirstChildAtColumn(I)Landroid/view/View;

    move-result-object v3

    .line 1700
    .restart local v3    # "child":Landroid/view/View;
    if-nez v3, :cond_13

    .line 1701
    const/4 v14, 0x0

    .line 1711
    .end local v3    # "child":Landroid/view/View;
    :cond_12
    sub-int v31, v11, v14

    return v31

    .line 1704
    .restart local v3    # "child":Landroid/view/View;
    :cond_13
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v28

    .line 1706
    .restart local v28    # "top":I
    move/from16 v0, v28

    if-ge v0, v14, :cond_14

    .line 1707
    move/from16 v14, v28

    .line 1698
    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto :goto_9
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->generateDefaultLayoutParams()Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    .locals 2

    .prologue
    .line 2159
    new-instance v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2174
    new-instance v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2164
    new-instance v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method protected getFillChildTop()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 505
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 506
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 508
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method public getItemIdAtPosition(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 924
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    return-wide v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method final getNextColumnDown(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1975
    const/4 v3, -0x1

    .line 1976
    .local v3, "result":I
    const v4, 0x7fffffff

    .line 1978
    .local v4, "topMost":I
    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 1980
    .local v1, "colCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1981
    iget-object v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    aget v0, v5, v2

    .line 1982
    .local v0, "bottom":I
    if-ge v0, v4, :cond_0

    .line 1983
    move v4, v0

    .line 1984
    move v3, v2

    .line 1980
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1988
    .end local v0    # "bottom":I
    :cond_1
    return v3
.end method

.method final getNextColumnUp()I
    .locals 6

    .prologue
    .line 1914
    const/4 v3, -0x1

    .line 1915
    .local v3, "result":I
    const/high16 v0, -0x80000000

    .line 1917
    .local v0, "bottomMost":I
    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 1918
    .local v1, "colCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1919
    iget-object v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    aget v4, v5, v2

    .line 1920
    .local v4, "top":I
    if-le v4, v0, :cond_0

    .line 1921
    move v0, v4

    .line 1922
    move v3, v2

    .line 1918
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1925
    .end local v4    # "top":I
    :cond_1
    return v3
.end method

.method final getNextRecordDown(II)Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    .locals 11
    .param p1, "position"    # I
    .param p2, "span"    # I

    .prologue
    .line 1992
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .line 1993
    .local v4, "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    .line 1994
    new-instance v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .end local v4    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView$1;)V

    .line 1995
    .restart local v4    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1996
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2003
    :cond_0
    const/4 v6, -0x1

    .line 2004
    .local v6, "targetCol":I
    const v7, 0x7fffffff

    .line 2006
    .local v7, "topMost":I
    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 2007
    .local v1, "colCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sub-int v8, v1, p2

    if-gt v2, v8, :cond_5

    .line 2008
    const/high16 v0, -0x80000000

    .line 2009
    .local v0, "bottom":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    .line 2010
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    aget v5, v8, v3

    .line 2011
    .local v5, "singleBottom":I
    if-le v5, v0, :cond_1

    .line 2012
    move v0, v5

    .line 2009
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1997
    .end local v0    # "bottom":I
    .end local v1    # "colCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "singleBottom":I
    .end local v6    # "targetCol":I
    .end local v7    # "topMost":I
    :cond_2
    iget v8, v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    .line 1998
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2015
    .restart local v0    # "bottom":I
    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v6    # "targetCol":I
    .restart local v7    # "topMost":I
    :cond_3
    if-ge v0, v7, :cond_4

    .line 2016
    move v7, v0

    .line 2017
    move v6, v2

    .line 2007
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2021
    .end local v0    # "bottom":I
    .end local v3    # "j":I
    :cond_5
    iput v6, v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->column:I

    .line 2023
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    .line 2024
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int v8, v7, v8

    invoke-virtual {v4, v2, v8}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->setMarginAbove(II)V

    .line 2023
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2027
    :cond_6
    return-object v4
.end method

.method final getNextRecordUp(II)Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    .locals 11
    .param p1, "position"    # I
    .param p2, "span"    # I

    .prologue
    .line 1934
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .line 1935
    .local v4, "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    .line 1936
    new-instance v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .end local v4    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView$1;)V

    .line 1937
    .restart local v4    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1938
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v8, p1, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1945
    :cond_0
    const/4 v6, -0x1

    .line 1946
    .local v6, "targetCol":I
    const/high16 v0, -0x80000000

    .line 1948
    .local v0, "bottomMost":I
    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 1949
    .local v1, "colCount":I
    sub-int v2, v1, p2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 1950
    const v7, 0x7fffffff

    .line 1951
    .local v7, "top":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    .line 1952
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    aget v5, v8, v3

    .line 1953
    .local v5, "singleTop":I
    if-ge v5, v7, :cond_1

    .line 1954
    move v7, v5

    .line 1951
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1939
    .end local v0    # "bottomMost":I
    .end local v1    # "colCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "singleTop":I
    .end local v6    # "targetCol":I
    .end local v7    # "top":I
    :cond_2
    iget v8, v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    .line 1940
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1957
    .restart local v0    # "bottomMost":I
    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v6    # "targetCol":I
    .restart local v7    # "top":I
    :cond_3
    if-le v7, v0, :cond_4

    .line 1958
    move v0, v7

    .line 1959
    move v6, v2

    .line 1949
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1963
    .end local v3    # "j":I
    .end local v7    # "top":I
    :cond_5
    iput v6, v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->column:I

    .line 1965
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    .line 1966
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int/2addr v8, v0

    invoke-virtual {v4, v2, v8}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->setMarginBelow(II)V

    .line 1965
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1969
    :cond_6
    return-object v4
.end method

.method public final getOnItemClickListener()Lcom/veclink/waterfall/views/StaggeredGridView$OnItemClickListener;
    .locals 1

    .prologue
    .line 2940
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnItemClickListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/veclink/waterfall/views/StaggeredGridView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnItemLongClickListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnItemLongClickListener;

    return-object v0
.end method

.method protected getScrollChildBottom()I
    .locals 2

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 499
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 500
    const/4 v1, 0x0

    .line 501
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method hideSelector()V
    .locals 2

    .prologue
    .line 650
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 653
    :cond_0
    return-void
.end method

.method final invalidateLayoutRecordsAfterPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1523
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1524
    .local v0, "beginAt":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v1

    if-le v1, p1, :cond_0

    .line 1525
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1527
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1528
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->removeAtRange(II)V

    .line 1530
    return-void
.end method

.method final invalidateLayoutRecordsBeforePosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1514
    const/4 v0, 0x0

    .line 1516
    .local v0, "endAt":I
    :goto_0
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 1517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1519
    :cond_0
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAtRange(II)V

    .line 1520
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/veclink/waterfall/views/FastScroller;->onScroll(Lcom/veclink/waterfall/views/StaggeredGridView;III)V

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnScrollListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnScrollListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnScrollListener;

    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/veclink/waterfall/views/StaggeredGridView$OnScrollListener;->onScroll(Lcom/veclink/waterfall/views/StaggeredGridView;III)V

    .line 1547
    :cond_1
    return-void
.end method

.method public isDrawSelectorOnTop()Z
    .locals 1

    .prologue
    .line 3033
    iget-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2862
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 2863
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2864
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2865
    :cond_0
    return-void
.end method

.method final layoutChildren(Z)V
    .locals 32
    .param p1, "queryAdapter"    # Z

    .prologue
    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingLeft()I

    move-result v21

    .line 1367
    .local v21, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingRight()I

    move-result v22

    .line 1373
    .local v22, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWidth()I

    move-result v30

    sub-int v30, v30, v21

    sub-int v30, v30, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v31, v0

    div-int v13, v30, v31

    .line 1375
    .local v13, "colWidth":I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColWidth:I

    .line 1376
    const/16 v25, -0x1

    .line 1377
    .local v25, "rebuildLayoutRecordsBefore":I
    const/16 v24, -0x1

    .line 1379
    .local v24, "rebuildLayoutRecordsAfter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v30, v0

    const/high16 v31, -0x80000000

    invoke-static/range {v30 .. v31}, Ljava/util/Arrays;->fill([II)V

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v7

    .line 1382
    .local v7, "childCount":I
    const/4 v3, 0x0

    .line 1384
    .local v3, "amountRemoved":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v7, :cond_f

    .line 1385
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1386
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    .line 1387
    .local v18, "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v18

    iget v12, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->column:I

    .line 1388
    .local v12, "col":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    move/from16 v30, v0

    add-int v23, v30, v15

    .line 1389
    .local v23, "position":I
    if-nez p1, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v30

    if-eqz v30, :cond_3

    :cond_0
    const/16 v19, 0x1

    .line 1392
    .local v19, "needsLayout":Z
    :goto_1
    if-eqz p1, :cond_6

    .line 1394
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v20

    .line 1395
    .local v20, "newView":Landroid/view/View;
    if-nez v20, :cond_4

    .line 1397
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeViewAt(I)V

    .line 1398
    add-int/lit8 v30, v15, -0x1

    if-ltz v30, :cond_1

    .line 1399
    add-int/lit8 v30, v15, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1400
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1384
    .end local v20    # "newView":Landroid/view/View;
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1389
    .end local v19    # "needsLayout":Z
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    .line 1402
    .restart local v19    # "needsLayout":Z
    .restart local v20    # "newView":Landroid/view/View;
    :cond_4
    move-object/from16 v0, v20

    if-eq v0, v5, :cond_5

    .line 1403
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeViewAt(I)V

    .line 1404
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/veclink/waterfall/views/StaggeredGridView;->addView(Landroid/view/View;I)V

    .line 1405
    move-object/from16 v5, v20

    .line 1407
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .end local v18    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    check-cast v18, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    .line 1411
    .end local v20    # "newView":Landroid/view/View;
    .restart local v18    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v30, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->span:I

    move/from16 v31, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v27

    .line 1412
    .local v27, "span":I
    mul-int v28, v13, v27

    .line 1414
    .local v28, "widthSize":I
    if-eqz v19, :cond_7

    .line 1415
    const/high16 v30, 0x40000000    # 2.0f

    move/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 1419
    .local v29, "widthSpec":I
    move-object/from16 v0, v18

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    move/from16 v30, v0

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1420
    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1427
    .local v14, "heightSpec":I
    :goto_3
    move/from16 v0, v29

    invoke-virtual {v5, v0, v14}, Landroid/view/View;->measure(II)V

    .line 1430
    .end local v14    # "heightSpec":I
    .end local v29    # "widthSpec":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v30, v0

    aget v30, v30, v12

    const/high16 v31, -0x80000000

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v30, v0

    aget v11, v30, v12

    .line 1433
    .local v11, "childTop":I
    :goto_4
    const/16 v30, 0x1

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_c

    .line 1434
    move/from16 v17, v11

    .line 1435
    .local v17, "lowest":I
    add-int/lit8 v16, v12, 0x1

    .local v16, "j":I
    :goto_5
    add-int v30, v12, v27

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v30, v0

    aget v4, v30, v16

    .line 1437
    .local v4, "bottom":I
    move/from16 v0, v17

    if-le v4, v0, :cond_8

    .line 1438
    move/from16 v17, v4

    .line 1435
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1423
    .end local v4    # "bottom":I
    .end local v11    # "childTop":I
    .end local v16    # "j":I
    .end local v17    # "lowest":I
    .restart local v29    # "widthSpec":I
    :cond_9
    move-object/from16 v0, v18

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->height:I

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14    # "heightSpec":I
    goto :goto_3

    .line 1430
    .end local v14    # "heightSpec":I
    .end local v29    # "widthSpec":I
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_4

    .line 1441
    .restart local v11    # "childTop":I
    .restart local v16    # "j":I
    .restart local v17    # "lowest":I
    :cond_b
    move/from16 v11, v17

    .line 1444
    .end local v16    # "j":I
    .end local v17    # "lowest":I
    :cond_c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1445
    .local v8, "childHeight":I
    add-int v6, v11, v8

    .line 1446
    .local v6, "childBottom":I
    mul-int v30, v12, v13

    add-int v9, v21, v30

    .line 1447
    .local v9, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    add-int v10, v9, v30

    .line 1448
    .local v10, "childRight":I
    invoke-virtual {v5, v9, v11, v10, v6}, Landroid/view/View;->layout(IIII)V

    .line 1450
    move/from16 v16, v12

    .restart local v16    # "j":I
    :goto_6
    add-int v30, v12, v27

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v30, v0

    aput v6, v30, v16

    .line 1450
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1454
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .line 1455
    .local v26, "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    if-eqz v26, :cond_e

    move-object/from16 v0, v26

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-eq v0, v8, :cond_e

    .line 1457
    move-object/from16 v0, v26

    iput v8, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->height:I

    .line 1458
    move/from16 v25, v23

    .line 1461
    :cond_e
    if-eqz v26, :cond_2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    .line 1463
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1464
    move/from16 v24, v23

    goto/16 :goto_2

    .line 1469
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childBottom":I
    .end local v8    # "childHeight":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    .end local v12    # "col":I
    .end local v16    # "j":I
    .end local v18    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    .end local v19    # "needsLayout":Z
    .end local v23    # "position":I
    .end local v26    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    .end local v27    # "span":I
    .end local v28    # "widthSize":I
    :cond_f
    const/4 v15, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_11

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v30, v0

    aget v30, v30, v15

    const/high16 v31, -0x80000000

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    move-object/from16 v31, v0

    aget v31, v31, v15

    aput v31, v30, v15

    .line 1469
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 1475
    :cond_11
    if-gez v25, :cond_12

    if-ltz v24, :cond_16

    .line 1476
    :cond_12
    if-ltz v25, :cond_13

    .line 1477
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1479
    :cond_13
    if-ltz v24, :cond_14

    .line 1480
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1482
    :cond_14
    const/4 v15, 0x0

    :goto_8
    sub-int v30, v7, v3

    move/from16 v0, v30

    if-ge v15, v0, :cond_16

    .line 1483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    move/from16 v30, v0

    add-int v23, v30, v15

    .line 1484
    .restart local v23    # "position":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1485
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    .line 1486
    .restart local v18    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .line 1487
    .restart local v26    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    if-nez v26, :cond_15

    .line 1488
    new-instance v26, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;

    .end local v26    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView$1;)V

    .line 1489
    .restart local v26    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 1491
    :cond_15
    move-object/from16 v0, v18

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->column:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->column:I

    .line 1492
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->height:I

    .line 1493
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->id:J

    .line 1494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    move/from16 v30, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->span:I

    move/from16 v31, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;->span:I

    .line 1482
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1498
    .end local v5    # "child":Landroid/view/View;
    .end local v18    # "lp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    .end local v23    # "position":I
    .end local v26    # "rec":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutRecord;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_18

    .line 1499
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1500
    .restart local v5    # "child":Landroid/view/View;
    if-eqz v5, :cond_17

    .line 1501
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 1509
    .end local v5    # "child":Landroid/view/View;
    :cond_17
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->invokeOnItemScrollListener()V

    .line 1511
    return-void

    .line 1502
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_19

    .line 1503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1504
    .restart local v5    # "child":Landroid/view/View;
    if-eqz v5, :cond_17

    .line 1505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_9

    .line 1507
    .end local v5    # "child":Landroid/view/View;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_9
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 886
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 887
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 913
    :cond_0
    :goto_0
    return v2

    .line 891
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 892
    .local v1, "count":I
    iget-boolean v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 893
    if-eqz p2, :cond_2

    .line 894
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 895
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 896
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 899
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 900
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 901
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 905
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 908
    goto :goto_0

    .line 910
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 913
    goto :goto_0
.end method

.method final obtainView(ILandroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "optScrap"    # Landroid/view/View;

    .prologue
    .line 2040
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    invoke-virtual {v6, p1}, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v5

    .line 2041
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    move-object v6, v5

    .line 2078
    :goto_0
    return-object v6

    .line 2045
    :cond_0
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 2046
    const/4 v5, 0x0

    .line 2047
    const/4 v6, 0x0

    goto :goto_0

    .line 2051
    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    iget v1, v6, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->viewType:I

    .line 2053
    .local v1, "optType":I
    :goto_1
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 2054
    .local v2, "positionViewType":I
    if-ne v1, v2, :cond_5

    move-object v3, p2

    .line 2057
    .local v3, "scrap":Landroid/view/View;
    :goto_2
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2059
    if-eq v5, v3, :cond_2

    if-eqz v3, :cond_2

    .line 2061
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    invoke-virtual {v6, v3}, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 2064
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2066
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eq v6, p0, :cond_3

    .line 2067
    if-nez v0, :cond_6

    .line 2068
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->generateDefaultLayoutParams()Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    move-result-object v0

    :cond_3
    :goto_3
    move-object v4, v0

    .line 2074
    check-cast v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    .line 2075
    .local v4, "sglp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    iput p1, v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->position:I

    .line 2076
    iput v2, v4, Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;->viewType:I

    move-object v6, v5

    .line 2078
    goto :goto_0

    .line 2051
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "optType":I
    .end local v2    # "positionViewType":I
    .end local v3    # "scrap":Landroid/view/View;
    .end local v4    # "sglp":Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;
    :cond_4
    const/4 v1, -0x1

    goto :goto_1

    .line 2054
    .restart local v1    # "optType":I
    .restart local v2    # "positionViewType":I
    :cond_5
    iget-object v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    invoke-virtual {v6, v2}, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 2069
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "scrap":Landroid/view/View;
    :cond_6
    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2070
    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/veclink/waterfall/views/StaggeredGridView$LayoutParams;

    move-result-object v0

    goto :goto_3
.end method

.method final offsetChildren(I)V
    .locals 8
    .param p1, "offset"    # I

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 1348
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1349
    invoke-virtual {p0, v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1350
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1348
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1354
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 1355
    .local v2, "colCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1356
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemTops:[I

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    .line 1357
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mItemBottoms:[I

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    .line 1355
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1359
    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 2611
    iget-boolean v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 2613
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2642
    :cond_0
    :goto_0
    return-object v3

    .line 2619
    :cond_1
    sget-object v4, Lcom/veclink/waterfall/views/StaggeredGridView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2627
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2628
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 2629
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 2630
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2631
    move v0, v2

    .line 2637
    :cond_2
    if-ltz v0, :cond_0

    .line 2638
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2629
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 600
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    if-eqz v8, :cond_0

    .line 601
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    invoke-virtual {v8, p1}, Lcom/veclink/waterfall/views/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 602
    .local v4, "intercepted":Z
    if-eqz v4, :cond_0

    .line 646
    .end local v4    # "intercepted":Z
    :goto_0
    return v6

    .line 607
    :cond_0
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 609
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v6, v7

    .line 646
    goto :goto_0

    .line 611
    :pswitch_1
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 612
    iget-object v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mScroller:Lcom/veclink/waterfall/views/ScrollerCompat;

    invoke-virtual {v8}, Lcom/veclink/waterfall/views/ScrollerCompat;->abortAnimation()V

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastTouchY:F

    .line 614
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v8

    iput v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mActivePointerId:I

    .line 615
    const/4 v8, 0x0

    iput v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchRemainderY:F

    .line 616
    iget v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 618
    iput v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    goto :goto_0

    .line 624
    :pswitch_2
    iget v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mActivePointerId:I

    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 626
    .local v3, "index":I
    if-gez v3, :cond_2

    .line 627
    const-string v6, "StaggeredGridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "event stream?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 632
    goto :goto_0

    .line 634
    :cond_2
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 635
    .local v5, "y":F
    iget v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastTouchY:F

    sub-float v8, v5, v8

    iget v9, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchRemainderY:F

    add-float v2, v8, v9

    .line 636
    .local v2, "dy":F
    float-to-int v1, v2

    .line 637
    .local v1, "deltaY":I
    int-to-float v8, v1

    sub-float v8, v2, v8

    iput v8, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchRemainderY:F

    .line 639
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 640
    iput v6, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 1278
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mInLayout:Z

    .line 1279
    invoke-direct {p0, v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->populate(Z)V

    .line 1280
    iput-boolean v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mInLayout:Z

    .line 1282
    sub-int v1, p4, p2

    .line 1283
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 1284
    .local v0, "height":I
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1285
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1286
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1254
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1255
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1256
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1257
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1259
    .local v2, "heightSize":I
    if-eq v3, v5, :cond_0

    .line 1260
    const/high16 v3, 0x40000000    # 2.0f

    .line 1262
    :cond_0
    if-eq v1, v5, :cond_1

    .line 1263
    const/high16 v1, 0x40000000    # 2.0f

    .line 1266
    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->setMeasuredDimension(II)V

    .line 1268
    iget v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCountSetting:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1269
    iget v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMinColWidth:I

    div-int v0, v4, v5

    .line 1270
    .local v0, "colCount":I
    iget v5, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    if-eq v0, v5, :cond_2

    .line 1271
    iput v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 1274
    .end local v0    # "colCount":I
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2229
    move-object v3, p1

    check-cast v3, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;

    .line 2230
    .local v3, "ss":Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;
    invoke-virtual {v3}, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2231
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    .line 2232
    iget v4, v3, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->position:I

    iput v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    .line 2233
    iget-object v4, v3, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->topOffsets:[I

    iput-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRestoreOffsets:[I

    .line 2235
    iget-object v1, v3, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .line 2237
    .local v1, "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;>;"
    if-eqz v1, :cond_0

    .line 2238
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2239
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;

    .line 2240
    .local v0, "colMap":Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;
    iget-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    # getter for: Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;->values:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;->access$600(Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2244
    .end local v0    # "colMap":Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-wide v4, v3, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->firstId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 2245
    iget-wide v4, v3, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->firstId:J

    iput-wide v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstAdapterId:J

    .line 2246
    const/4 v4, -0x1

    iput v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorPosition:I

    .line 2249
    :cond_1
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->requestLayout()V

    .line 2250
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 14

    .prologue
    .line 2179
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2180
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;

    invoke-direct {v8, v9}, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2181
    .local v8, "ss":Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;
    iget v7, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    .line 2182
    .local v7, "position":I
    iget v11, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    iput v11, v8, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->position:I

    .line 2184
    if-ltz v7, :cond_0

    iget-object v11, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    if-ge v7, v11, :cond_0

    .line 2185
    iget-object v11, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    iput-wide v11, v8, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->firstId:J

    .line 2188
    :cond_0
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_5

    .line 2190
    iget v11, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    new-array v10, v11, [I

    .line 2192
    .local v10, "topOffsets":[I
    iget v11, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColWidth:I

    if-lez v11, :cond_3

    .line 2193
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v11, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    if-ge v4, v11, :cond_3

    .line 2194
    invoke-virtual {p0, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 2195
    invoke-virtual {p0, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2196
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 2197
    .local v6, "left":I
    const/4 v1, 0x0

    .line 2198
    .local v1, "col":I
    const-string v11, "mColWidth"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    :goto_1
    iget v11, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColWidth:I

    mul-int/2addr v11, v1

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingLeft()I

    move-result v12

    add-int/2addr v11, v12

    if-le v6, v11, :cond_1

    .line 2204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2207
    :cond_1
    invoke-virtual {p0, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    aput v11, v10, v1

    .line 2193
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "col":I
    .end local v6    # "left":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2214
    .end local v4    # "i":I
    :cond_3
    iput-object v10, v8, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->topOffsets:[I

    .line 2217
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2218
    .local v3, "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;>;"
    iget-object v11, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2219
    .local v2, "cols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;

    invoke-direct {v11, v2}, Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2222
    .end local v2    # "cols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    iput-object v3, v8, Lcom/veclink/waterfall/views/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .line 2224
    .end local v3    # "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/veclink/waterfall/views/StaggeredGridView$ColMap;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "topOffsets":[I
    :cond_5
    return-object v8
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/veclink/waterfall/views/FastScroller;->onSizeChanged(IIII)V

    .line 1028
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    if-eqz v2, :cond_0

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/veclink/waterfall/views/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    .line 659
    .local v20, "intercepted":Z
    if-eqz v20, :cond_0

    .line 660
    const/4 v2, 0x1

    .line 859
    .end local v20    # "intercepted":Z
    :goto_0
    return v2

    .line 663
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v11, v2, 0xff

    .line 666
    .local v11, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->pointToPosition(II)I

    move-result v21

    .line 668
    .local v21, "motionPosition":I
    packed-switch v11, :pswitch_data_0

    .line 859
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 671
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mScroller:Lcom/veclink/waterfall/views/ScrollerCompat;

    invoke-virtual {v2}, Lcom/veclink/waterfall/views/ScrollerCompat;->abortAnimation()V

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastTouchY:F

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastTouchX:F

    .line 675
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastTouchX:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastTouchY:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->pointToPosition(II)I

    move-result v21

    .line 677
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mActivePointerId:I

    .line 678
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchRemainderY:F

    .line 680
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_2

    if-ltz v21, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 683
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    .line 685
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mBeginClick:Z

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    .line 688
    new-instance v2, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/veclink/waterfall/views/StaggeredGridView$CheckForTap;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 691
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 695
    :cond_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidate()V

    goto/16 :goto_1

    .line 701
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v19

    .line 703
    .local v19, "index":I
    if-gez v19, :cond_3

    .line 704
    const-string v2, "StaggeredGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "event stream?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 711
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v27

    .line 712
    .local v27, "y":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastTouchY:F

    sub-float v2, v27, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchRemainderY:F

    add-float v15, v2, v3

    .line 713
    .local v15, "dy":F
    float-to-int v14, v15

    .line 714
    .local v14, "deltaY":I
    int-to-float v2, v14

    sub-float v2, v15, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchRemainderY:F

    .line 716
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 717
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    .line 720
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 721
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastTouchY:F

    .line 723
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 729
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_1

    .line 734
    .end local v14    # "deltaY":I
    .end local v15    # "dy":F
    .end local v19    # "index":I
    .end local v27    # "y":F
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->updateSelectorState()V

    .line 736
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->setPressed(Z)V

    .line 737
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 738
    .local v22, "motionView":Landroid/view/View;
    if-eqz v22, :cond_6

    .line 739
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 741
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v16

    .line 742
    .local v16, "handler":Landroid/os/Handler;
    if-eqz v16, :cond_7

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_8

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 751
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_1

    .line 755
    .end local v16    # "handler":Landroid/os/Handler;
    .end local v22    # "motionView":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mActivePointerId:I

    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v25

    .line 758
    .local v25, "velocity":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    move/from16 v24, v0

    .line 760
    .local v24, "prevTouchMode":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 761
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mScroller:Lcom/veclink/waterfall/views/ScrollerCompat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v25

    float-to-int v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Lcom/veclink/waterfall/views/ScrollerCompat;->fling(IIIIIIII)V

    .line 764
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastTouchY:F

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidate()V

    .line 770
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 772
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    .line 777
    :goto_3
    packed-switch v24, :pswitch_data_1

    .line 853
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mBeginClick:Z

    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_1

    .line 767
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    goto :goto_2

    .line 774
    :cond_a
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    goto :goto_3

    .line 781
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    sub-int v2, v21, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 782
    .local v12, "child":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    .line 783
    .local v26, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v26, v2

    if-lez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v26, v2

    if-gez v2, :cond_11

    const/16 v18, 0x1

    .line 785
    .local v18, "inList":Z
    :goto_5
    if-eqz v12, :cond_15

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_15

    if-eqz v18, :cond_15

    .line 786
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_b

    .line 787
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setPressed(Z)V

    .line 790
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPerformClick:Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;

    if-nez v2, :cond_c

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->invalidate()V

    .line 792
    new-instance v2, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPerformClick:Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;

    .line 795
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPerformClick:Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;

    move-object/from16 v23, v0

    .line 796
    .local v23, "performClick":Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;
    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    .line 797
    invoke-virtual/range {v23 .. v23}, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->rememberWindowAttachCount()V

    .line 799
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_14

    .line 801
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .line 802
    .local v17, "handlerTouch":Landroid/os/Handler;
    if-eqz v17, :cond_e

    .line 803
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 807
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutMode:I

    .line 809
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 810
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    .line 812
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->layoutChildren(Z)V

    .line 813
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/view/View;->setPressed(Z)V

    .line 814
    move-object/from16 v0, p0

    iget v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/veclink/waterfall/views/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 815
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->setPressed(Z)V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 818
    .local v13, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_f

    instance-of v2, v13, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_f

    .line 820
    check-cast v13, Landroid/graphics/drawable/TransitionDrawable;

    .end local v13    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 823
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v2, :cond_10

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 826
    :cond_10
    new-instance v2, Lcom/veclink/waterfall/views/StaggeredGridView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v2, v0, v12, v1}, Lcom/veclink/waterfall/views/StaggeredGridView$1;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;Landroid/view/View;Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/veclink/waterfall/views/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 843
    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 783
    .end local v17    # "handlerTouch":Landroid/os/Handler;
    .end local v18    # "inList":Z
    .end local v23    # "performClick":Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 803
    .restart local v17    # "handlerTouch":Landroid/os/Handler;
    .restart local v18    # "inList":Z
    .restart local v23    # "performClick":Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPendingCheckForLongPress:Lcom/veclink/waterfall/views/StaggeredGridView$CheckForLongPress;

    goto/16 :goto_6

    .line 841
    :cond_13
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    goto :goto_7

    .line 844
    .end local v17    # "handlerTouch":Landroid/os/Handler;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 846
    invoke-virtual/range {v23 .. v23}, Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;->run()V

    .line 850
    .end local v23    # "performClick":Lcom/veclink/waterfall/views/StaggeredGridView$PerformClick;
    :cond_15
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_4

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 777
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2756
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnItemClickListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 2757
    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->playSoundEffect(I)V

    .line 2758
    if-eqz p1, :cond_0

    .line 2759
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2761
    :cond_0
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnItemClickListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/veclink/waterfall/views/StaggeredGridView$OnItemClickListener;->onItemClick(Lcom/veclink/waterfall/views/StaggeredGridView;Landroid/view/View;IJ)V

    move v0, v6

    .line 2765
    :cond_1
    return v0
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    .line 2774
    const/4 v6, 0x0

    .line 2775
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnItemLongClickListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2776
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnItemLongClickListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/veclink/waterfall/views/StaggeredGridView$OnItemLongClickListener;->onItemLongClick(Lcom/veclink/waterfall/views/StaggeredGridView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2779
    :cond_0
    if-nez v6, :cond_1

    .line 2780
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/veclink/waterfall/views/StaggeredGridView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2782
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2784
    :cond_1
    if-eqz v6, :cond_2

    .line 2785
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->performHapticFeedback(I)Z

    .line 2787
    :cond_2
    return v6
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3013
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3014
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3015
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3016
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3019
    :cond_0
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 3020
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3021
    invoke-virtual {p0, v3}, Lcom/veclink/waterfall/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3022
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3023
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3024
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3025
    iget v4, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3029
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 3020
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3029
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 2566
    if-eq p1, v6, :cond_0

    .line 2567
    iput p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorPosition:I

    .line 2570
    :cond_0
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2571
    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2573
    instance-of v2, p2, Lcom/veclink/waterfall/views/StaggeredGridView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2574
    check-cast v2, Lcom/veclink/waterfall/views/StaggeredGridView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/veclink/waterfall/views/StaggeredGridView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2578
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/veclink/waterfall/views/StaggeredGridView;->positionSelector(IIII)V

    .line 2581
    iget-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 2582
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2583
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 2584
    invoke-direct {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2585
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->refreshDrawableState()V

    .line 2588
    :cond_2
    return-void

    .line 2583
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 949
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnScrollListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnScrollListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView$OnScrollListener;->onScrollStateChanged(Lcom/veclink/waterfall/views/StaggeredGridView;I)V

    .line 952
    iput p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLastScrollState:I

    .line 955
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1246
    iget-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mPopulating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastChildLayout:Z

    if-nez v0, :cond_0

    .line 1247
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1249
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2086
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    .line 2087
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mObserver:Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2093
    :cond_0
    invoke-direct {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->clearAllState()V

    .line 2094
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2095
    iput-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDataChanged:Z

    .line 2097
    if-eqz p1, :cond_1

    .line 2098
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mObserver:Lcom/veclink/waterfall/views/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2099
    iget-object v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mRecycler:Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/veclink/waterfall/views/StaggeredGridView$RecycleBin;->setViewTypeCount(I)V

    .line 2100
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    iput-boolean v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mHasStableIds:Z

    .line 2104
    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->populate(Z)V

    .line 2105
    return-void

    .line 2102
    :cond_1
    iput-boolean v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mHasStableIds:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2104
    goto :goto_1
.end method

.method public setColumnCount(I)V
    .locals 4
    .param p1, "colCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 532
    if-ge p1, v0, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 533
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column count must be at least 1 - received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :cond_0
    iget v2, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    if-eq p1, v2, :cond_2

    .line 537
    .local v0, "needsPopulate":Z
    :goto_0
    iput p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCountSetting:I

    iput p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mColCount:I

    .line 538
    if-eqz v0, :cond_1

    .line 539
    invoke-direct {p0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->populate(Z)V

    .line 541
    :cond_1
    return-void

    .end local v0    # "needsPopulate":Z
    :cond_2
    move v0, v1

    .line 536
    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "mDrawSelectorOnTop"    # Z

    .prologue
    .line 3037
    iput-boolean p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 3038
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScrollEnabled:Z

    .line 416
    if-eqz p1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lcom/veclink/waterfall/views/FastScroller;

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/veclink/waterfall/views/FastScroller;-><init>(Landroid/content/Context;Lcom/veclink/waterfall/views/StaggeredGridView;)V

    iput-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    invoke-virtual {v0}, Lcom/veclink/waterfall/views/FastScroller;->stop()V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mFastScroller:Lcom/veclink/waterfall/views/FastScroller;

    goto :goto_0
.end method

.method public setMinColumnWidth(I)V
    .locals 1
    .param p1, "minColWidth"    # I

    .prologue
    .line 551
    iput p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mMinColWidth:I

    .line 552
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->setColumnCount(I)V

    .line 553
    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 918
    iput p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mNextSelectedPosition:I

    .line 919
    invoke-virtual {p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mNextSelectedRowId:J

    .line 920
    return-void
.end method

.method public setOnItemClickListener(Lcom/veclink/waterfall/views/StaggeredGridView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/veclink/waterfall/views/StaggeredGridView$OnItemClickListener;

    .prologue
    .line 2934
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnItemClickListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnItemClickListener;

    .line 2935
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/veclink/waterfall/views/StaggeredGridView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/veclink/waterfall/views/StaggeredGridView$OnItemLongClickListener;

    .prologue
    .line 2970
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2971
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->setLongClickable(Z)V

    .line 2973
    :cond_0
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnItemLongClickListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnItemLongClickListener;

    .line 2974
    return-void
.end method

.method public setOnScrollListener(Lcom/veclink/waterfall/views/StaggeredGridView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/veclink/waterfall/views/StaggeredGridView$OnScrollListener;

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mOnScrollListener:Lcom/veclink/waterfall/views/StaggeredGridView$OnScrollListener;

    .line 1534
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->invokeOnItemScrollListener()V

    .line 1535
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 930
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 935
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 936
    if-ltz p1, :cond_2

    .line 937
    invoke-virtual {p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView;->setNextSelectedPositionInt(I)V

    .line 940
    :cond_2
    const-string v0, "StaggeredGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===========position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    if-ltz p1, :cond_0

    .line 942
    const/4 v0, 0x4

    iput v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mLayoutMode:I

    .line 944
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->requestLayout()V

    goto :goto_0
.end method

.method public setSelectionToTop()V
    .locals 1

    .prologue
    .line 2148
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->removeAllViews()V

    .line 2151
    invoke-direct {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->resetStateForGridTop()V

    .line 2154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->populate(Z)V

    .line 2155
    return-void
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 2851
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2852
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2868
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2869
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2870
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/veclink/waterfall/views/StaggeredGridView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2873
    :cond_0
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2875
    iget-object v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 2887
    :goto_0
    return-void

    .line 2879
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2880
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2881
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionLeftPadding:I

    .line 2882
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionTopPadding:I

    .line 2883
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionRightPadding:I

    .line 2884
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelectionBottomPadding:I

    .line 2885
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2886
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->updateSelectorState()V

    goto :goto_0
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2911
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mBeginClick:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2919
    iget v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2924
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2922
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2919
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateSelectorState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2890
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2891
    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2892
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/veclink/waterfall/views/StaggeredGridView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2897
    :cond_0
    :goto_0
    return-void

    .line 2894
    :cond_1
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

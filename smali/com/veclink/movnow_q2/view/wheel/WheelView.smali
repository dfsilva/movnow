.class public Lcom/veclink/movnow_q2/view/wheel/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0x0

.field private static final PADDING:I = 0xa


# instance fields
.field private SHADOWS_COLORS:[I

.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changeAllItemSizeByCurrentitem:Z

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movnow_q2/view/wheel/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private currentItemColor:I

.field private currentItemSize:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private drawShadows:Z

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private label:Ljava/lang/String;

.field private labelColor:I

.field private labelSize:I

.field private mContext:Landroid/content/Context;

.field private recycle:Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;

.field private scroller:Lcom/veclink/movnow_q2/view/wheel/WheelScroller;

.field scrollingListener:Lcom/veclink/movnow_q2/view/wheel/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

.field private visibleItems:I

.field private weelBackgroundColor:I

.field private wheelBackground:I

.field private wheelCover:I

.field private wheelForeground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x7f02018d

    const/16 v2, 0x12

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->SHADOWS_COLORS:[I

    .line 68
    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    .line 71
    const/4 v0, 0x5

    iput v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->visibleItems:I

    .line 74
    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemHeight:I

    .line 80
    iput v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelBackground:I

    .line 81
    iput v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelForeground:I

    .line 82
    const v0, 0x7f02018c

    iput v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelCover:I

    .line 83
    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->weelBackgroundColor:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->drawShadows:Z

    .line 98
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isCyclic:Z

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->label:Ljava/lang/String;

    .line 108
    iput v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelSize:I

    .line 110
    const/16 v0, -0x100

    iput v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelColor:I

    .line 112
    const v0, -0x777778

    iput v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemColor:I

    .line 114
    iput v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemSize:I

    .line 116
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->changeAllItemSizeByCurrentitem:Z

    .line 122
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;-><init>(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->recycle:Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;

    .line 125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->changingListeners:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->clickingListeners:Ljava/util/List;

    .line 171
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;-><init>(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingListener:Lcom/veclink/movnow_q2/view/wheel/WheelScroller$ScrollingListener;

    .line 248
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView$2;-><init>(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 159
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->initData(Landroid/content/Context;)V

    .line 160
    return-void

    .line 55
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 151
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v6, 0x24

    const/16 v5, 0x12

    const/4 v4, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->SHADOWS_COLORS:[I

    .line 68
    iput v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    .line 71
    const/4 v1, 0x5

    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->visibleItems:I

    .line 74
    iput v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemHeight:I

    .line 80
    const v1, 0x7f02018d

    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelBackground:I

    .line 81
    const v1, 0x7f02018d

    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelForeground:I

    .line 82
    const v1, 0x7f02018c

    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelCover:I

    .line 83
    iput v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->weelBackgroundColor:I

    .line 90
    iput-boolean v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->drawShadows:Z

    .line 98
    iput-boolean v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isCyclic:Z

    .line 106
    const-string v1, ""

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->label:Ljava/lang/String;

    .line 108
    iput v5, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelSize:I

    .line 110
    const/16 v1, -0x100

    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelColor:I

    .line 112
    const v1, -0x777778

    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemColor:I

    .line 114
    iput v5, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemSize:I

    .line 116
    iput-boolean v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->changeAllItemSizeByCurrentitem:Z

    .line 122
    new-instance v1, Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;-><init>(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->recycle:Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;

    .line 125
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->changingListeners:Ljava/util/List;

    .line 126
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    .line 127
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->clickingListeners:Ljava/util/List;

    .line 171
    new-instance v1, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView$1;-><init>(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingListener:Lcom/veclink/movnow_q2/view/wheel/WheelScroller$ScrollingListener;

    .line 248
    new-instance v1, Lcom/veclink/movnow_q2/view/wheel/WheelView$2;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView$2;-><init>(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 134
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->mContext:Landroid/content/Context;

    .line 135
    sget-object v1, Lcom/veclink/movnow/healthy_q2/R$styleable;->WheeView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemSize:I

    .line 137
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelSize:I

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemColor:I

    .line 139
    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemColor:I

    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelColor:I

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemSize:I

    if-le v1, v6, :cond_0

    .line 142
    iput v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemSize:I

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->initData(Landroid/content/Context;)V

    .line 145
    return-void

    .line 55
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/view/wheel/WheelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/veclink/movnow_q2/view/wheel/WheelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/view/wheel/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/view/wheel/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .prologue
    .line 52
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/veclink/movnow_q2/view/wheel/WheelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/view/wheel/WheelView;)Lcom/veclink/movnow_q2/view/wheel/WheelScroller;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scroller:Lcom/veclink/movnow_q2/view/wheel/WheelScroller;

    return-object v0
.end method

.method private addViewItem(IZ)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "first"    # Z

    .prologue
    const/4 v2, 0x0

    .line 926
    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v1

    .line 927
    .local v1, "view":Landroid/view/View;
    iget v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    if-ne p1, v3, :cond_0

    move-object v0, v1

    .line 928
    check-cast v0, Landroid/widget/TextView;

    .line 929
    .local v0, "textView":Landroid/widget/TextView;
    iget v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 930
    iget v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 932
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-boolean v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->changeAllItemSizeByCurrentitem:Z

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 933
    check-cast v0, Landroid/widget/TextView;

    .line 934
    .restart local v0    # "textView":Landroid/widget/TextView;
    iget v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 936
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    if-eqz v1, :cond_2

    .line 937
    if-eqz p2, :cond_3

    .line 938
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 943
    :goto_0
    const/4 v2, 0x1

    .line 946
    :cond_2
    return v2

    .line 940
    :cond_3
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private buildViewForMeasuring()V
    .locals 6

    .prologue
    .line 904
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 905
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->recycle:Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;

    iget-object v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    new-instance v5, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;

    invoke-direct {v5}, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/veclink/movnow_q2/view/wheel/ItemsRange;)I

    .line 911
    :goto_0
    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->visibleItems:I

    div-int/lit8 v0, v2, 0x2

    .line 912
    .local v0, "addItems":I
    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    add-int v1, v2, v0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    .line 913
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    .line 912
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 907
    .end local v0    # "addItems":I
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->createItemsLayout()V

    goto :goto_0

    .line 917
    .restart local v0    # "addItems":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 6
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 572
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->initResourcesIfNecessary()V

    .line 575
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 578
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 580
    .local v0, "width":I
    if-ne p2, v5, :cond_1

    .line 581
    move v0, p1

    .line 593
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, -0x14

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 596
    return v0

    .line 583
    :cond_1
    add-int/lit8 v0, v0, 0x14

    .line 586
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 588
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 589
    move v0, p1

    goto :goto_0
.end method

.method private createItemsLayout()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 894
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 895
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 897
    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 8
    .param p1, "delta"    # I

    .prologue
    .line 739
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    .line 741
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v3

    .line 742
    .local v3, "itemHeight":I
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    div-int v0, v6, v3

    .line 744
    .local v0, "count":I
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    sub-int v5, v6, v0

    .line 745
    .local v5, "pos":I
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    invoke-interface {v6}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 747
    .local v2, "itemCount":I
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    rem-int v1, v6, v3

    .line 748
    .local v1, "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    if-gt v6, v7, :cond_0

    .line 749
    const/4 v1, 0x0

    .line 751
    :cond_0
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isCyclic:Z

    if-eqz v6, :cond_6

    if-lez v2, :cond_6

    .line 752
    if-lez v1, :cond_2

    .line 753
    add-int/lit8 v5, v5, -0x1

    .line 754
    add-int/lit8 v0, v0, 0x1

    .line 760
    :cond_1
    :goto_0
    if-gez v5, :cond_3

    .line 761
    add-int/2addr v5, v2

    goto :goto_0

    .line 755
    :cond_2
    if-gez v1, :cond_1

    .line 756
    add-int/lit8 v5, v5, 0x1

    .line 757
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 763
    :cond_3
    rem-int/2addr v5, v2

    .line 781
    :cond_4
    :goto_1
    iget v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    .line 782
    .local v4, "offset":I
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    if-eq v5, v6, :cond_a

    .line 783
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(IZ)V

    .line 789
    :goto_2
    mul-int v6, v0, v3

    sub-int v6, v4, v6

    iput v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    .line 790
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_5

    .line 791
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    .line 793
    :cond_5
    return-void

    .line 766
    .end local v4    # "offset":I
    :cond_6
    if-gez v5, :cond_7

    .line 767
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    .line 768
    const/4 v5, 0x0

    goto :goto_1

    .line 769
    :cond_7
    if-lt v5, v2, :cond_8

    .line 770
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    sub-int/2addr v6, v2

    add-int/lit8 v0, v6, 0x1

    .line 771
    add-int/lit8 v5, v2, -0x1

    goto :goto_1

    .line 772
    :cond_8
    if-lez v5, :cond_9

    if-lez v1, :cond_9

    .line 773
    add-int/lit8 v5, v5, -0x1

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 775
    :cond_9
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_4

    if-gez v1, :cond_4

    .line 776
    add-int/lit8 v5, v5, 0x1

    .line 777
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 785
    .restart local v4    # "offset":I
    :cond_a
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->invalidate()V

    goto :goto_2
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 687
    .local v0, "center":I
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    const-wide v5, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 688
    .local v1, "offset":I
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    sub-int v5, v0, v1

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getWidth()I

    move-result v6

    add-int v7, v0, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 689
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 690
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 691
    .local v2, "paint":Landroid/graphics/Paint;
    iget v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 692
    iget v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 693
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->label:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    int-to-float v4, v4

    div-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 694
    return-void
.end method

.method private drawCoverRect(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 697
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelCover:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 698
    .local v0, "coverDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 699
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 700
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 673
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 675
    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 676
    .local v0, "top":I
    const/high16 v1, 0x41200000    # 10.0f

    neg-int v2, v0

    iget v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 677
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 678
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 679
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 660
    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 661
    .local v0, "height":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v5, v5, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 662
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 664
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 665
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 666
    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 3
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v2, 0x0

    .line 539
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 540
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemHeight:I

    .line 543
    :cond_0
    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemHeight:I

    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->visibleItems:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemHeight:I

    mul-int/lit8 v2, v2, 0x0

    div-int/lit8 v2, v2, 0x32

    sub-int v0, v1, v2

    .line 545
    .local v0, "desired":I
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getItemHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 553
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 554
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemHeight:I

    .line 562
    :goto_0
    return v0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemHeight:I

    .line 559
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemHeight:I

    goto :goto_0

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getItemsRange()Lcom/veclink/movnow_q2/view/wheel/ItemsRange;
    .locals 7

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v3

    if-nez v3, :cond_0

    .line 811
    const/4 v3, 0x0

    .line 833
    :goto_0
    return-object v3

    .line 814
    :cond_0
    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    .line 815
    .local v2, "first":I
    const/4 v0, 0x1

    .line 817
    .local v0, "count":I
    :goto_1
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 818
    add-int/lit8 v2, v2, -0x1

    .line 819
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 822
    :cond_1
    iget v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_3

    .line 823
    iget v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    if-lez v3, :cond_2

    .line 824
    add-int/lit8 v2, v2, -0x1

    .line 826
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 829
    iget v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 830
    .local v1, "emptyItems":I
    sub-int/2addr v2, v1

    .line 831
    int-to-double v3, v0

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 833
    .end local v1    # "emptyItems":I
    :cond_3
    new-instance v3, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;

    invoke-direct {v3, v2, v0}, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;-><init>(II)V

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/WheelScroller;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingListener:Lcom/veclink/movnow_q2/view/wheel/WheelScroller$ScrollingListener;

    invoke-direct {v0, v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelScroller;-><init>(Landroid/content/Context;Lcom/veclink/movnow_q2/view/wheel/WheelScroller$ScrollingListener;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scroller:Lcom/veclink/movnow_q2/view/wheel/WheelScroller;

    .line 168
    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 521
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 525
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 527
    :cond_2
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->weelBackgroundColor:I

    if-nez v0, :cond_3

    .line 528
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelBackground:I

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setBackgroundResource(I)V

    .line 529
    :cond_3
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 955
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layout(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 635
    add-int/lit8 v0, p1, -0x14

    .line 637
    .local v0, "itemsWidth":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v0, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 638
    return-void
.end method

.method private rebuildItems()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 842
    const/4 v3, 0x0

    .line 843
    .local v3, "updated":Z
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemsRange()Lcom/veclink/movnow_q2/view/wheel/ItemsRange;

    move-result-object v2

    .line 844
    .local v2, "range":Lcom/veclink/movnow_q2/view/wheel/ItemsRange;
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    .line 845
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->recycle:Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;

    iget-object v7, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    invoke-virtual {v6, v7, v8, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/veclink/movnow_q2/view/wheel/ItemsRange;)I

    move-result v0

    .line 846
    .local v0, "first":I
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    if-eq v6, v0, :cond_4

    move v3, v4

    .line 847
    :goto_0
    iput v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    .line 853
    .end local v0    # "first":I
    :goto_1
    if-nez v3, :cond_1

    .line 854
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;->getFirst()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;->getCount()I

    move-result v7

    if-eq v6, v7, :cond_6

    :cond_0
    move v3, v4

    .line 857
    :cond_1
    :goto_2
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;->getFirst()I

    move-result v7

    if-le v6, v7, :cond_8

    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;->getLast()I

    move-result v7

    if-gt v6, v7, :cond_8

    .line 858
    iget v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;->getFirst()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 859
    invoke-direct {p0, v1, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-nez v6, :cond_7

    .line 868
    .end local v1    # "i":I
    :cond_2
    :goto_4
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    .line 869
    .restart local v0    # "first":I
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .restart local v1    # "i":I
    :goto_5
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 870
    iget v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4, v5}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->addViewItem(IZ)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 871
    add-int/lit8 v0, v0, 0x1

    .line 869
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "i":I
    :cond_4
    move v3, v5

    .line 846
    goto :goto_0

    .line 849
    .end local v0    # "first":I
    :cond_5
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->createItemsLayout()V

    .line 850
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    move v3, v5

    .line 854
    goto :goto_2

    .line 862
    .restart local v1    # "i":I
    :cond_7
    iput v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    .line 858
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 865
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;->getFirst()I

    move-result v4

    iput v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    goto :goto_4

    .line 874
    .restart local v0    # "first":I
    .restart local v1    # "i":I
    :cond_9
    iput v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    .line 876
    return v3
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->calculateLayoutWidth(II)I

    .line 885
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->layout(II)V

    .line 887
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public addClickingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/veclink/movnow_q2/view/wheel/OnWheelClickedListener;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public addScrollingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public drawShadows()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->drawShadows:Z

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    return v0
.end method

.method public getCurrentItemColor()I
    .locals 1

    .prologue
    .line 1013
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemColor:I

    return v0
.end method

.method public getCurrentItemSize()I
    .locals 1

    .prologue
    .line 1021
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemSize:I

    return v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 965
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    invoke-interface {v1}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 966
    :cond_0
    const/4 v1, 0x0

    .line 978
    :goto_0
    return-object v1

    .line 968
    :cond_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    invoke-interface {v1}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 969
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 970
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->recycle:Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v3}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 972
    :cond_2
    :goto_1
    if-gez p1, :cond_3

    .line 973
    add-int/2addr p1, v0

    goto :goto_1

    .line 977
    :cond_3
    rem-int/2addr p1, v0

    .line 978
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->recycle:Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getLabelColor()I
    .locals 1

    .prologue
    .line 1005
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelColor:I

    return v0
.end method

.method public getLabelSize()I
    .locals 1

    .prologue
    .line 997
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelSize:I

    return v0
.end method

.method public getViewAdapter()Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 4
    .param p1, "clearCaches"    # Z

    .prologue
    .line 498
    if-eqz p1, :cond_2

    .line 499
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->recycle:Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;->clearAll()V

    .line 500
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 503
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    .line 509
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->invalidate()V

    .line 510
    return-void

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->recycle:Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->firstItem:I

    new-instance v3, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;

    invoke-direct {v3}, Lcom/veclink/movnow_q2/view/wheel/ItemsRange;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/veclink/movnow_q2/view/wheel/ItemsRange;)I

    goto :goto_0
.end method

.method public isChangeAllItemSizeByCurrentitem()Z
    .locals 1

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->changeAllItemSizeByCurrentitem:Z

    return v0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isCyclic:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->label:Ljava/lang/String;

    return-object v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 299
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;

    .line 300
    .local v1, "listener":Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;->onChanged(Lcom/veclink/movnow_q2/view/wheel/WheelView;II)V

    goto :goto_0

    .line 302
    .end local v1    # "listener":Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 358
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/wheel/OnWheelClickedListener;

    .line 359
    .local v1, "listener":Lcom/veclink/movnow_q2/view/wheel/OnWheelClickedListener;
    invoke-interface {v1, p0, p1}, Lcom/veclink/movnow_q2/view/wheel/OnWheelClickedListener;->onItemClicked(Lcom/veclink/movnow_q2/view/wheel/WheelView;I)V

    goto :goto_0

    .line 361
    .end local v1    # "listener":Lcom/veclink/movnow_q2/view/wheel/OnWheelClickedListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 3

    .prologue
    .line 333
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;

    .line 334
    .local v1, "listener":Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;->onScrollingFinished(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    goto :goto_0

    .line 336
    .end local v1    # "listener":Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 324
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;

    .line 325
    .local v1, "listener":Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;->onScrollingStarted(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    goto :goto_0

    .line 327
    .end local v1    # "listener":Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 642
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 644
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->updateView()V

    .line 646
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 647
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 648
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelForeground:I

    const v1, 0x7f02018f

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->drawCoverRect(Landroid/graphics/Canvas;)V

    .line 652
    :cond_0
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->drawShadows:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    .line 653
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 626
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->layout(II)V

    .line 627
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 601
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 602
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 603
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 604
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 606
    .local v2, "heightSize":I
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->buildViewForMeasuring()V

    .line 608
    invoke-direct {p0, v5, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 611
    .local v3, "width":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_1

    .line 612
    move v0, v2

    .line 621
    .local v0, "height":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setMeasuredDimension(II)V

    .line 622
    return-void

    .line 614
    .end local v0    # "height":I
    :cond_1
    iget-object v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    .line 616
    .restart local v0    # "height":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 617
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 704
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getViewAdapter()Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 731
    :cond_0
    :goto_0
    return v2

    .line 708
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 731
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scroller:Lcom/veclink/movnow_q2/view/wheel/WheelScroller;

    invoke-virtual {v2, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 710
    :pswitch_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 711
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 716
    :pswitch_1
    iget-boolean v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_2

    .line 717
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 718
    .local v0, "distance":I
    if-lez v0, :cond_3

    .line 719
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 723
    :goto_2
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .line 724
    .local v1, "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 725
    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->notifyClickListenersAboutClick(I)V

    goto :goto_1

    .line 721
    .end local v1    # "items":I
    :cond_3
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeChangingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public removeClickingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/veclink/movnow_q2/view/wheel/OnWheelClickedListener;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public removeScrollingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method public scroll(II)V
    .locals 3
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    sub-int v0, v1, v2

    .line 802
    .local v0, "distance":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scroller:Lcom/veclink/movnow_q2/view/wheel/WheelScroller;

    invoke-virtual {v1, v0, p2}, Lcom/veclink/movnow_q2/view/wheel/WheelScroller;->scroll(II)V

    .line 803
    return-void
.end method

.method public setChangeAllItemSizeByCurrentitem(Z)V
    .locals 0
    .param p1, "changeAllItemSizeByCurrentitem"    # Z

    .prologue
    .line 1033
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->changeAllItemSizeByCurrentitem:Z

    .line 1034
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(IZ)V

    .line 425
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x0

    .line 379
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    invoke-interface {v4}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    invoke-interface {v4}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 384
    .local v0, "itemCount":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_4

    .line 385
    :cond_2
    iget-boolean v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isCyclic:Z

    if-eqz v4, :cond_0

    .line 386
    :goto_1
    if-gez p1, :cond_3

    .line 387
    add-int/2addr p1, v0

    goto :goto_1

    .line 389
    :cond_3
    rem-int/2addr p1, v0

    .line 394
    :cond_4
    iget v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    if-eq p1, v4, :cond_0

    .line 395
    if-eqz p2, :cond_7

    .line 396
    iget v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    sub-int v1, p1, v4

    .line 397
    .local v1, "itemsToScroll":I
    iget-boolean v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isCyclic:Z

    if-eqz v4, :cond_5

    .line 398
    iget v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    .line 399
    .local v3, "scroll":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 400
    if-gez v1, :cond_6

    move v1, v3

    .line 403
    .end local v3    # "scroll":I
    :cond_5
    :goto_2
    invoke-virtual {p0, v1, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scroll(II)V

    .line 414
    .end local v1    # "itemsToScroll":I
    :goto_3
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v4}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_0

    .line 400
    .restart local v1    # "itemsToScroll":I
    .restart local v3    # "scroll":I
    :cond_6
    neg-int v1, v3

    goto :goto_2

    .line 405
    .end local v1    # "itemsToScroll":I
    .end local v3    # "scroll":I
    :cond_7
    iput v6, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scrollingOffset:I

    .line 407
    iget v2, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    .line 408
    .local v2, "old":I
    iput p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    .line 410
    iget v4, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItem:I

    invoke-virtual {p0, v2, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->notifyChangingListeners(II)V

    .line 412
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->invalidate()V

    goto :goto_3
.end method

.method public setCurrentItemColor(I)V
    .locals 0
    .param p1, "currentItemColor"    # I

    .prologue
    .line 1017
    iput p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemColor:I

    .line 1018
    return-void
.end method

.method public setCurrentItemSize(I)V
    .locals 0
    .param p1, "currentItemSize"    # I

    .prologue
    .line 1025
    iput p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->currentItemSize:I

    .line 1026
    return-void
.end method

.method public setCyclic(Z)V
    .locals 1
    .param p1, "isCyclic"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->isCyclic:Z

    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->invalidateWheel(Z)V

    .line 442
    return-void
.end method

.method public setDrawShadows(Z)V
    .locals 0
    .param p1, "drawShadows"    # Z

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->drawShadows:Z

    .line 458
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scroller:Lcom/veclink/movnow_q2/view/wheel/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 217
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 993
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->label:Ljava/lang/String;

    .line 994
    return-void
.end method

.method public setLabelColor(I)V
    .locals 0
    .param p1, "labelColor"    # I

    .prologue
    .line 1009
    iput p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelColor:I

    .line 1010
    return-void
.end method

.method public setLabelSize(I)V
    .locals 0
    .param p1, "labelSize"    # I

    .prologue
    .line 1001
    iput p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->labelSize:I

    .line 1002
    return-void
.end method

.method public setShadowColor(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "middle"    # I
    .param p3, "end"    # I

    .prologue
    .line 467
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->SHADOWS_COLORS:[I

    .line 468
    return-void
.end method

.method public setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V
    .locals 2
    .param p1, "viewAdapter"    # Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    .line 271
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->viewAdapter:Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 274
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->invalidateWheel(Z)V

    .line 275
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->visibleItems:I

    .line 237
    return-void
.end method

.method public setWheelBackground(I)V
    .locals 1
    .param p1, "resource"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelBackground:I

    .line 476
    iget v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelBackground:I

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setBackgroundResource(I)V

    .line 477
    return-void
.end method

.method public setWheelBackgroundColor(I)V
    .locals 0
    .param p1, "resource"    # I

    .prologue
    .line 480
    iput p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->weelBackgroundColor:I

    .line 481
    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setBackgroundColor(I)V

    .line 482
    return-void
.end method

.method public setWheelForeground(I)V
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 489
    iput p1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelForeground:I

    .line 490
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->wheelForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 491
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/wheel/WheelView;->scroller:Lcom/veclink/movnow_q2/view/wheel/WheelScroller;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelScroller;->stopScrolling()V

    .line 986
    return-void
.end method

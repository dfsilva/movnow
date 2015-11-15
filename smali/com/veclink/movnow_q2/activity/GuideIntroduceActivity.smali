.class public Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "GuideIntroduceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field isFirstIn:Z

.field private mBtn:Landroid/widget/TextView;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->isFirstIn:Z

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method private initPager()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->viewList:Ljava/util/List;

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "images":[I
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    new-array v1, v3, [I

    .end local v1    # "images":[I
    fill-array-data v1, :array_0

    .line 103
    .restart local v1    # "images":[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->viewList:Ljava/util/List;

    aget v3, v1, v0

    invoke-direct {p0, v3}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->initView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isSpanish()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    new-array v1, v3, [I

    .end local v1    # "images":[I
    fill-array-data v1, :array_1

    .restart local v1    # "images":[I
    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isTR()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    new-array v1, v3, [I

    .end local v1    # "images":[I
    fill-array-data v1, :array_2

    .restart local v1    # "images":[I
    goto :goto_0

    .line 100
    :cond_2
    new-array v1, v3, [I

    .end local v1    # "images":[I
    fill-array-data v1, :array_3

    .restart local v1    # "images":[I
    goto :goto_0

    .line 108
    .restart local v0    # "i":I
    :cond_3
    return-void

    .line 94
    nop

    :array_0
    .array-data 4
        0x7f0200a9
        0x7f0200aa
        0x7f0200ab
        0x7f0200ac
        0x7f0200ad
    .end array-data

    .line 96
    :array_1
    .array-data 4
        0x7f0200b3
        0x7f0200b4
        0x7f0200b5
        0x7f0200b6
        0x7f0200b7
    .end array-data

    .line 98
    :array_2
    .array-data 4
        0x7f0200b8
        0x7f0200b9
        0x7f0200ba
        0x7f0200bb
        0x7f0200bc
    .end array-data

    .line 100
    :array_3
    .array-data 4
        0x7f0200ae
        0x7f0200af
        0x7f0200b0
        0x7f0200b1
        0x7f0200b2
    .end array-data
.end method

.method private initView(I)Landroid/view/View;
    .locals 6
    .param p1, "res"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030041

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f060100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 114
    .local v0, "imageView":Landroid/widget/LinearLayout;
    const v3, 0x7f060101

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 115
    .local v1, "textview":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 117
    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 41
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mBtn:Landroid/widget/TextView;

    .line 42
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mBtn:Landroid/widget/TextView;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 52
    :goto_0
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->initPager()V

    .line 53
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$ViewPagerAdapter;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->viewList:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$ViewPagerAdapter;-><init>(Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$2;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isSpanish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mBtn:Landroid/widget/TextView;

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isTR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mBtn:Landroid/widget/TextView;

    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mBtn:Landroid/widget/TextView;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.class public Lcom/veclink/movnow_q2/activity/ActivityGuidePage;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "ActivityGuidePage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/activity/ActivityGuidePage$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final SHAREDPREFERENCES_NAME:Ljava/lang/String; = "first_pref"


# instance fields
.field isFirstIn:Z

.field private mBtn:Landroid/widget/TextView;

.field private mDotsLayout:Landroid/widget/LinearLayout;

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
    .line 20
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->isFirstIn:Z

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mDotsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->setGuided()V

    return-void
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->openHome()V

    return-void
.end method

.method private initDot()Landroid/view/View;
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initDots(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mDotsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->initDot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mDotsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 119
    return-void
.end method

.method private initPager()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->viewList:Ljava/util/List;

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "images":[I
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    new-array v1, v3, [I

    .end local v1    # "images":[I
    fill-array-data v1, :array_0

    .line 108
    .restart local v1    # "images":[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->viewList:Ljava/util/List;

    aget v3, v1, v0

    invoke-direct {p0, v3}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->initView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isRuuna()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    new-array v1, v3, [I

    .end local v1    # "images":[I
    fill-array-data v1, :array_1

    .restart local v1    # "images":[I
    goto :goto_0

    .line 106
    :cond_1
    new-array v1, v3, [I

    .end local v1    # "images":[I
    fill-array-data v1, :array_2

    .restart local v1    # "images":[I
    goto :goto_0

    .line 111
    .restart local v0    # "i":I
    :cond_2
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->initDots(I)V

    .line 112
    return-void

    .line 102
    nop

    :array_0
    .array-data 4
        0x7f020068
        0x7f020069
        0x7f02006a
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x7f02006e
        0x7f02006f
        0x7f020070
    .end array-data

    .line 106
    :array_2
    .array-data 4
        0x7f02006b
        0x7f02006c
        0x7f02006d
    .end array-data
.end method

.method private initView(I)Landroid/view/View;
    .locals 5
    .param p1, "res"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030041

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f060100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 128
    .local v0, "imageView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 129
    return-object v1
.end method

.method private openHome()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->startActivity(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->finish()V

    .line 136
    return-void
.end method

.method private setGuided()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    const-string v2, "first_pref"

    invoke-virtual {p0, v2, v3}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 143
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isFirstIn"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->setContentView(I)V

    .line 33
    const v1, 0x7f06002f

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mPager:Landroid/support/v4/view/ViewPager;

    .line 34
    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mDotsLayout:Landroid/widget/LinearLayout;

    .line 35
    const v1, 0x7f060030

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mBtn:Landroid/widget/TextView;

    .line 36
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mBtn:Landroid/widget/TextView;

    const v2, 0x7f020155

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 45
    :goto_0
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->initPager()V

    .line 46
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$ViewPagerAdapter;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->viewList:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$ViewPagerAdapter;-><init>(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 47
    const-string v1, "first_pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "isFirstIn"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->isFirstIn:Z

    .line 51
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;-><init>(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 87
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$2;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$2;-><init>(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void

    .line 38
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isEnglish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mBtn:Landroid/widget/TextView;

    const v2, 0x7f020158

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mBtn:Landroid/widget/TextView;

    const v2, 0x7f02018f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 42
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mBtn:Landroid/widget/TextView;

    const v2, 0x7f0c0070

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

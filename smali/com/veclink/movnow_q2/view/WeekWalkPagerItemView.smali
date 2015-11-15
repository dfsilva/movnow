.class public Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;
.super Landroid/widget/LinearLayout;
.source "WeekWalkPagerItemView.java"


# instance fields
.field private histotySportCaloriesView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

.field private histotySportDistanceView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

.field private histotySportStepView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

.field private llHistorySportCalories:Landroid/widget/LinearLayout;

.field private llHistorySportDistance:Landroid/widget/LinearLayout;

.field private llHistorySportFri:Landroid/widget/LinearLayout;

.field private llHistorySportMon:Landroid/widget/LinearLayout;

.field private llHistorySportSat:Landroid/widget/LinearLayout;

.field private llHistorySportSteps:Landroid/widget/LinearLayout;

.field private llHistorySportSun:Landroid/widget/LinearLayout;

.field private llHistorySportThus:Landroid/widget/LinearLayout;

.field private llHistorySportTues:Landroid/widget/LinearLayout;

.field private llHistorySportWen:Landroid/widget/LinearLayout;

.field private llHistoryWeek:Landroid/widget/LinearLayout;

.field private llHistoryWeekDetail:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private sportGraphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;

.field private tvDistanceAccount:Landroid/widget/TextView;

.field private tvDistancesUint:Landroid/widget/TextView;

.field private tvFri:Landroid/widget/TextView;

.field private tvFriUnit:Landroid/widget/TextView;

.field private tvKclaAccount:Landroid/widget/TextView;

.field private tvMon:Landroid/widget/TextView;

.field private tvMonUnit:Landroid/widget/TextView;

.field private tvSat:Landroid/widget/TextView;

.field private tvSatUnit:Landroid/widget/TextView;

.field private tvStepAccount:Landroid/widget/TextView;

.field private tvSun:Landroid/widget/TextView;

.field private tvSunUnit:Landroid/widget/TextView;

.field private tvThus:Landroid/widget/TextView;

.field private tvThusUnit:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

.field private tvTues:Landroid/widget/TextView;

.field private tvTuesUnit:Landroid/widget/TextView;

.field private tvWen:Landroid/widget/TextView;

.field private tvWenUnit:Landroid/widget/TextView;

.field private weekdayGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->initView(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->mContext:Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->initView(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->initView(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03004a

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "pagerChildren":Landroid/view/View;
    const v2, 0x7f0600b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvTime:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f060088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->weekdayGridView:Landroid/widget/GridView;

    .line 97
    const v2, 0x7f06010d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->histotySportStepView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    .line 98
    const v2, 0x7f06010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->histotySportDistanceView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    .line 99
    const v2, 0x7f060111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->histotySportCaloriesView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    .line 101
    const v2, 0x7f06010b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportSteps:Landroid/widget/LinearLayout;

    .line 102
    const v2, 0x7f06010e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportDistance:Landroid/widget/LinearLayout;

    .line 103
    const v2, 0x7f060110

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportCalories:Landroid/widget/LinearLayout;

    .line 104
    const v2, 0x7f060114

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportMon:Landroid/widget/LinearLayout;

    .line 105
    const v2, 0x7f060117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportTues:Landroid/widget/LinearLayout;

    .line 107
    const v2, 0x7f06011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportWen:Landroid/widget/LinearLayout;

    .line 108
    const v2, 0x7f06011d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportThus:Landroid/widget/LinearLayout;

    .line 109
    const v2, 0x7f060120

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportFri:Landroid/widget/LinearLayout;

    .line 110
    const v2, 0x7f060123

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportSat:Landroid/widget/LinearLayout;

    .line 111
    const v2, 0x7f060126

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportSun:Landroid/widget/LinearLayout;

    .line 113
    const v2, 0x7f060112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistoryWeekDetail:Landroid/widget/LinearLayout;

    .line 114
    const v2, 0x7f06010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistoryWeek:Landroid/widget/LinearLayout;

    .line 115
    const v2, 0x7f060113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/SportGraphHideView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->sportGraphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;

    .line 116
    const v2, 0x7f060115

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvMon:Landroid/widget/TextView;

    .line 117
    const v2, 0x7f060118

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvTues:Landroid/widget/TextView;

    .line 119
    const v2, 0x7f06011b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvWen:Landroid/widget/TextView;

    .line 120
    const v2, 0x7f06011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvThus:Landroid/widget/TextView;

    .line 121
    const v2, 0x7f060121

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvFri:Landroid/widget/TextView;

    .line 122
    const v2, 0x7f060124

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSat:Landroid/widget/TextView;

    .line 123
    const v2, 0x7f060127

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSun:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f060136

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvDistancesUint:Landroid/widget/TextView;

    .line 126
    const v2, 0x7f060116

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvMonUnit:Landroid/widget/TextView;

    .line 127
    const v2, 0x7f060119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvTuesUnit:Landroid/widget/TextView;

    .line 128
    const v2, 0x7f06011c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvWenUnit:Landroid/widget/TextView;

    .line 129
    const v2, 0x7f06011f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvThusUnit:Landroid/widget/TextView;

    .line 130
    const v2, 0x7f060122

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvFriUnit:Landroid/widget/TextView;

    .line 131
    const v2, 0x7f060125

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSatUnit:Landroid/widget/TextView;

    .line 132
    const v2, 0x7f060128

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSunUnit:Landroid/widget/TextView;

    .line 133
    const v2, 0x7f060133

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvStepAccount:Landroid/widget/TextView;

    .line 134
    const v2, 0x7f060135

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvDistanceAccount:Landroid/widget/TextView;

    .line 135
    const v2, 0x7f060138

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvKclaAccount:Landroid/widget/TextView;

    .line 137
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->mContext:Landroid/content/Context;

    const-string v3, "pre_DistanceType"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 138
    .local v0, "distance_unit":I
    if-nez v0, :cond_0

    .line 139
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvDistancesUint:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00b0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvDistancesUint:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00b1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getHistotySportCaloriesView()Lcom/veclink/movnow_q2/view/HistotySportGraphView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->histotySportCaloriesView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    return-object v0
.end method

.method public getHistotySportDistanceView()Lcom/veclink/movnow_q2/view/HistotySportGraphView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->histotySportDistanceView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    return-object v0
.end method

.method public getHistotySportStepView()Lcom/veclink/movnow_q2/view/HistotySportGraphView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->histotySportStepView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    return-object v0
.end method

.method public getLlHistorySportCalories()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportCalories:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportDistance()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportDistance:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportFri()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportFri:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportMon()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportMon:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportSat()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportSat:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportSteps()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportSteps:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportSun()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportSun:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportThus()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportThus:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportTues()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportTues:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportWen()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportWen:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistoryWeek()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistoryWeek:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistoryWeekDetail()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistoryWeekDetail:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideView;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->sportGraphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;

    return-object v0
.end method

.method public getTvDistanceAccount()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvDistanceAccount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvFri()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvFri:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvFriUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvFriUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvKclaAccount()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvKclaAccount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvMon()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvMon:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvMonUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvMonUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSat()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSat:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSatUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSatUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvStepAccount()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvStepAccount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSun()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSun:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSunUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSunUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvThus()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvThus:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvThusUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvThusUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvTime()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvTues()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvTues:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvTuesUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvTuesUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvWen()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvWen:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvWenUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvWenUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWeekdayGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->weekdayGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setHistotySportCaloriesView(Lcom/veclink/movnow_q2/view/HistotySportGraphView;)V
    .locals 0
    .param p1, "histotySportCaloriesView"    # Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->histotySportCaloriesView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    .line 186
    return-void
.end method

.method public setHistotySportDistanceView(Lcom/veclink/movnow_q2/view/HistotySportGraphView;)V
    .locals 0
    .param p1, "histotySportDistanceView"    # Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->histotySportDistanceView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    .line 177
    return-void
.end method

.method public setHistotySportStepView(Lcom/veclink/movnow_q2/view/HistotySportGraphView;)V
    .locals 0
    .param p1, "histotySportStepView"    # Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->histotySportStepView:Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    .line 168
    return-void
.end method

.method public setLlHistorySportCalories(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportCalories"    # Landroid/widget/LinearLayout;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportCalories:Landroid/widget/LinearLayout;

    .line 210
    return-void
.end method

.method public setLlHistorySportDistance(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportDistance"    # Landroid/widget/LinearLayout;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportDistance:Landroid/widget/LinearLayout;

    .line 202
    return-void
.end method

.method public setLlHistorySportFri(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportFri"    # Landroid/widget/LinearLayout;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportFri:Landroid/widget/LinearLayout;

    .line 250
    return-void
.end method

.method public setLlHistorySportMon(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportMon"    # Landroid/widget/LinearLayout;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportMon:Landroid/widget/LinearLayout;

    .line 218
    return-void
.end method

.method public setLlHistorySportSat(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportSat"    # Landroid/widget/LinearLayout;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportSat:Landroid/widget/LinearLayout;

    .line 258
    return-void
.end method

.method public setLlHistorySportSteps(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportSteps"    # Landroid/widget/LinearLayout;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportSteps:Landroid/widget/LinearLayout;

    .line 194
    return-void
.end method

.method public setLlHistorySportSun(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportSun"    # Landroid/widget/LinearLayout;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportSun:Landroid/widget/LinearLayout;

    .line 266
    return-void
.end method

.method public setLlHistorySportThus(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportThus"    # Landroid/widget/LinearLayout;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportThus:Landroid/widget/LinearLayout;

    .line 242
    return-void
.end method

.method public setLlHistorySportTues(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportTues"    # Landroid/widget/LinearLayout;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportTues:Landroid/widget/LinearLayout;

    .line 226
    return-void
.end method

.method public setLlHistorySportWen(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportWen"    # Landroid/widget/LinearLayout;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistorySportWen:Landroid/widget/LinearLayout;

    .line 234
    return-void
.end method

.method public setLlHistoryWeek(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistoryWeek"    # Landroid/widget/LinearLayout;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistoryWeek:Landroid/widget/LinearLayout;

    .line 274
    return-void
.end method

.method public setLlHistoryWeekDetail(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistoryWeekDetail"    # Landroid/widget/LinearLayout;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->llHistoryWeekDetail:Landroid/widget/LinearLayout;

    .line 282
    return-void
.end method

.method public setSportGraphHideView(Lcom/veclink/movnow_q2/view/SportGraphHideView;)V
    .locals 0
    .param p1, "sportGraphHideView"    # Lcom/veclink/movnow_q2/view/SportGraphHideView;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->sportGraphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;

    .line 427
    return-void
.end method

.method public setTvDistanceAccount(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvDistanceAccount"    # Landroid/widget/TextView;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvDistanceAccount:Landroid/widget/TextView;

    .line 410
    return-void
.end method

.method public setTvFri(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvFri"    # Landroid/widget/TextView;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvFri:Landroid/widget/TextView;

    .line 322
    return-void
.end method

.method public setTvFriUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvFriUnit"    # Landroid/widget/TextView;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvFriUnit:Landroid/widget/TextView;

    .line 378
    return-void
.end method

.method public setTvKclaAccount(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvKclaAccount"    # Landroid/widget/TextView;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvKclaAccount:Landroid/widget/TextView;

    .line 418
    return-void
.end method

.method public setTvMon(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvMon"    # Landroid/widget/TextView;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvMon:Landroid/widget/TextView;

    .line 290
    return-void
.end method

.method public setTvMonUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvMonUnit"    # Landroid/widget/TextView;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvMonUnit:Landroid/widget/TextView;

    .line 346
    return-void
.end method

.method public setTvSat(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSat"    # Landroid/widget/TextView;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSat:Landroid/widget/TextView;

    .line 330
    return-void
.end method

.method public setTvSatUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSatUnit"    # Landroid/widget/TextView;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSatUnit:Landroid/widget/TextView;

    .line 386
    return-void
.end method

.method public setTvStepAccount(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvStepAccount"    # Landroid/widget/TextView;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvStepAccount:Landroid/widget/TextView;

    .line 402
    return-void
.end method

.method public setTvSun(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSun"    # Landroid/widget/TextView;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSun:Landroid/widget/TextView;

    .line 338
    return-void
.end method

.method public setTvSunUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSunUnit"    # Landroid/widget/TextView;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvSunUnit:Landroid/widget/TextView;

    .line 394
    return-void
.end method

.method public setTvThus(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvThus"    # Landroid/widget/TextView;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvThus:Landroid/widget/TextView;

    .line 314
    return-void
.end method

.method public setTvThusUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvThusUnit"    # Landroid/widget/TextView;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvThusUnit:Landroid/widget/TextView;

    .line 370
    return-void
.end method

.method public setTvTime(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvTime"    # Landroid/widget/TextView;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvTime:Landroid/widget/TextView;

    .line 152
    return-void
.end method

.method public setTvTues(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvTues"    # Landroid/widget/TextView;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvTues:Landroid/widget/TextView;

    .line 298
    return-void
.end method

.method public setTvTuesUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvTuesUnit"    # Landroid/widget/TextView;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvTuesUnit:Landroid/widget/TextView;

    .line 354
    return-void
.end method

.method public setTvWen(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvWen"    # Landroid/widget/TextView;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvWen:Landroid/widget/TextView;

    .line 306
    return-void
.end method

.method public setTvWenUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvWenUnit"    # Landroid/widget/TextView;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->tvWenUnit:Landroid/widget/TextView;

    .line 362
    return-void
.end method

.method public setWeekdayGridView(Landroid/widget/GridView;)V
    .locals 0
    .param p1, "weekdayGridView"    # Landroid/widget/GridView;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->weekdayGridView:Landroid/widget/GridView;

    .line 160
    return-void
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->mContext:Landroid/content/Context;

    .line 435
    return-void
.end method

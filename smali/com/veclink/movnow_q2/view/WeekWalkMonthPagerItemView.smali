.class public Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;
.super Landroid/widget/LinearLayout;
.source "WeekWalkMonthPagerItemView.java"


# instance fields
.field private historyMonthView:Lcom/veclink/movnow_q2/view/HistoryMonthView;

.field private histotyMonthSportGraphViewCalories:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

.field private histotyMonthSportGraphViewDistances:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

.field private histotyMonthSportGraphViewSteps:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

.field private llFirstWeek:Landroid/widget/LinearLayout;

.field private llFiveWeek:Landroid/widget/LinearLayout;

.field private llFourWeek:Landroid/widget/LinearLayout;

.field private llHistoryMonth:Landroid/widget/LinearLayout;

.field private llHistoryMonthDetail:Landroid/widget/LinearLayout;

.field private llHistorySportCalories:Landroid/widget/LinearLayout;

.field private llHistorySportDistance:Landroid/widget/LinearLayout;

.field private llHistorySportSteps:Landroid/widget/LinearLayout;

.field private llSixWeek:Landroid/widget/LinearLayout;

.field private llThreeWeek:Landroid/widget/LinearLayout;

.field private llTwoWeek:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private sportGraphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

.field private tvDistanceAccount:Landroid/widget/TextView;

.field private tvDistancesUint:Landroid/widget/TextView;

.field private tvFirst:Landroid/widget/TextView;

.field private tvFirstUnit:Landroid/widget/TextView;

.field private tvFive:Landroid/widget/TextView;

.field private tvFiveUnit:Landroid/widget/TextView;

.field private tvFour:Landroid/widget/TextView;

.field private tvFourUnit:Landroid/widget/TextView;

.field private tvKclaAccount:Landroid/widget/TextView;

.field private tvMonth:Landroid/widget/TextView;

.field private tvSix:Landroid/widget/TextView;

.field private tvSixUnit:Landroid/widget/TextView;

.field private tvStepAccount:Landroid/widget/TextView;

.field private tvThree:Landroid/widget/TextView;

.field private tvThreeUnit:Landroid/widget/TextView;

.field private tvTwo:Landroid/widget/TextView;

.field private tvTwoUnit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->initView(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->initView(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->mContext:Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->initView(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030049

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "pagerChildren":Landroid/view/View;
    const v1, 0x7f06012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvMonth:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f06010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->histotyMonthSportGraphViewSteps:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    .line 85
    const v1, 0x7f06010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->histotyMonthSportGraphViewDistances:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    .line 86
    const v1, 0x7f060111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->histotyMonthSportGraphViewCalories:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    .line 87
    const v1, 0x7f060130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistoryMonth:Landroid/widget/LinearLayout;

    .line 88
    const v1, 0x7f060139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistoryMonthDetail:Landroid/widget/LinearLayout;

    .line 89
    const v1, 0x7f060131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/HistoryMonthView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->historyMonthView:Lcom/veclink/movnow_q2/view/HistoryMonthView;

    .line 90
    const v1, 0x7f060132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistorySportSteps:Landroid/widget/LinearLayout;

    .line 91
    const v1, 0x7f060134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistorySportDistance:Landroid/widget/LinearLayout;

    .line 92
    const v1, 0x7f060137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistorySportCalories:Landroid/widget/LinearLayout;

    .line 93
    const v1, 0x7f06013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->sportGraphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    .line 94
    const v1, 0x7f060136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvDistancesUint:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f060133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvStepAccount:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f060135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvDistanceAccount:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f060138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvKclaAccount:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f06013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llFirstWeek:Landroid/widget/LinearLayout;

    .line 99
    const v1, 0x7f06013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llTwoWeek:Landroid/widget/LinearLayout;

    .line 100
    const v1, 0x7f060141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llThreeWeek:Landroid/widget/LinearLayout;

    .line 101
    const v1, 0x7f060144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llFourWeek:Landroid/widget/LinearLayout;

    .line 102
    const v1, 0x7f060147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llFiveWeek:Landroid/widget/LinearLayout;

    .line 103
    const v1, 0x7f06014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llSixWeek:Landroid/widget/LinearLayout;

    .line 104
    const v1, 0x7f06013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFirst:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f06013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvTwo:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f060142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvThree:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f060145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFour:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f060148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFive:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f06014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvSix:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f06013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFirstUnit:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f060140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvTwoUnit:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f060143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvThreeUnit:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f060146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFourUnit:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f060149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFiveUnit:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f06014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvSixUnit:Landroid/widget/TextView;

    .line 118
    return-void
.end method


# virtual methods
.method public getHistoryMonthView()Lcom/veclink/movnow_q2/view/HistoryMonthView;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->historyMonthView:Lcom/veclink/movnow_q2/view/HistoryMonthView;

    return-object v0
.end method

.method public getHistotyMonthSportGraphViewCalories()Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->histotyMonthSportGraphViewCalories:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    return-object v0
.end method

.method public getHistotyMonthSportGraphViewDistances()Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->histotyMonthSportGraphViewDistances:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    return-object v0
.end method

.method public getHistotyMonthSportGraphViewSteps()Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->histotyMonthSportGraphViewSteps:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    return-object v0
.end method

.method public getLlFirstWeek()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llFirstWeek:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlFiveWeek()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llFiveWeek:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlFourWeek()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llFourWeek:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistoryMonth()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistoryMonth:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistoryMonthDetail()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistoryMonthDetail:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportCalories()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistorySportCalories:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportDistance()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistorySportDistance:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportSteps()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistorySportSteps:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlSixWeek()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llSixWeek:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlThreeWeek()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llThreeWeek:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlTwoWeek()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llTwoWeek:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->sportGraphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    return-object v0
.end method

.method public getTvDistanceAccount()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvDistanceAccount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvDistancesUint()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvDistancesUint:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvFirst()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFirst:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvFirstUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFirstUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvFive()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFive:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvFiveUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFiveUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvFour()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFour:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvFourUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFourUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvKclaAccount()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvKclaAccount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvMonth()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvMonth:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSix()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvSix:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSixUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvSixUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvStepAccount()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvStepAccount:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvThree()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvThree:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvThreeUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvThreeUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvTwo()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvTwo:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvTwoUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvTwoUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setHistoryMonthView(Lcom/veclink/movnow_q2/view/HistoryMonthView;)V
    .locals 0
    .param p1, "historyMonthView"    # Lcom/veclink/movnow_q2/view/HistoryMonthView;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->historyMonthView:Lcom/veclink/movnow_q2/view/HistoryMonthView;

    .line 142
    return-void
.end method

.method public setHistotyMonthSportGraphViewCalories(Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;)V
    .locals 0
    .param p1, "histotyMonthSportGraphViewCalories"    # Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->histotyMonthSportGraphViewCalories:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    .line 169
    return-void
.end method

.method public setHistotyMonthSportGraphViewDistances(Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;)V
    .locals 0
    .param p1, "histotyMonthSportGraphViewDistances"    # Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->histotyMonthSportGraphViewDistances:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    .line 160
    return-void
.end method

.method public setHistotyMonthSportGraphViewSteps(Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;)V
    .locals 0
    .param p1, "histotyMonthSportGraphViewSteps"    # Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->histotyMonthSportGraphViewSteps:Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    .line 151
    return-void
.end method

.method public setLlFirstWeek(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llFirstWeek"    # Landroid/widget/LinearLayout;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llFirstWeek:Landroid/widget/LinearLayout;

    .line 209
    return-void
.end method

.method public setLlFiveWeek(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llFiveWeek"    # Landroid/widget/LinearLayout;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llFiveWeek:Landroid/widget/LinearLayout;

    .line 241
    return-void
.end method

.method public setLlFourWeek(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llFourWeek"    # Landroid/widget/LinearLayout;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llFourWeek:Landroid/widget/LinearLayout;

    .line 233
    return-void
.end method

.method public setLlHistoryMonth(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistoryMonth"    # Landroid/widget/LinearLayout;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistoryMonth:Landroid/widget/LinearLayout;

    .line 385
    return-void
.end method

.method public setLlHistoryMonthDetail(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistoryMonthDetail"    # Landroid/widget/LinearLayout;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistoryMonthDetail:Landroid/widget/LinearLayout;

    .line 393
    return-void
.end method

.method public setLlHistorySportCalories(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportCalories"    # Landroid/widget/LinearLayout;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistorySportCalories:Landroid/widget/LinearLayout;

    .line 201
    return-void
.end method

.method public setLlHistorySportDistance(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportDistance"    # Landroid/widget/LinearLayout;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistorySportDistance:Landroid/widget/LinearLayout;

    .line 193
    return-void
.end method

.method public setLlHistorySportSteps(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportSteps"    # Landroid/widget/LinearLayout;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llHistorySportSteps:Landroid/widget/LinearLayout;

    .line 185
    return-void
.end method

.method public setLlSixWeek(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llSixWeek"    # Landroid/widget/LinearLayout;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llSixWeek:Landroid/widget/LinearLayout;

    .line 249
    return-void
.end method

.method public setLlThreeWeek(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llThreeWeek"    # Landroid/widget/LinearLayout;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llThreeWeek:Landroid/widget/LinearLayout;

    .line 225
    return-void
.end method

.method public setLlTwoWeek(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llTwoWeek"    # Landroid/widget/LinearLayout;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->llTwoWeek:Landroid/widget/LinearLayout;

    .line 217
    return-void
.end method

.method public setSportGraphHideView(Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;)V
    .locals 0
    .param p1, "sportGraphHideView"    # Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->sportGraphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    .line 177
    return-void
.end method

.method public setTvDistanceAccount(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvDistanceAccount"    # Landroid/widget/TextView;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvDistanceAccount:Landroid/widget/TextView;

    .line 313
    return-void
.end method

.method public setTvDistancesUint(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvDistancesUint"    # Landroid/widget/TextView;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvDistancesUint:Landroid/widget/TextView;

    .line 329
    return-void
.end method

.method public setTvFirst(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvFirst"    # Landroid/widget/TextView;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFirst:Landroid/widget/TextView;

    .line 257
    return-void
.end method

.method public setTvFirstUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvFirstUnit"    # Landroid/widget/TextView;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFirstUnit:Landroid/widget/TextView;

    .line 337
    return-void
.end method

.method public setTvFive(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvFive"    # Landroid/widget/TextView;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFive:Landroid/widget/TextView;

    .line 289
    return-void
.end method

.method public setTvFiveUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvFiveUnit"    # Landroid/widget/TextView;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFiveUnit:Landroid/widget/TextView;

    .line 369
    return-void
.end method

.method public setTvFour(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvFour"    # Landroid/widget/TextView;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFour:Landroid/widget/TextView;

    .line 281
    return-void
.end method

.method public setTvFourUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvFourUnit"    # Landroid/widget/TextView;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvFourUnit:Landroid/widget/TextView;

    .line 361
    return-void
.end method

.method public setTvKclaAccount(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvKclaAccount"    # Landroid/widget/TextView;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvKclaAccount:Landroid/widget/TextView;

    .line 321
    return-void
.end method

.method public setTvMonth(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvMonth"    # Landroid/widget/TextView;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvMonth:Landroid/widget/TextView;

    .line 134
    return-void
.end method

.method public setTvSix(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSix"    # Landroid/widget/TextView;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvSix:Landroid/widget/TextView;

    .line 297
    return-void
.end method

.method public setTvSixUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSixUnit"    # Landroid/widget/TextView;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvSixUnit:Landroid/widget/TextView;

    .line 377
    return-void
.end method

.method public setTvStepAccount(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvStepAccount"    # Landroid/widget/TextView;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvStepAccount:Landroid/widget/TextView;

    .line 305
    return-void
.end method

.method public setTvThree(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvThree"    # Landroid/widget/TextView;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvThree:Landroid/widget/TextView;

    .line 273
    return-void
.end method

.method public setTvThreeUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvThreeUnit"    # Landroid/widget/TextView;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvThreeUnit:Landroid/widget/TextView;

    .line 353
    return-void
.end method

.method public setTvTwo(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvTwo"    # Landroid/widget/TextView;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvTwo:Landroid/widget/TextView;

    .line 265
    return-void
.end method

.method public setTvTwoUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvTwoUnit"    # Landroid/widget/TextView;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->tvTwoUnit:Landroid/widget/TextView;

    .line 345
    return-void
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->mContext:Landroid/content/Context;

    .line 126
    return-void
.end method

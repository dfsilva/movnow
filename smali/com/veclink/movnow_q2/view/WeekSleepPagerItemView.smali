.class public Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
.super Landroid/widget/LinearLayout;
.source "WeekSleepPagerItemView.java"


# instance fields
.field private histotyDeepSleep:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

.field private histotyLightSleep:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

.field private histotySleepTotal:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

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

.field private sleepGraphHideView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

.field private tvFri:Landroid/widget/TextView;

.field private tvFriUnit:Landroid/widget/TextView;

.field private tvMon:Landroid/widget/TextView;

.field private tvMonUnit:Landroid/widget/TextView;

.field private tvSat:Landroid/widget/TextView;

.field private tvSatUnit:Landroid/widget/TextView;

.field private tvSleepDeep:Landroid/widget/TextView;

.field private tvSleepLight:Landroid/widget/TextView;

.field private tvSleepTotal:Landroid/widget/TextView;

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
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->initView(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->initView(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->initView(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistoryWeek:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistoryWeekDetail:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030047

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "pagerChildren":Landroid/view/View;
    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvTime:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->weekdayGridView:Landroid/widget/GridView;

    .line 82
    const v1, 0x7f06010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->histotySleepTotal:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    .line 83
    const v1, 0x7f06010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->histotyDeepSleep:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    .line 84
    const v1, 0x7f060111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->histotyLightSleep:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    .line 85
    const v1, 0x7f06010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportSteps:Landroid/widget/LinearLayout;

    .line 87
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportSteps:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView$1;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView$1;-><init>(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f06010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportDistance:Landroid/widget/LinearLayout;

    .line 98
    const v1, 0x7f060110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportCalories:Landroid/widget/LinearLayout;

    .line 99
    const v1, 0x7f060114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportMon:Landroid/widget/LinearLayout;

    .line 100
    const v1, 0x7f060117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportTues:Landroid/widget/LinearLayout;

    .line 101
    const v1, 0x7f06011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportWen:Landroid/widget/LinearLayout;

    .line 102
    const v1, 0x7f06011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportThus:Landroid/widget/LinearLayout;

    .line 103
    const v1, 0x7f060120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportFri:Landroid/widget/LinearLayout;

    .line 104
    const v1, 0x7f060123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportSat:Landroid/widget/LinearLayout;

    .line 105
    const v1, 0x7f060126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportSun:Landroid/widget/LinearLayout;

    .line 106
    const v1, 0x7f060112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistoryWeekDetail:Landroid/widget/LinearLayout;

    .line 107
    const v1, 0x7f06010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistoryWeek:Landroid/widget/LinearLayout;

    .line 108
    const v1, 0x7f060113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->sleepGraphHideView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    .line 109
    const v1, 0x7f060115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvMon:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f060118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvTues:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f06011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvWen:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f06011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvThus:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f060121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvFri:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f060124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSat:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f060127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSun:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f060116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvMonUnit:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f060119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvTuesUnit:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f06011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvWenUnit:Landroid/widget/TextView;

    .line 119
    const v1, 0x7f06011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvThusUnit:Landroid/widget/TextView;

    .line 120
    const v1, 0x7f060122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvFriUnit:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f060125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSatUnit:Landroid/widget/TextView;

    .line 122
    const v1, 0x7f060128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSunUnit:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f06010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSleepTotal:Landroid/widget/TextView;

    .line 124
    const v1, 0x7f0600bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSleepDeep:Landroid/widget/TextView;

    .line 125
    const v1, 0x7f0600bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSleepLight:Landroid/widget/TextView;

    .line 127
    return-void
.end method


# virtual methods
.method public getHistotyDeepSleep()Lcom/veclink/movnow_q2/view/HistotySleepDataView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->histotyDeepSleep:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    return-object v0
.end method

.method public getHistotyLightSleep()Lcom/veclink/movnow_q2/view/HistotySleepDataView;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->histotyLightSleep:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    return-object v0
.end method

.method public getHistotySleepTotal()Lcom/veclink/movnow_q2/view/HistotySleepDataView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->histotySleepTotal:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    return-object v0
.end method

.method public getLlHistorySportCalories()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportCalories:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportDistance()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportDistance:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportFri()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportFri:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportMon()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportMon:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportSat()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportSat:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportSteps()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportSteps:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportSun()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportSun:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportThus()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportThus:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportTues()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportTues:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistorySportWen()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportWen:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistoryWeek()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistoryWeek:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLlHistoryWeekDetail()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistoryWeekDetail:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSleepGraphHideView()Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->sleepGraphHideView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    return-object v0
.end method

.method public getTvFri()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvFri:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvFriUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvFriUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvMon()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvMon:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvMonUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvMonUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSat()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSat:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSatUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSatUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSleepDeep()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSleepDeep:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSleepLight()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSleepLight:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSleepTotal()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSleepTotal:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSun()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSun:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvSunUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSunUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvThus()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvThus:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvThusUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvThusUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvTime()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvTues()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvTues:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvTuesUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvTuesUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvWen()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvWen:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvWenUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvWenUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWeekdayGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->weekdayGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public setHistotyDeepSleep(Lcom/veclink/movnow_q2/view/HistotySleepDataView;)V
    .locals 0
    .param p1, "histotyDeepSleep"    # Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->histotyDeepSleep:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    .line 159
    return-void
.end method

.method public setHistotyLightSleep(Lcom/veclink/movnow_q2/view/HistotySleepDataView;)V
    .locals 0
    .param p1, "histotyLightSleep"    # Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->histotyLightSleep:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    .line 167
    return-void
.end method

.method public setHistotySleepTotal(Lcom/veclink/movnow_q2/view/HistotySleepDataView;)V
    .locals 0
    .param p1, "histotySleepTotal"    # Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->histotySleepTotal:Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    .line 151
    return-void
.end method

.method public setLlHistorySportCalories(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportCalories"    # Landroid/widget/LinearLayout;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportCalories:Landroid/widget/LinearLayout;

    .line 191
    return-void
.end method

.method public setLlHistorySportDistance(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportDistance"    # Landroid/widget/LinearLayout;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportDistance:Landroid/widget/LinearLayout;

    .line 183
    return-void
.end method

.method public setLlHistorySportFri(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportFri"    # Landroid/widget/LinearLayout;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportFri:Landroid/widget/LinearLayout;

    .line 231
    return-void
.end method

.method public setLlHistorySportMon(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportMon"    # Landroid/widget/LinearLayout;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportMon:Landroid/widget/LinearLayout;

    .line 199
    return-void
.end method

.method public setLlHistorySportSat(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportSat"    # Landroid/widget/LinearLayout;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportSat:Landroid/widget/LinearLayout;

    .line 239
    return-void
.end method

.method public setLlHistorySportSteps(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportSteps"    # Landroid/widget/LinearLayout;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportSteps:Landroid/widget/LinearLayout;

    .line 175
    return-void
.end method

.method public setLlHistorySportSun(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportSun"    # Landroid/widget/LinearLayout;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportSun:Landroid/widget/LinearLayout;

    .line 247
    return-void
.end method

.method public setLlHistorySportThus(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportThus"    # Landroid/widget/LinearLayout;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportThus:Landroid/widget/LinearLayout;

    .line 223
    return-void
.end method

.method public setLlHistorySportTues(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportTues"    # Landroid/widget/LinearLayout;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportTues:Landroid/widget/LinearLayout;

    .line 207
    return-void
.end method

.method public setLlHistorySportWen(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistorySportWen"    # Landroid/widget/LinearLayout;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistorySportWen:Landroid/widget/LinearLayout;

    .line 215
    return-void
.end method

.method public setLlHistoryWeek(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistoryWeek"    # Landroid/widget/LinearLayout;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistoryWeek:Landroid/widget/LinearLayout;

    .line 263
    return-void
.end method

.method public setLlHistoryWeekDetail(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "llHistoryWeekDetail"    # Landroid/widget/LinearLayout;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistoryWeekDetail:Landroid/widget/LinearLayout;

    .line 255
    return-void
.end method

.method public setSleepGraphHideView(Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;)V
    .locals 0
    .param p1, "sleepGraphHideView"    # Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->sleepGraphHideView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    .line 271
    return-void
.end method

.method public setTvFri(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvFri"    # Landroid/widget/TextView;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvFri:Landroid/widget/TextView;

    .line 311
    return-void
.end method

.method public setTvFriUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvFriUnit"    # Landroid/widget/TextView;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvFriUnit:Landroid/widget/TextView;

    .line 367
    return-void
.end method

.method public setTvMon(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvMon"    # Landroid/widget/TextView;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvMon:Landroid/widget/TextView;

    .line 279
    return-void
.end method

.method public setTvMonUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvMonUnit"    # Landroid/widget/TextView;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvMonUnit:Landroid/widget/TextView;

    .line 335
    return-void
.end method

.method public setTvSat(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSat"    # Landroid/widget/TextView;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSat:Landroid/widget/TextView;

    .line 319
    return-void
.end method

.method public setTvSatUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSatUnit"    # Landroid/widget/TextView;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSatUnit:Landroid/widget/TextView;

    .line 375
    return-void
.end method

.method public setTvSleepDeep(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSleepDeep"    # Landroid/widget/TextView;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSleepDeep:Landroid/widget/TextView;

    .line 399
    return-void
.end method

.method public setTvSleepLight(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSleepLight"    # Landroid/widget/TextView;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSleepLight:Landroid/widget/TextView;

    .line 407
    return-void
.end method

.method public setTvSleepTotal(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSleepTotal"    # Landroid/widget/TextView;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSleepTotal:Landroid/widget/TextView;

    .line 391
    return-void
.end method

.method public setTvSun(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSun"    # Landroid/widget/TextView;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSun:Landroid/widget/TextView;

    .line 327
    return-void
.end method

.method public setTvSunUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvSunUnit"    # Landroid/widget/TextView;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvSunUnit:Landroid/widget/TextView;

    .line 383
    return-void
.end method

.method public setTvThus(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvThus"    # Landroid/widget/TextView;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvThus:Landroid/widget/TextView;

    .line 303
    return-void
.end method

.method public setTvThusUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvThusUnit"    # Landroid/widget/TextView;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvThusUnit:Landroid/widget/TextView;

    .line 359
    return-void
.end method

.method public setTvTime(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvTime"    # Landroid/widget/TextView;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvTime:Landroid/widget/TextView;

    .line 135
    return-void
.end method

.method public setTvTues(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvTues"    # Landroid/widget/TextView;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvTues:Landroid/widget/TextView;

    .line 287
    return-void
.end method

.method public setTvTuesUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvTuesUnit"    # Landroid/widget/TextView;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvTuesUnit:Landroid/widget/TextView;

    .line 343
    return-void
.end method

.method public setTvWen(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvWen"    # Landroid/widget/TextView;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvWen:Landroid/widget/TextView;

    .line 295
    return-void
.end method

.method public setTvWenUnit(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvWenUnit"    # Landroid/widget/TextView;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->tvWenUnit:Landroid/widget/TextView;

    .line 351
    return-void
.end method

.method public setWeekdayGridView(Landroid/widget/GridView;)V
    .locals 0
    .param p1, "weekdayGridView"    # Landroid/widget/GridView;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->weekdayGridView:Landroid/widget/GridView;

    .line 143
    return-void
.end method

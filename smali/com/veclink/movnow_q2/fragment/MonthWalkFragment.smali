.class public Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;
.super Landroid/support/v4/app/Fragment;
.source "MonthWalkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;,
        Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field public static FRIDAY:I

.field public static MONDAY:I

.field public static SATURDAY:I

.field public static SUNDAY:I

.field public static THURSDAY:I

.field public static TUESDAY:I

.field public static WEDNESDAY:I


# instance fields
.field c:Ljava/util/Calendar;

.field private changeListener:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;

.field private context:Landroid/content/Context;

.field private currentDate:J

.field private isAdd:I

.field private linkedListSport:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;>;"
        }
    .end annotation
.end field

.field private linkedListStepCount:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private linkedListValues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCurrentViewID:I

.field private mapUnit:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapWeekOrDayDisplay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private oldCurrentViewID:I

.field protected startDayOfWeek:I

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private viewPapers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private vpAdapter:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;

.field private waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    sput v0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->SUNDAY:I

    .line 68
    const/4 v0, 0x2

    sput v0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->MONDAY:I

    .line 69
    const/4 v0, 0x3

    sput v0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->TUESDAY:I

    .line 70
    const/4 v0, 0x4

    sput v0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->WEDNESDAY:I

    .line 71
    const/4 v0, 0x5

    sput v0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->THURSDAY:I

    .line 72
    const/4 v0, 0x6

    sput v0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->FRIDAY:I

    .line 73
    const/4 v0, 0x7

    sput v0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->SATURDAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    sget v0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->MONDAY:I

    iput v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->startDayOfWeek:I

    .line 85
    iput v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    .line 86
    iput v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->oldCurrentViewID:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->changeListener:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListStepCount:Ljava/util/LinkedList;

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapUnit:Ljava/util/Map;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->isAdd:I

    .line 538
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    .prologue
    .line 59
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->oldCurrentViewID:I

    return v0
.end method

.method static synthetic access$002(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->oldCurrentViewID:I

    return p1
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    .prologue
    .line 59
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    return v0
.end method

.method static synthetic access$102(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    return p1
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->currentDate:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->currentDate:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->isAdd:I

    return p1
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;Ljava/util/Calendar;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->syncSportData(Ljava/util/Calendar;)V

    return-void
.end method

.method public static getCurrentMonthOfYear()I
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 131
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static getCurrentYear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 135
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDaysOfWeek()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 102
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 105
    .local v9, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v0, Lhirondelle/date4j/DateTime;

    const/16 v1, 0x7dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 106
    .local v0, "sunday":Lhirondelle/date4j/DateTime;
    iget v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->startDayOfWeek:I

    sget v2, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->SUNDAY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 107
    .local v12, "nextDay":Lhirondelle/date4j/DateTime;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v10, v1, :cond_0

    .line 108
    invoke-static {v12}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateTimeToDate(Lhirondelle/date4j/DateTime;)Ljava/util/Date;

    move-result-object v8

    .line 109
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 107
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 112
    .end local v8    # "date":Ljava/util/Date;
    :cond_0
    return-object v11
.end method

.method private setKmlStepAndKclaDta(ILcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;)V
    .locals 14
    .param p1, "stepCount"    # I
    .param p2, "itemView"    # Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;

    .prologue
    .line 339
    iget-object v9, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    const-string v10, "personal_weight"

    const/high16 v11, 0x42480000    # 50.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 340
    .local v4, "person_weight":F
    iget-object v9, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    const-string v10, "personal_height"

    const/high16 v11, 0x43200000    # 160.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 341
    .local v3, "person_height":F
    iget-object v9, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    const-string v10, "pre_DistanceType"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 342
    .local v2, "distance_unit":I
    iget-object v9, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    invoke-static {v9, p1}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getDistance(Landroid/content/Context;I)D

    move-result-wide v5

    .line 343
    .local v5, "stepDistance":D
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getStepDistanceByHeight(FI)D

    move-result-wide v9

    int-to-double v11, p1

    mul-double v7, v9, v11

    .line 344
    .local v7, "stepDistanceKMUnit":D
    const/4 v9, 0x1

    invoke-static {v4, v7, v8, v9}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getCaloryByWeightAndDisStance(FDI)I

    move-result v9

    int-to-double v0, v9

    .line 345
    .local v0, "cal":D
    if-nez v2, :cond_0

    .line 346
    invoke-virtual/range {p2 .. p2}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvDistanceAccount()Landroid/widget/TextView;

    move-result-object v9

    invoke-static {v5, v6}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getFormatDistance(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvDistancesUint()Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0c00b0

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvStepAccount()Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0c0038

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvKclaAccount()Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0c0039

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    return-void

    .line 349
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvDistancesUint()Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0c00b1

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvDistanceAccount()Landroid/widget/TextView;

    move-result-object v9

    invoke-static {v5, v6}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getFormatDistance(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMonthDayText(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemView"    # Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvFirstUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvTwoUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvThreeUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvFourUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvFiveUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvSixUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    return-void
.end method

.method private setStepOrDistanceOrKcal(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ILjava/util/List;)V
    .locals 9
    .param p1, "itemView"    # Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "listSport":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 358
    const/4 v4, 0x0

    .local v4, "weeks":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, "oneweekSteps":I
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SportData;

    .line 361
    .local v2, "sportData":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 362
    goto :goto_1

    .line 363
    .end local v2    # "sportData":Lcom/veclink/healthy/database/entity/SportData;
    :cond_0
    const/4 v3, 0x0

    .line 364
    .local v3, "text":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 365
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 371
    :cond_1
    :goto_2
    if-nez v4, :cond_5

    .line 372
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvFirst()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 366
    :cond_3
    if-ne p2, v7, :cond_4

    .line 367
    iget-object v5, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getDistance(Landroid/content/Context;I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 368
    :cond_4
    if-ne p2, v8, :cond_1

    .line 369
    iget-object v5, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getKcal(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 373
    :cond_5
    if-ne v4, v7, :cond_6

    .line 374
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvTwo()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 375
    :cond_6
    if-ne v4, v8, :cond_7

    .line 376
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvThree()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 377
    :cond_7
    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 378
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvFour()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 379
    :cond_8
    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 380
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvFive()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 381
    :cond_9
    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 382
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvSix()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 385
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "oneweekSteps":I
    .end local v3    # "text":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private syncSportData(Ljava/util/Calendar;)V
    .locals 5
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 254
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->getMonthFirstDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "startTime":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->getMonthLastDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "endTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    if-nez v2, :cond_2

    new-instance v2, Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    const v4, 0x7f0c01aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->setMessage(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->showDialog()V

    .line 266
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v2, v1, v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncSportData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public initCurrentPagerData()V
    .locals 9

    .prologue
    .line 231
    iget v3, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    .line 232
    .local v3, "viewId":I
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->c:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 233
    .local v1, "year":I
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->c:Ljava/util/Calendar;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 235
    .local v2, "month":I
    const/4 v7, 0x0

    .line 236
    .local v7, "currentMonth":Ljava/lang/String;
    const/16 v0, 0xa

    if-ge v2, v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->loadSportOriginDataByMonth(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->totalStepsByWeek(Ljava/util/List;)I

    move-result v4

    .line 243
    .local v4, "stepCount":I
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    add-int/lit8 v8, v2, -0x1

    invoke-static {v0, v1, v8}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->querySportDataByOnMonth(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v5

    .line 244
    .local v5, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->getWeekOfMonthData(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    .local v6, "value":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    move-object v0, p0

    .line 245
    invoke-virtual/range {v0 .. v6}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->initData(IIIILjava/util/List;Ljava/util/List;)V

    .line 246
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListStepCount:Ljava/util/LinkedList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 250
    return-void

    .line 239
    .end local v4    # "stepCount":I
    .end local v5    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .end local v6    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public initData(IIIILjava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "viewId"    # I
    .param p4, "stepCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p5, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .local p6, "value":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 194
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;

    invoke-virtual {v0, p3}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;

    .line 195
    .local v1, "itemView":Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v2

    invoke-interface {p6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getDaysOfWeek()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->setDataInfo(Ljava/util/List;Ljava/util/List;)V

    .line 196
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->invalidate()V

    .line 197
    const/4 v2, 0x1

    move-object v0, p0

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setSixData(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ZZZZZZ)V

    .line 198
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0, p4, v1}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setKmlStepAndKclaDta(ILcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;)V

    .line 201
    :cond_0
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getHistotyMonthSportGraphViewSteps()Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->setDataInfo(Ljava/util/List;)V

    .line 202
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getHistotyMonthSportGraphViewSteps()Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->invalidate()V

    .line 203
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getHistotyMonthSportGraphViewDistances()Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->setDataInfo(Ljava/util/List;)V

    .line 204
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getHistotyMonthSportGraphViewDistances()Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->invalidate()V

    .line 205
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getHistotyMonthSportGraphViewCalories()Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->setDataInfo(Ljava/util/List;)V

    .line 206
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getHistotyMonthSportGraphViewCalories()Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/HistotyMonthSportGraphView;->invalidate()V

    .line 207
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvMonth()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapUnit:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapUnit:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonth()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonthDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapUnit:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0, p6}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setStepOrDistanceOrKcal(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ILjava/util/List;)V

    .line 228
    :goto_1
    return-void

    .line 210
    :cond_3
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getTvMonth()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 224
    :cond_4
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonth()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonthDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public initLeftPagerData(Z)V
    .locals 12
    .param p1, "isFirst"    # Z

    .prologue
    const/4 v11, 0x2

    .line 270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 271
    .local v7, "cal":Ljava/util/Calendar;
    iget-wide v9, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->currentDate:J

    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 272
    const/4 v0, -0x1

    invoke-virtual {v7, v11, v0}, Ljava/util/Calendar;->add(II)V

    .line 273
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    add-int/lit8 v3, v0, -0x1

    .line 274
    .local v3, "viewId":I
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 275
    .local v1, "year":I
    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 276
    .local v2, "month":I
    const/4 v8, 0x0

    .line 277
    .local v8, "currentMonth":Ljava/lang/String;
    const/16 v0, 0xa

    if-ge v2, v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->loadSportOriginDataByMonth(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->totalStepsByWeek(Ljava/util/List;)I

    move-result v4

    .line 283
    .local v4, "stepCount":I
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    add-int/lit8 v9, v2, -0x1

    invoke-static {v0, v1, v9}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->querySportDataByOnMonth(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v5

    .line 284
    .local v5, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->getWeekOfMonthData(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    .local v6, "value":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    move-object v0, p0

    .line 285
    invoke-virtual/range {v0 .. v6}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->initData(IIIILjava/util/List;Ljava/util/List;)V

    .line 286
    if-nez p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListStepCount:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListStepCount:Ljava/util/LinkedList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 295
    return-void

    .line 280
    .end local v4    # "stepCount":I
    .end local v5    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .end local v6    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public initRightPagerData(Z)V
    .locals 13
    .param p1, "isFirst"    # Z

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 298
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 299
    .local v7, "cal":Ljava/util/Calendar;
    iget-wide v9, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->currentDate:J

    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 300
    invoke-virtual {v7, v12, v11}, Ljava/util/Calendar;->add(II)V

    .line 301
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    add-int/lit8 v3, v0, 0x1

    .line 302
    .local v3, "viewId":I
    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 303
    .local v1, "year":I
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 304
    .local v2, "month":I
    const/4 v8, 0x0

    .line 305
    .local v8, "currentMonth":Ljava/lang/String;
    const/16 v0, 0xa

    if-ge v2, v0, :cond_1

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->loadSportOriginDataByMonth(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->totalStepsByWeek(Ljava/util/List;)I

    move-result v4

    .line 315
    .local v4, "stepCount":I
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    add-int/lit8 v9, v2, -0x1

    invoke-static {v0, v1, v9}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->querySportDataByOnMonth(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v5

    .line 316
    .local v5, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->getWeekOfMonthData(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    .local v6, "value":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    move-object v0, p0

    .line 317
    invoke-virtual/range {v0 .. v6}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->initData(IIIILjava/util/List;Ljava/util/List;)V

    .line 318
    if-nez p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListStepCount:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListStepCount:Ljava/util/LinkedList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 326
    return-void

    .line 308
    .end local v4    # "stepCount":I
    .end local v5    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .end local v6    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x2710

    const/4 v5, 0x1

    .line 143
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, p0, v3, v4}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->viewPapers:Ljava/util/List;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 147
    new-instance v1, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;-><init>(Landroid/content/Context;)V

    .line 148
    .local v1, "itemView":Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistorySportSteps()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistorySportDistance()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistorySportCalories()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlFirstWeek()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlTwoWeek()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlThreeWeek()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlFourWeek()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlFiveWeek()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlSixWeek()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->viewPapers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "itemView":Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;
    :cond_0
    new-instance v2, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->viewPapers:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;-><init>(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;Ljava/util/List;)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;

    .line 163
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 164
    new-instance v2, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;-><init>(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->changeListener:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;

    .line 165
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->changeListener:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->c:Ljava/util/Calendar;

    .line 167
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->c:Ljava/util/Calendar;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 168
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->currentDate:J

    .line 169
    iput v6, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    .line 170
    iput v6, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->oldCurrentViewID:I

    .line 171
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 173
    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->initLeftPagerData(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->initCurrentPagerData()V

    .line 175
    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->initRightPagerData(Z)V

    .line 176
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    const v0, 0x7f0c00af

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f04000f

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 395
    .local v9, "showAnim":Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;

    .line 396
    .local v1, "itemView":Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 398
    :sswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonth()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 400
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonthDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    const v0, 0x7f0c00af

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 403
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ll_histoty_month_steps:unit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, v1, v10}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setMonthDayText(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;Ljava/lang/String;)V

    .line 405
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v2, v0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setStepOrDistanceOrKcal(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ILjava/util/List;)V

    .line 406
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonthDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 409
    :sswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonth()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonthDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    const v0, 0x7f0c00b0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 413
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    const-string v2, "pre_DistanceType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 414
    .local v8, "distance_unit":I
    if-nez v8, :cond_0

    .line 415
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    const v2, 0x7f0c00b0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 419
    :goto_1
    invoke-direct {p0, v1, v10}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setMonthDayText(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;Ljava/lang/String;)V

    .line 420
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v2, v0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setStepOrDistanceOrKcal(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ILjava/util/List;)V

    .line 421
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonthDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    const v2, 0x7f0c00b1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 425
    .end local v8    # "distance_unit":I
    :sswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonth()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 427
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonthDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    const v0, 0x7f0c00b2

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 429
    invoke-direct {p0, v1, v10}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setMonthDayText(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;Ljava/lang/String;)V

    .line 430
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v2, v0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setStepOrDistanceOrKcal(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ILjava/util/List;)V

    .line 431
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonthDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 434
    :sswitch_3
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v2

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getDaysOfWeek()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->setDataInfo(Ljava/util/List;Ljava/util/List;)V

    .line 435
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->invalidate()V

    .line 436
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setSixData(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ZZZZZZ)V

    goto/16 :goto_0

    .line 440
    :sswitch_4
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v2

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getDaysOfWeek()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->setDataInfo(Ljava/util/List;Ljava/util/List;)V

    .line 441
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->invalidate()V

    .line 442
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setSixData(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ZZZZZZ)V

    goto/16 :goto_0

    .line 445
    :sswitch_5
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v2

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getDaysOfWeek()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->setDataInfo(Ljava/util/List;Ljava/util/List;)V

    .line 446
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->invalidate()V

    .line 447
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setSixData(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ZZZZZZ)V

    goto/16 :goto_0

    .line 451
    :sswitch_6
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v2

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getDaysOfWeek()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->setDataInfo(Ljava/util/List;Ljava/util/List;)V

    .line 452
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->invalidate()V

    .line 453
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setSixData(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ZZZZZZ)V

    goto/16 :goto_0

    .line 457
    :sswitch_7
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    .line 458
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v2

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getDaysOfWeek()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->setDataInfo(Ljava/util/List;Ljava/util/List;)V

    .line 459
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->invalidate()V

    .line 461
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setSixData(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ZZZZZZ)V

    goto/16 :goto_0

    .line 464
    :sswitch_8
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    .line 465
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v2

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->linkedListValues:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getDaysOfWeek()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->setDataInfo(Ljava/util/List;Ljava/util/List;)V

    .line 466
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SportGraphHideMonthView;->invalidate()V

    .line 468
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->setSixData(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ZZZZZZ)V

    goto/16 :goto_0

    .line 472
    :sswitch_9
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonth()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 474
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonthDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f04000e

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 476
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlHistoryMonth()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060132 -> :sswitch_0
        0x7f060134 -> :sswitch_1
        0x7f060137 -> :sswitch_2
        0x7f06013a -> :sswitch_9
        0x7f06013b -> :sswitch_3
        0x7f06013e -> :sswitch_4
        0x7f060141 -> :sswitch_5
        0x7f060144 -> :sswitch_6
        0x7f060147 -> :sswitch_7
        0x7f06014a -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "contextView":Landroid/view/View;
    const v1, 0x7f0600ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 120
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->context:Landroid/content/Context;

    .line 121
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 188
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 189
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 190
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 571
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->dismissDialog()V

    .line 572
    :cond_0
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->isAdd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 573
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->isAdd:I

    if-nez v0, :cond_2

    .line 574
    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->initLeftPagerData(Z)V

    .line 579
    :cond_1
    :goto_0
    return-void

    .line 576
    :cond_2
    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->initRightPagerData(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 182
    return-void
.end method

.method public setSixData(Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;ZZZZZZ)V
    .locals 1
    .param p1, "itemView"    # Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;
    .param p2, "checkFirst"    # Z
    .param p3, "checkTwo"    # Z
    .param p4, "checkThree"    # Z
    .param p5, "checkFour"    # Z
    .param p6, "checkFive"    # Z
    .param p7, "checkSix"    # Z

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlFirstWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 330
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlTwoWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 331
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlThreeWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 332
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlFourWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 333
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlFiveWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 334
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkMonthPagerItemView;->getLlSixWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 335
    return-void
.end method

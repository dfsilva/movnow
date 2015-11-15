.class public Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;
.super Landroid/support/v4/app/Fragment;
.source "WeekWalkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$ViewPaperAdapter;,
        Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;
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

.field private changeListener:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;

.field private context:Landroid/content/Context;

.field private currentDate:J

.field private isAdd:I

.field private linkedListOneWeekSportData:Ljava/util/LinkedList;
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

.field private linkedListSportDatas:Ljava/util/LinkedList;
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

.field private times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$ViewPaperAdapter;

.field private waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->SUNDAY:I

    .line 76
    const/4 v0, 0x2

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->MONDAY:I

    .line 77
    const/4 v0, 0x3

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->TUESDAY:I

    .line 78
    const/4 v0, 0x4

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->WEDNESDAY:I

    .line 79
    const/4 v0, 0x5

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->THURSDAY:I

    .line 80
    const/4 v0, 0x6

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->FRIDAY:I

    .line 81
    const/4 v0, 0x7

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->SATURDAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->times:Ljava/util/List;

    .line 85
    sget v0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->MONDAY:I

    iput v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->startDayOfWeek:I

    .line 94
    iput v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    .line 95
    iput v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->oldCurrentViewID:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->changeListener:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapUnit:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSportDatas:Ljava/util/LinkedList;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListOneWeekSportData:Ljava/util/LinkedList;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->isAdd:I

    .line 533
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    .prologue
    .line 66
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->oldCurrentViewID:I

    return v0
.end method

.method static synthetic access$002(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->oldCurrentViewID:I

    return p1
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    .prologue
    .line 66
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    return v0
.end method

.method static synthetic access$102(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    return p1
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->currentDate:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;
    .param p1, "x1"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->currentDate:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->isAdd:I

    return p1
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;Ljava/util/Calendar;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->syncSportData(Ljava/util/Calendar;)V

    return-void
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

    .line 112
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 115
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

    .line 116
    .local v0, "sunday":Lhirondelle/date4j/DateTime;
    iget v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->startDayOfWeek:I

    sget v2, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->SUNDAY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 117
    .local v12, "nextDay":Lhirondelle/date4j/DateTime;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v10, v1, :cond_0

    .line 118
    invoke-static {v12}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateTimeToDate(Lhirondelle/date4j/DateTime;)Ljava/util/Date;

    move-result-object v8

    .line 119
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 117
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 122
    .end local v8    # "date":Ljava/util/Date;
    :cond_0
    return-object v11
.end method

.method private setKmlStepAndKclaDta(ILcom/veclink/movnow_q2/view/WeekWalkPagerItemView;)V
    .locals 13
    .param p1, "stepCount"    # I
    .param p2, "itemView"    # Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "personal_weight"

    const/high16 v10, 0x42480000    # 50.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 467
    .local v3, "person_weight":F
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "personal_height"

    const/high16 v10, 0x43200000    # 160.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 468
    .local v2, "person_height":F
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "pre_DistanceType"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 469
    .local v1, "distance_unit":I
    invoke-static {v2, v1}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getStepDistanceByHeight(FI)D

    move-result-wide v8

    int-to-double v10, p1

    mul-double v4, v8, v10

    .line 470
    .local v4, "stepDistance":D
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getStepDistanceByHeight(FI)D

    move-result-wide v8

    int-to-double v10, p1

    mul-double v6, v8, v10

    .line 471
    .local v6, "stepDistanceKMUnit":D
    const/4 v8, 0x1

    invoke-static {v3, v6, v7, v8}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getCaloryByWeightAndDisStance(FDI)I

    move-result v0

    .line 473
    .local v0, "cal":I
    invoke-virtual {p2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvDistanceAccount()Landroid/widget/TextView;

    move-result-object v8

    invoke-static {v4, v5}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getFormatDistance(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    invoke-virtual {p2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvStepAccount()Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x7f0c0038

    invoke-virtual {p0, v9}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    invoke-virtual {p2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvKclaAccount()Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x7f0c0039

    invoke-virtual {p0, v9}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    return-void
.end method

.method private setStepOrDistanceOrKcal(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ILjava/util/List;)V
    .locals 9
    .param p1, "itemView"    # Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;",
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
    .local p3, "oneweekSportData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 429
    const/4 v4, 0x0

    .local v4, "weeks":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, "oneweekSteps":I
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 432
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

    .line 433
    .local v2, "sportData":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 434
    goto :goto_1

    .line 436
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "sportData":Lcom/veclink/healthy/database/entity/SportData;
    :cond_0
    const/4 v3, 0x0

    .line 437
    .local v3, "text":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 438
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 445
    :cond_1
    :goto_2
    if-nez v4, :cond_5

    .line 446
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvMon()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 439
    :cond_3
    if-ne p2, v7, :cond_4

    .line 440
    iget-object v5, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getDistance(Landroid/content/Context;I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 441
    :cond_4
    if-ne p2, v8, :cond_1

    .line 442
    iget-object v5, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getKcal(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 447
    :cond_5
    if-ne v4, v7, :cond_6

    .line 448
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvTues()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 449
    :cond_6
    if-ne v4, v8, :cond_7

    .line 450
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvWen()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 451
    :cond_7
    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 452
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvThus()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 453
    :cond_8
    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 454
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvFri()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 455
    :cond_9
    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    .line 456
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvSat()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 457
    :cond_a
    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 458
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvSun()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 461
    .end local v1    # "oneweekSteps":I
    .end local v3    # "text":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method private setWeekDayText(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemView"    # Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 486
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvMonUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvTuesUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvWenUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvThusUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvFriUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvSatUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvSunUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method

.method private syncSportData(Ljava/util/Calendar;)V
    .locals 5
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 247
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "startTime":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->getLastDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "endTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    if-nez v2, :cond_2

    new-instance v2, Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    const v4, 0x7f0c01aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->setMessage(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->showDialog()V

    .line 257
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v2, v1, v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncSportData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public initCurrentPagerData()V
    .locals 8

    .prologue
    .line 233
    iget-wide v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->currentDate:J

    .line 234
    .local v2, "time":J
    iget v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    .line 235
    .local v1, "viewId":I
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    .line 236
    .local v6, "date":Ljava/util/Date;
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->querySportDataByOnWeek(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v4

    .line 237
    .local v4, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->querySportData(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v5

    .line 238
    .local v5, "sportDatasList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->queryOneWeekSportData(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v7

    .local v7, "oneweekSportData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    move-object v0, p0

    .line 239
    invoke-virtual/range {v0 .. v5}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->initPagerData(IJLjava/util/List;Ljava/util/List;)V

    .line 240
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSportDatas:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListOneWeekSportData:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public initLeftPagerData(Z)V
    .locals 11
    .param p1, "isFirst"    # Z

    .prologue
    .line 261
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 262
    .local v6, "cal":Ljava/util/Calendar;
    iget-wide v9, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->currentDate:J

    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 263
    const/4 v0, 0x5

    const/4 v9, -0x7

    invoke-virtual {v6, v0, v9}, Ljava/util/Calendar;->add(II)V

    .line 264
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 265
    .local v2, "time":J
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    add-int/lit8 v1, v0, -0x1

    .line 266
    .local v1, "viewId":I
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    .line 267
    .local v7, "date":Ljava/util/Date;
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->querySportDataByOnWeek(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v4

    .line 268
    .local v4, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->querySportData(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v5

    .line 269
    .local v5, "sportDatasList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->queryOneWeekSportData(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v8

    .local v8, "oneweekSportData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    move-object v0, p0

    .line 270
    invoke-virtual/range {v0 .. v5}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->initPagerData(IJLjava/util/List;Ljava/util/List;)V

    .line 271
    if-nez p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSportDatas:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListOneWeekSportData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSportDatas:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListOneWeekSportData:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public initPagerData(IJLjava/util/List;Ljava/util/List;)V
    .locals 12
    .param p1, "viewId"    # I
    .param p2, "dateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
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
    .line 199
    .local p4, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .local p5, "sportDatasList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$ViewPaperAdapter;

    invoke-virtual {v1, p1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;

    .line 200
    .local v2, "itemView":Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/veclink/movnow_q2/util/StringUtil;->getLastDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 201
    .local v11, "time":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getTvTime()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getHistotySportStepView()Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/view/HistotySportGraphView;->setDataInfo(Ljava/util/List;)V

    .line 204
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getHistotySportStepView()Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/HistotySportGraphView;->invalidate()V

    .line 205
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getHistotySportDistanceView()Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/view/HistotySportGraphView;->setDataInfo(Ljava/util/List;)V

    .line 206
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getHistotySportDistanceView()Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/HistotySportGraphView;->invalidate()V

    .line 208
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getHistotySportCaloriesView()Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/view/HistotySportGraphView;->setDataInfo(Ljava/util/List;)V

    .line 209
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getHistotySportCaloriesView()Lcom/veclink/movnow_q2/view/HistotySportGraphView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/HistotySportGraphView;->invalidate()V

    .line 210
    invoke-static/range {p4 .. p4}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->totalStepsByWeek(Ljava/util/List;)I

    move-result v10

    .line 211
    .local v10, "steps":I
    invoke-direct {p0, v10, v2}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setKmlStepAndKclaDta(ILcom/veclink/movnow_q2/view/WeekWalkPagerItemView;)V

    .line 212
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideView;

    move-result-object v3

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->times:Ljava/util/List;

    invoke-virtual {v3, v1, v4}, Lcom/veclink/movnow_q2/view/SportGraphHideView;->setDataInfo(Ljava/util/List;Ljava/util/List;)V

    .line 213
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/SportGraphHideView;->invalidate()V

    .line 214
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setOneWeekCheck(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ZZZZZZZ)V

    .line 215
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapUnit:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapUnit:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapUnit:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p5

    invoke-direct {p0, v2, v1, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setStepOrDistanceOrKcal(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ILjava/util/List;)V

    .line 231
    :goto_0
    return-void

    .line 226
    :cond_2
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public initRightPagerData(Z)V
    .locals 11
    .param p1, "isFirst"    # Z

    .prologue
    .line 282
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 283
    .local v6, "cal":Ljava/util/Calendar;
    iget-wide v9, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->currentDate:J

    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 284
    const/4 v0, 0x5

    const/4 v9, 0x7

    invoke-virtual {v6, v0, v9}, Ljava/util/Calendar;->add(II)V

    .line 285
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 286
    .local v2, "time":J
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    add-int/lit8 v1, v0, 0x1

    .line 287
    .local v1, "viewId":I
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    .line 288
    .local v7, "date":Ljava/util/Date;
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->querySportDataByOnWeek(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v4

    .line 289
    .local v4, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->querySportData(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v5

    .line 290
    .local v5, "sportDatasList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->queryOneWeekSportData(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v8

    .local v8, "oneweekSportData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    move-object v0, p0

    .line 291
    invoke-virtual/range {v0 .. v5}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->initPagerData(IJLjava/util/List;Ljava/util/List;)V

    .line 292
    if-nez p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSportDatas:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListOneWeekSportData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSport:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSportDatas:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListOneWeekSportData:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/16 v7, 0x2710

    const/4 v6, 0x1

    .line 143
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, p0, v4, v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->viewPapers:Ljava/util/List;

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 148
    new-instance v1, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;-><init>(Landroid/content/Context;)V

    .line 149
    .local v1, "itemView":Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportSteps()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportDistance()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportCalories()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideView;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/veclink/movnow_q2/view/SportGraphHideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportMon()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportTues()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportWen()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportThus()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportFri()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportSat()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportSun()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance v2, Lcom/veclink/movnow_q2/view/calendar/WeekdayArrayAdapter;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f030040

    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getDaysOfWeek()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/veclink/movnow_q2/view/calendar/WeekdayArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 162
    .local v2, "weekdaysAdapter":Lcom/veclink/movnow_q2/view/calendar/WeekdayArrayAdapter;
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getWeekdayGridView()Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->viewPapers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "itemView":Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;
    .end local v2    # "weekdaysAdapter":Lcom/veclink/movnow_q2/view/calendar/WeekdayArrayAdapter;
    :cond_0
    new-instance v3, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$ViewPaperAdapter;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->viewPapers:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$ViewPaperAdapter;-><init>(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;Ljava/util/List;)V

    iput-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$ViewPaperAdapter;

    .line 169
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$ViewPaperAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 170
    new-instance v3, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;

    invoke-direct {v3, p0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;-><init>(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;)V

    iput-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->changeListener:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;

    .line 171
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->changeListener:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->c:Ljava/util/Calendar;

    .line 173
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->c:Ljava/util/Calendar;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 174
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->c:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->currentDate:J

    .line 175
    iput v7, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    .line 176
    iput v7, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->oldCurrentViewID:I

    .line 177
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v4, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 179
    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->initLeftPagerData(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->initCurrentPagerData()V

    .line 181
    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->initRightPagerData(Z)V

    .line 182
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 317
    iget v9, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    .line 318
    .local v9, "currentPage":I
    const v0, 0x7f0c00af

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 319
    .local v12, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f04000f

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    .line 320
    .local v11, "showAnim":Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$ViewPaperAdapter;

    invoke-virtual {v0, v9}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;

    .line 321
    .local v1, "itemView":Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 415
    :goto_0
    return-void

    .line 323
    :sswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapUnit:Ljava/util/Map;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    const v0, 0x7f0c00af

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 328
    invoke-direct {p0, v1, v12}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setWeekDayText(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 331
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListOneWeekSportData:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v2, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setStepOrDistanceOrKcal(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ILjava/util/List;)V

    goto :goto_0

    .line 335
    :sswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapUnit:Ljava/util/Map;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    const-string v2, "pre_DistanceType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 341
    .local v10, "distance_unit":I
    if-nez v10, :cond_0

    .line 342
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    const v2, 0x7f0c00b0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 348
    :goto_1
    invoke-direct {p0, v1, v12}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setWeekDayText(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 350
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListOneWeekSportData:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v2, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setStepOrDistanceOrKcal(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ILjava/util/List;)V

    goto/16 :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    const v2, 0x7f0c00b1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 354
    .end local v10    # "distance_unit":I
    :sswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapUnit:Ljava/util/Map;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    const v0, 0x7f0c00b2

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 359
    invoke-direct {p0, v1, v12}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setWeekDayText(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 361
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListOneWeekSportData:Ljava/util/LinkedList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v2, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setStepOrDistanceOrKcal(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ILjava/util/List;)V

    goto/16 :goto_0

    .line 367
    :sswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;I)V

    .line 368
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setOneWeekCheck(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ZZZZZZZ)V

    goto/16 :goto_0

    .line 373
    :sswitch_4
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;I)V

    .line 374
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setOneWeekCheck(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ZZZZZZZ)V

    goto/16 :goto_0

    .line 378
    :sswitch_5
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;I)V

    .line 379
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setOneWeekCheck(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ZZZZZZZ)V

    goto/16 :goto_0

    .line 383
    :sswitch_6
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;I)V

    .line 384
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setOneWeekCheck(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ZZZZZZZ)V

    goto/16 :goto_0

    .line 388
    :sswitch_7
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;I)V

    .line 389
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setOneWeekCheck(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ZZZZZZZ)V

    goto/16 :goto_0

    .line 393
    :sswitch_8
    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;I)V

    .line 394
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setOneWeekCheck(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ZZZZZZZ)V

    goto/16 :goto_0

    .line 398
    :sswitch_9
    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;I)V

    .line 399
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->setOneWeekCheck(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ZZZZZZZ)V

    goto/16 :goto_0

    .line 403
    :sswitch_a
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x7f06010b -> :sswitch_0
        0x7f06010e -> :sswitch_1
        0x7f060110 -> :sswitch_2
        0x7f060113 -> :sswitch_a
        0x7f060114 -> :sswitch_3
        0x7f060117 -> :sswitch_4
        0x7f06011a -> :sswitch_5
        0x7f06011d -> :sswitch_6
        0x7f060120 -> :sswitch_7
        0x7f060123 -> :sswitch_8
        0x7f060126 -> :sswitch_9
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "contextView":Landroid/view/View;
    const v1, 0x7f0600ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 129
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->times:Ljava/util/List;

    const-string v2, "03:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->times:Ljava/util/List;

    const-string v2, "06:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->times:Ljava/util/List;

    const-string v2, "09:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->times:Ljava/util/List;

    const-string v2, "12:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->times:Ljava/util/List;

    const-string v2, "15:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->times:Ljava/util/List;

    const-string v2, "18:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->times:Ljava/util/List;

    const-string v2, "21:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->context:Landroid/content/Context;

    .line 137
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 193
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 194
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 195
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->dismissDialog()V

    .line 567
    :cond_0
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->isAdd:I

    if-nez v0, :cond_1

    .line 568
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->initLeftPagerData(Z)V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->initRightPagerData(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 187
    return-void
.end method

.method public setDayData(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;I)V
    .locals 3
    .param p1, "itemView"    # Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;
    .param p2, "week"    # I

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideView;

    move-result-object v1

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->linkedListSportDatas:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->times:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/veclink/movnow_q2/view/SportGraphHideView;->setDataInfo(Ljava/util/List;Ljava/util/List;)V

    .line 423
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getSportGraphHideView()Lcom/veclink/movnow_q2/view/SportGraphHideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SportGraphHideView;->invalidate()V

    .line 424
    return-void
.end method

.method public setOneWeekCheck(Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;ZZZZZZZ)V
    .locals 1
    .param p1, "itemView"    # Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;
    .param p2, "isMon"    # Z
    .param p3, "isTues"    # Z
    .param p4, "isWen"    # Z
    .param p5, "isThus"    # Z
    .param p6, "isFri"    # Z
    .param p7, "isSat"    # Z
    .param p8, "isSun"    # Z

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportMon()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 305
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportTues()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 306
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportWen()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 307
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportThus()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 308
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportFri()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 309
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportSat()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 310
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekWalkPagerItemView;->getLlHistorySportSun()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 311
    return-void
.end method

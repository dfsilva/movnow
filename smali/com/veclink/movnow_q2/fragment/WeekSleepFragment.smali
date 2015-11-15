.class public Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;
.super Landroid/support/v4/app/Fragment;
.source "WeekSleepFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;,
        Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field public static FRIDAY:I = 0x0

.field public static final GET_DEEPSLEEP_TIME:I = 0x1

.field public static final GET_HIDEVIEW_SLEEP_DATA:I = 0x3

.field public static final GET_LIGHTSLEEP_TIME:I = 0x2

.field public static final GET_TOTAL_TIME:I = 0x0

.field public static MONDAY:I = 0x0

.field public static SATURDAY:I = 0x0

.field public static SUNDAY:I = 0x0

.field public static final TAG:Ljava/lang/String; = "WeekSleepFragment"

.field public static THURSDAY:I

.field public static TUESDAY:I

.field public static WEDNESDAY:I


# instance fields
.field private atnight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Calendar;

.field private changeListener:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;

.field private context:Landroid/content/Context;

.field private currentDate:J

.field private handler:Landroid/os/Handler;

.field private hideViewSleepDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;>;"
        }
    .end annotation
.end field

.field private isAdd:I

.field private mCurrentViewID:I

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

.field private sleepDeepList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation
.end field

.field private sleepLightList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation
.end field

.field private sleepTotalTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation
.end field

.field protected startDayOfWeek:I

.field private viewPager:Lcom/veclink/movnow_q2/view/MyViewPager;

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

.field private vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

.field private waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->SUNDAY:I

    .line 75
    const/4 v0, 0x2

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->MONDAY:I

    .line 76
    const/4 v0, 0x3

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->TUESDAY:I

    .line 77
    const/4 v0, 0x4

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->WEDNESDAY:I

    .line 78
    const/4 v0, 0x5

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->THURSDAY:I

    .line 79
    const/4 v0, 0x6

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->FRIDAY:I

    .line 80
    const/4 v0, 0x7

    sput v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->SATURDAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    .line 84
    sget v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->MONDAY:I

    iput v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->startDayOfWeek:I

    .line 92
    iput v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    .line 93
    iput v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->oldCurrentViewID:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->changeListener:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->isAdd:I

    .line 180
    new-instance v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;-><init>(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->handler:Landroid/os/Handler;

    .line 596
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    .prologue
    .line 60
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    return v0
.end method

.method static synthetic access$002(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    return p1
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    .prologue
    .line 60
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->oldCurrentViewID:I

    return v0
.end method

.method static synthetic access$302(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->oldCurrentViewID:I

    return p1
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->isAdd:I

    return p1
.end method

.method static synthetic access$600(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;Ljava/util/Calendar;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->syncSleepData(Ljava/util/Calendar;)V

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

    .line 103
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 106
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

    .line 107
    .local v0, "sunday":Lhirondelle/date4j/DateTime;
    iget v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->startDayOfWeek:I

    sget v2, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->SUNDAY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 108
    .local v12, "nextDay":Lhirondelle/date4j/DateTime;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v10, v1, :cond_0

    .line 109
    invoke-static {v12}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateTimeToDate(Lhirondelle/date4j/DateTime;)Ljava/util/Date;

    move-result-object v8

    .line 110
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 108
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 113
    .end local v8    # "date":Ljava/util/Date;
    :cond_0
    return-object v11
.end method

.method private setWeekDayText(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemView"    # Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 711
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvMonUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvTuesUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvWenUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvThusUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvFriUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSatUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSunUnit()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    return-void
.end method

.method private syncSleepData(Ljava/util/Calendar;)V
    .locals 5
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 381
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "startTime":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->getLastDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "endTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    if-nez v2, :cond_2

    new-instance v2, Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    const v4, 0x7f0c01aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->setMessage(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->showDialog()V

    .line 391
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v2, v1, v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncSportData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkViewPagePagingEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 720
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 721
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 722
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 723
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 724
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 725
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 726
    .local v2, "currentWeek":I
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->getWeekOfYear()I

    move-result v1

    .line 727
    .local v1, "currentPageWeek":I
    if-ne v2, v1, :cond_0

    .line 728
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->viewPager:Lcom/veclink/movnow_q2/view/MyViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/view/MyViewPager;->setPagingEnabled(Z)V

    .line 732
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->viewPager:Lcom/veclink/movnow_q2/view/MyViewPager;

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/view/MyViewPager;->setPagingEnabled(Z)V

    goto :goto_0
.end method

.method public getWeekOfYear()I
    .locals 4

    .prologue
    .line 547
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 548
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 549
    const/4 v2, 0x7

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 550
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 551
    iget-wide v2, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 552
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 557
    .end local v0    # "cal":Ljava/util/Calendar;
    :goto_0
    return v2

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 557
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initCurrentPagerData()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/StringUtil;->getLastDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "time":Ljava/lang/String;
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    iget v7, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 331
    .local v0, "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvTime()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->querySleepDataByOneWeek(Landroid/content/Context;Ljava/util/Date;I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->sleepTotalTimeList:Ljava/util/List;

    .line 333
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->querySleepDataByOneWeek(Landroid/content/Context;Ljava/util/Date;I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->sleepDeepList:Ljava/util/List;

    .line 334
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    invoke-static {v6, v7, v13}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->querySleepDataByOneWeek(Landroid/content/Context;Ljava/util/Date;I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->sleepLightList:Ljava/util/List;

    .line 335
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->querySleepDataByOneWeekAtNight(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->hideViewSleepDataList:Ljava/util/List;

    .line 337
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->sleepTotalTimeList:Ljava/util/List;

    invoke-virtual {v6, v10, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 338
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->sleepDeepList:Ljava/util/List;

    invoke-virtual {v6, v12, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 339
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->sleepLightList:Ljava/util/List;

    invoke-virtual {v6, v13, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 340
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->handler:Landroid/os/Handler;

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->hideViewSleepDataList:Ljava/util/List;

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 341
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v7, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 342
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v7, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_0
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v7, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 346
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    :goto_0
    iget v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    add-int/lit8 v4, v6, 0x1

    .line 354
    .local v4, "nextId":I
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    invoke-virtual {v6, v4}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 355
    .local v2, "itemViewNext":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 356
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_1
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 359
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 366
    :goto_1
    iget v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    add-int/lit8 v3, v6, -0x1

    .line 367
    .local v3, "lastId":I
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    invoke-virtual {v6, v3}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 368
    .local v1, "itemViewLast":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 369
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_2
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 372
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    :goto_2
    return-void

    .line 349
    .end local v1    # "itemViewLast":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .end local v2    # "itemViewNext":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .end local v3    # "lastId":I
    .end local v4    # "nextId":I
    :cond_3
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 362
    .restart local v2    # "itemViewNext":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .restart local v4    # "nextId":I
    :cond_4
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 375
    .restart local v1    # "itemViewLast":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .restart local v3    # "lastId":I
    :cond_5
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public initNextOrLastPagerData(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p2, "sleepTotalTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .local p3, "sleepDeepList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .local p4, "sleepLightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .local p5, "hideViewSleepDataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;>;"
    const/4 v8, 0x0

    .line 431
    .local v8, "timeTotal":I
    iget-object v9, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    invoke-virtual {v9, p1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 432
    .local v4, "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 433
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotySleepTotal()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->setDataInfo(Ljava/util/List;)V

    .line 434
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotySleepTotal()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->invalidate()V

    .line 435
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 436
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v9

    add-int/2addr v8, v9

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSleepTotal()Landroid/widget/TextView;

    move-result-object v9

    mul-int/lit8 v10, v8, 0x3c

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    .line 443
    .local v1, "deepSleepTime":I
    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 444
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotyDeepSleep()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->setDataInfo(Ljava/util/List;)V

    .line 445
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotyDeepSleep()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->invalidate()V

    .line 446
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 448
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v9

    add-int/2addr v1, v9

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 451
    :cond_2
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSleepDeep()Landroid/widget/TextView;

    move-result-object v9

    mul-int/lit8 v10, v1, 0x3c

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    .end local v2    # "i":I
    :cond_3
    const/4 v5, 0x0

    .line 455
    .local v5, "lightSleepTime":I
    if-eqz p4, :cond_5

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 456
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotyLightSleep()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->setDataInfo(Ljava/util/List;)V

    .line 457
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotyLightSleep()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->invalidate()V

    .line 458
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 459
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v9

    add-int/2addr v5, v9

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 461
    :cond_4
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSleepLight()Landroid/widget/TextView;

    move-result-object v9

    mul-int/lit8 v10, v5, 0x3c

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .end local v2    # "i":I
    :cond_5
    const/4 v6, 0x0

    .line 465
    .local v6, "lightSleepTimeMon":I
    if-eqz p5, :cond_d

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_d

    .line 466
    const-string v9, "WeekSleepFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6bcf\u4e2a\u661f\u671f\u7684size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getSleepGraphHideView()Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    move-result-object v10

    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    iget-object v11, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    const/4 v12, 0x1

    invoke-virtual {v10, v9, v11, v12}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 469
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getSleepGraphHideView()Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->invalidate()V

    .line 471
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportMon()Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 472
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportTues()Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 473
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportWen()Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 474
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportThus()Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 475
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportFri()Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 476
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportSat()Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 477
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportSun()Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 480
    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 481
    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/veclink/healthy/database/entity/SleepData;

    .line 482
    .local v7, "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v9

    add-int/2addr v6, v9

    .line 483
    goto :goto_3

    .line 485
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_6
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvMon()Landroid/widget/TextView;

    move-result-object v9

    mul-int/lit8 v10, v6, 0x3c

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    const/4 v6, 0x0

    .line 488
    const/4 v9, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 489
    const/4 v9, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/veclink/healthy/database/entity/SleepData;

    .line 490
    .restart local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v9

    add-int/2addr v6, v9

    .line 491
    goto :goto_4

    .line 493
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_7
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvTues()Landroid/widget/TextView;

    move-result-object v9

    mul-int/lit8 v10, v6, 0x3c

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    const/4 v6, 0x0

    .line 497
    const/4 v9, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 498
    const/4 v9, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/veclink/healthy/database/entity/SleepData;

    .line 499
    .restart local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v9

    add-int/2addr v6, v9

    .line 500
    goto :goto_5

    .line 502
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_8
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvWen()Landroid/widget/TextView;

    move-result-object v9

    mul-int/lit8 v10, v6, 0x3c

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    const/4 v6, 0x0

    .line 506
    const/4 v9, 0x3

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 507
    const/4 v9, 0x3

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/veclink/healthy/database/entity/SleepData;

    .line 508
    .restart local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v9

    add-int/2addr v6, v9

    .line 509
    goto :goto_6

    .line 511
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_9
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvThus()Landroid/widget/TextView;

    move-result-object v9

    mul-int/lit8 v10, v6, 0x3c

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    const/4 v6, 0x0

    .line 515
    const/4 v9, 0x4

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 516
    const/4 v9, 0x4

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/veclink/healthy/database/entity/SleepData;

    .line 517
    .restart local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v9

    add-int/2addr v6, v9

    .line 518
    goto :goto_7

    .line 520
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_a
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvFri()Landroid/widget/TextView;

    move-result-object v9

    mul-int/lit8 v10, v6, 0x3c

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    const/4 v6, 0x0

    .line 524
    const/4 v9, 0x5

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 525
    const/4 v9, 0x5

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/veclink/healthy/database/entity/SleepData;

    .line 526
    .restart local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v9

    add-int/2addr v6, v9

    .line 527
    goto :goto_8

    .line 529
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_b
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSat()Landroid/widget/TextView;

    move-result-object v9

    mul-int/lit8 v10, v6, 0x3c

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    const/4 v6, 0x0

    .line 533
    const/4 v9, 0x6

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 534
    const/4 v9, 0x6

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/veclink/healthy/database/entity/SleepData;

    .line 535
    .restart local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v9

    add-int/2addr v6, v9

    .line 536
    goto :goto_9

    .line 538
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_c
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSun()Landroid/widget/TextView;

    move-result-object v9

    mul-int/lit8 v10, v6, 0x3c

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :cond_d
    return-void
.end method

.method public initNextOrLastPagerData(Z)V
    .locals 14
    .param p1, "left"    # Z

    .prologue
    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, "viewId":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 398
    .local v6, "calendar":Ljava/util/Calendar;
    iget-wide v12, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J

    invoke-virtual {v6, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 399
    if-eqz p1, :cond_1

    .line 400
    const/4 v0, 0x5

    const/4 v12, -0x7

    invoke-virtual {v6, v0, v12}, Ljava/util/Calendar;->add(II)V

    .line 401
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    add-int/lit8 v1, v0, -0x1

    .line 406
    :goto_0
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 407
    .local v7, "date":J
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 408
    .local v9, "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v12

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "-"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/StringUtil;->getLastDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v12

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 409
    .local v11, "time":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvTime()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v0, v12, v13}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->querySleepDataByOneWeek(Landroid/content/Context;Ljava/util/Date;I)Ljava/util/List;

    move-result-object v2

    .line 411
    .local v2, "totalTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v0, v12, v13}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->querySleepDataByOneWeek(Landroid/content/Context;Ljava/util/Date;I)Ljava/util/List;

    move-result-object v3

    .line 412
    .local v3, "deepList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v0, v12, v13}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->querySleepDataByOneWeek(Landroid/content/Context;Ljava/util/Date;I)Ljava/util/List;

    move-result-object v4

    .line 413
    .local v4, "lightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v12}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/veclink/healthy/database/op/HealthyDBOprateSleepData;->querySleepDataByOneWeekAtNight(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v5

    .line 415
    .local v5, "hideViewDataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 416
    .local v10, "itemViewNext":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {v10}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    invoke-virtual {v10}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    move-object v0, p0

    .line 426
    invoke-virtual/range {v0 .. v5}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->initNextOrLastPagerData(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 427
    return-void

    .line 403
    .end local v2    # "totalTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v3    # "deepList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v4    # "lightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v5    # "hideViewDataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;>;"
    .end local v7    # "date":J
    .end local v9    # "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .end local v10    # "itemViewNext":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .end local v11    # "time":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x5

    const/4 v12, 0x7

    invoke-virtual {v6, v0, v12}, Ljava/util/Calendar;->add(II)V

    .line 404
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_0

    .line 423
    .restart local v2    # "totalTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .restart local v3    # "deepList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .restart local v4    # "lightList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .restart local v5    # "hideViewDataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;>;"
    .restart local v7    # "date":J
    .restart local v9    # "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .restart local v10    # "itemViewNext":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .restart local v11    # "time":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    invoke-virtual {v10}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x2710

    const/4 v6, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 136
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v3, p0, v4, v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->viewPapers:Ljava/util/List;

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->hideViewSleepDataList:Ljava/util/List;

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 140
    new-instance v1, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;-><init>(Landroid/content/Context;)V

    .line 141
    .local v1, "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportSteps()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportDistance()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportCalories()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportMon()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportTues()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportWen()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportThus()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportFri()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportSat()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportSun()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getSleepGraphHideView()Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    new-instance v2, Lcom/veclink/movnow_q2/view/calendar/WeekdayArrayAdapter;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    const v4, 0x7f030040

    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->getDaysOfWeek()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/veclink/movnow_q2/view/calendar/WeekdayArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 156
    .local v2, "weekdaysAdapter":Lcom/veclink/movnow_q2/view/calendar/WeekdayArrayAdapter;
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getWeekdayGridView()Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->viewPapers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .end local v2    # "weekdaysAdapter":Lcom/veclink/movnow_q2/view/calendar/WeekdayArrayAdapter;
    :cond_0
    new-instance v3, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->viewPapers:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;-><init>(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;Ljava/util/List;)V

    iput-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    .line 160
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->viewPager:Lcom/veclink/movnow_q2/view/MyViewPager;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/view/MyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 161
    new-instance v3, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;

    invoke-direct {v3, p0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;-><init>(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)V

    iput-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->changeListener:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;

    .line 162
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->viewPager:Lcom/veclink/movnow_q2/view/MyViewPager;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->changeListener:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/view/MyViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->c:Ljava/util/Calendar;

    .line 164
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->c:Ljava/util/Calendar;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 165
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->c:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J

    .line 166
    iput v7, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    .line 167
    iput v7, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->oldCurrentViewID:I

    .line 168
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->viewPager:Lcom/veclink/movnow_q2/view/MyViewPager;

    iget v4, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/view/MyViewPager;->setCurrentItem(I)V

    .line 169
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->checkViewPagePagingEnabled()V

    .line 170
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->initCurrentPagerData()V

    .line 171
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->initNextOrLastPagerData(Z)V

    .line 172
    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->initNextOrLastPagerData(Z)V

    .line 173
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 631
    const v0, 0x7f0c00af

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 632
    .local v13, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f04000f

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    .line 633
    .local v12, "showAnim":Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    iget v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 635
    .local v11, "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 687
    :goto_0
    return-void

    .line 639
    :sswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v3, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 641
    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 642
    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 643
    const v0, 0x7f0c00b3

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 644
    invoke-direct {p0, v11, v13}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setWeekDayText(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :sswitch_1
    invoke-virtual {p0, v11, v2}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;I)V

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    .line 649
    invoke-virtual/range {v0 .. v7}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setOneWeekCheck(ZZZZZZZ)V

    goto :goto_0

    .line 652
    :sswitch_2
    invoke-virtual {p0, v11, v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;I)V

    move-object v3, p0

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 653
    invoke-virtual/range {v3 .. v10}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setOneWeekCheck(ZZZZZZZ)V

    goto :goto_0

    .line 656
    :sswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v11, v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;I)V

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 657
    invoke-virtual/range {v3 .. v10}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setOneWeekCheck(ZZZZZZZ)V

    goto :goto_0

    .line 660
    :sswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v11, v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;I)V

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v1

    move v8, v2

    move v9, v2

    move v10, v2

    .line 661
    invoke-virtual/range {v3 .. v10}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setOneWeekCheck(ZZZZZZZ)V

    goto :goto_0

    .line 664
    :sswitch_5
    const/4 v0, 0x4

    invoke-virtual {p0, v11, v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;I)V

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v2

    move v10, v2

    .line 665
    invoke-virtual/range {v3 .. v10}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setOneWeekCheck(ZZZZZZZ)V

    goto :goto_0

    .line 668
    :sswitch_6
    const/4 v0, 0x5

    invoke-virtual {p0, v11, v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;I)V

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    move v10, v2

    .line 669
    invoke-virtual/range {v3 .. v10}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setOneWeekCheck(ZZZZZZZ)V

    goto/16 :goto_0

    .line 672
    :sswitch_7
    const/4 v0, 0x6

    invoke-virtual {p0, v11, v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setDayData(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;I)V

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v1

    .line 673
    invoke-virtual/range {v3 .. v10}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->setOneWeekCheck(ZZZZZZZ)V

    goto/16 :goto_0

    .line 676
    :sswitch_8
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mapWeekOrDayDisplay:Ljava/util/Map;

    iget v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 678
    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeekDetail()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 679
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    .line 680
    invoke-virtual {v11}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistoryWeek()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 635
    :sswitch_data_0
    .sparse-switch
        0x7f06010b -> :sswitch_0
        0x7f06010e -> :sswitch_0
        0x7f060110 -> :sswitch_0
        0x7f060113 -> :sswitch_8
        0x7f060114 -> :sswitch_1
        0x7f060117 -> :sswitch_2
        0x7f06011a -> :sswitch_3
        0x7f06011d -> :sswitch_4
        0x7f060120 -> :sswitch_5
        0x7f060123 -> :sswitch_6
        0x7f060126 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "contextView":Landroid/view/View;
    const v1, 0x7f0600ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/MyViewPager;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->viewPager:Lcom/veclink/movnow_q2/view/MyViewPager;

    .line 121
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 122
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    const-string v2, "21:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    const-string v2, "23:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    const-string v2, "01:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    const-string v2, "03:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    const-string v2, "05:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    const-string v2, "07:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    const-string v2, "09:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->context:Landroid/content/Context;

    .line 130
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 322
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 323
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 324
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->dismissDialog()V

    .line 736
    :cond_0
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->isAdd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 737
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->isAdd:I

    if-nez v0, :cond_2

    .line 738
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->initNextOrLastPagerData(Z)V

    .line 743
    :cond_1
    :goto_0
    return-void

    .line 740
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->initNextOrLastPagerData(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 319
    return-void
.end method

.method public setDayData(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;I)V
    .locals 4
    .param p1, "itemView"    # Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .param p2, "week"    # I

    .prologue
    .line 702
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getSleepGraphHideView()Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    move-result-object v1

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->hideViewSleepDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 703
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getSleepGraphHideView()Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->invalidate()V

    .line 704
    return-void
.end method

.method public setOneWeekCheck(ZZZZZZZ)V
    .locals 3
    .param p1, "isMon"    # Z
    .param p2, "isTues"    # Z
    .param p3, "isWen"    # Z
    .param p4, "isThus"    # Z
    .param p5, "isFri"    # Z
    .param p6, "isSat"    # Z
    .param p7, "isSun"    # Z

    .prologue
    .line 690
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    iget v2, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 691
    .local v0, "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportMon()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 692
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportTues()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 693
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportWen()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 694
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportThus()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 695
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportFri()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 696
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportSat()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 697
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportSun()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 698
    return-void
.end method

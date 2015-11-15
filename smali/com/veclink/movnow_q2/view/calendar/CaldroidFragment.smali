.class public Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CaldroidFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;
    }
.end annotation


# static fields
.field public static final DAY:Ljava/lang/String; = "day"

.field public static final DIALOG_TITLE:Ljava/lang/String; = "dialogTitle"

.field public static final DISABLE_DATES:Ljava/lang/String; = "disableDates"

.field public static final ENABLE_CLICK_ON_DISABLED_DATES:Ljava/lang/String; = "enableClickOnDisabledDates"

.field public static final ENABLE_SWIPE:Ljava/lang/String; = "enableSwipe"

.field public static FRIDAY:I = 0x0

.field public static final ISSLEEPDATA:Ljava/lang/String; = "issleepdata"

.field public static final MAX_DATE:Ljava/lang/String; = "maxDate"

.field public static final MIN_DATE:Ljava/lang/String; = "minDate"

.field public static MONDAY:I = 0x0

.field public static final MONTH:Ljava/lang/String; = "month"

.field private static final MONTH_YEAR_FLAG:I = 0x34

.field public static final NUMBER_OF_PAGES:I = 0x4

.field public static SATURDAY:I = 0x0

.field public static final SELECTED_DATES:Ljava/lang/String; = "selectedDates"

.field public static final SHOW_NAVIGATION_ARROWS:Ljava/lang/String; = "showNavigationArrows"

.field public static final SIX_WEEKS_IN_CALENDAR:Ljava/lang/String; = "sixWeeksInCalendar"

.field public static final START_DAY_OF_WEEK:Ljava/lang/String; = "startDayOfWeek"

.field public static SUNDAY:I = 0x0

.field public static THURSDAY:I = 0x0

.field public static TUESDAY:I = 0x0

.field public static WEDNESDAY:I = 0x0

.field public static final YEAR:Ljava/lang/String; = "year"

.field public static final _BACKGROUND_FOR_DATETIME_MAP:Ljava/lang/String; = "_backgroundForDateTimeMap"

.field public static final _MAX_DATE_TIME:Ljava/lang/String; = "_maxDateTime"

.field public static final _MIN_DATE_TIME:Ljava/lang/String; = "_minDateTime"

.field public static final _TEXT_COLOR_FOR_DATETIME_MAP:Ljava/lang/String; = "_textColorForDateTimeMap"

.field public static disabledBackgroundDrawable:I

.field public static disabledTextColor:I

.field public static selectedBackgroundDrawable:I

.field public static selectedTextColor:I


# instance fields
.field public TAG:Ljava/lang/String;

.field protected backgroundForDateTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected caldroidData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

.field protected dateInMonthsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private dateItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private dateItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected datePagerAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

.field protected day:I

.field protected dialogTitle:Ljava/lang/String;

.field protected disableDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private distance_unit_view:Landroid/widget/TextView;

.field protected enableClickOnDisabledDates:Z

.field protected enableSwipe:Z

.field protected extraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private firstMonthTime:Landroid/text/format/Time;

.field final formatterMonth:Ljava/text/SimpleDateFormat;

.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;",
            ">;"
        }
    .end annotation
.end field

.field protected isSleepData:Z

.field private leftArrowButton:Landroid/widget/TextView;

.field private mTitleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field protected maxDateTime:Lhirondelle/date4j/DateTime;

.field protected minDateTime:Lhirondelle/date4j/DateTime;

.field protected month:I

.field private monthTitleTextView:Landroid/widget/TextView;

.field private monthYearFormatter:Ljava/util/Formatter;

.field private final monthYearStringBuilder:Ljava/lang/StringBuilder;

.field private pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

.field private rightArrowButton:Landroid/widget/TextView;

.field protected selectedDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field protected showNavigationArrows:Z

.field private sixWeeksInCalendar:Z

.field protected startDayOfWeek:I

.field protected textColorForDateTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private total_distance:Landroid/widget/TextView;

.field private total_kcal:Landroid/widget/TextView;

.field private total_step:Landroid/widget/TextView;

.field private waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

.field private weekdayGridView:Landroid/widget/GridView;

.field protected year:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 95
    const/4 v0, 0x1

    sput v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->SUNDAY:I

    .line 96
    const/4 v0, 0x2

    sput v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->MONDAY:I

    .line 97
    const/4 v0, 0x3

    sput v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->TUESDAY:I

    .line 98
    const/4 v0, 0x4

    sput v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->WEDNESDAY:I

    .line 99
    const/4 v0, 0x5

    sput v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->THURSDAY:I

    .line 100
    const/4 v0, 0x6

    sput v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->FRIDAY:I

    .line 101
    const/4 v0, 0x7

    sput v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->SATURDAY:I

    .line 122
    sput v1, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedBackgroundDrawable:I

    .line 123
    const/high16 v0, -0x1000000

    sput v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedTextColor:I

    .line 130
    sput v1, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disabledBackgroundDrawable:I

    .line 131
    const v0, -0x777778

    sput v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disabledTextColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 80
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 81
    const-string v0, "CaldroidFragment"

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->formatterMonth:Ljava/text/SimpleDateFormat;

    .line 111
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->firstMonthTime:Landroid/text/format/Time;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->monthYearStringBuilder:Ljava/lang/StringBuilder;

    .line 117
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->monthYearStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->monthYearFormatter:Ljava/util/Formatter;

    .line 174
    iput v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->month:I

    .line 175
    iput v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->year:I

    .line 176
    iput v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->day:I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidData:Ljava/util/HashMap;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->extraData:Ljava/util/HashMap;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/HashMap;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/HashMap;

    .line 206
    sget v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->MONDAY:I

    iput v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->startDayOfWeek:I

    .line 212
    iput-boolean v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->sixWeeksInCalendar:Z

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    .line 222
    iput-boolean v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->enableSwipe:Z

    .line 223
    iput-boolean v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->showNavigationArrows:Z

    .line 224
    iput-boolean v5, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->enableClickOnDisabledDates:Z

    .line 226
    iput-boolean v5, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->isSleepData:Z

    .line 1278
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    return-object v0
.end method

.method private getDateItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 829
    new-instance v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$1;-><init>(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getDateItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-nez v0, :cond_0

    .line 866
    new-instance v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$2;-><init>(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
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

    .line 1253
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1258
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

    .line 1259
    .local v0, "sunday":Lhirondelle/date4j/DateTime;
    iget v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->startDayOfWeek:I

    sget v2, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->SUNDAY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 1261
    .local v12, "nextDay":Lhirondelle/date4j/DateTime;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v10, v1, :cond_0

    .line 1262
    invoke-static {v12}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateTimeToDate(Lhirondelle/date4j/DateTime;)Ljava/util/Date;

    move-result-object v8

    .line 1263
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 1261
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1266
    .end local v8    # "date":Ljava/util/Date;
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDayOfWeek:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->startDayOfWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return-object v11
.end method

.method public static newInstance(Ljava/lang/String;III)Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;
    .locals 3
    .param p0, "dialogTitle"    # Ljava/lang/String;
    .param p1, "month"    # I
    .param p2, "year"    # I
    .param p3, "day"    # I

    .prologue
    .line 1072
    new-instance v1, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-direct {v1}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;-><init>()V

    .line 1075
    .local v1, "f":Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1076
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "dialogTitle"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v2, "month"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    const-string v2, "year"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    const-string v2, "day"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1081
    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1083
    return-object v1
.end method

.method private setupDateGridPages(Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1187
    new-instance v2, Lhirondelle/date4j/DateTime;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->year:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->month:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1190
    .local v2, "currentDateTime":Lhirondelle/date4j/DateTime;
    new-instance v4, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;-><init>(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    .line 1191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v4, v2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->setCurrentDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1194
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getNewDatesGridAdapter(II)Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    move-result-object v14

    .line 1196
    .local v14, "adapter0":Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    invoke-virtual {v14}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->getDatetimeList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateInMonthsList:Ljava/util/ArrayList;

    .line 1198
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v2 .. v10}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v3

    .line 1199
    .local v3, "nextDateTime":Lhirondelle/date4j/DateTime;
    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getNewDatesGridAdapter(II)Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    move-result-object v15

    .line 1201
    .local v15, "adapter1":Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v3 .. v11}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v21

    .line 1202
    .local v21, "next2DateTime":Lhirondelle/date4j/DateTime;
    invoke-virtual/range {v21 .. v21}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getNewDatesGridAdapter(II)Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    move-result-object v16

    .line 1204
    .local v16, "adapter2":Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    move-object v4, v2

    invoke-virtual/range {v4 .. v12}, Lhirondelle/date4j/DateTime;->minus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v23

    .line 1205
    .local v23, "prevDateTime":Lhirondelle/date4j/DateTime;
    invoke-virtual/range {v23 .. v23}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v23 .. v23}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getNewDatesGridAdapter(II)Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    move-result-object v17

    .line 1207
    .local v17, "adapter3":Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->setCaldroidGridAdapters(Ljava/util/ArrayList;)V

    .line 1217
    const v4, 0x7f060089

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->enableSwipe:Z

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setEnabled(Z)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->sixWeeksInCalendar:Z

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setSixWeeksInCalendar(Z)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateInMonthsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setDatesInMonth(Ljava/util/ArrayList;)V

    .line 1228
    new-instance v22, Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1231
    .local v22, "pagerAdapter":Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;
    invoke-virtual/range {v22 .. v22}, Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;->getFragments()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->fragments:Ljava/util/ArrayList;

    .line 1232
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    const/4 v4, 0x4

    move/from16 v0, v19

    if-ge v0, v4, :cond_0

    .line 1233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->fragments:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;

    .line 1234
    .local v18, "dateGridFragment":Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    .line 1235
    .local v13, "adapter":Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->setGridAdapter(Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;)V

    .line 1236
    invoke-direct/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getDateItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1237
    invoke-direct/range {p0 .. p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getDateItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1232
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1240
    .end local v13    # "adapter":Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    .end local v18    # "dateGridFragment":Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;
    :cond_0
    new-instance v20, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    .line 1242
    .local v20, "infinitePagerAdapter":Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1245
    return-void
.end method

.method private syncSportOrSleepData(Ljava/util/Calendar;)V
    .locals 5
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 904
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/movnow_q2/util/StringUtil;->getMonthFirstDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, "startTime":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/movnow_q2/util/StringUtil;->getMonthLastDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, "endTime":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 908
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 917
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    if-nez v3, :cond_1

    new-instance v3, Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-direct {v3, v0}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    .line 910
    :cond_1
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    const v4, 0x7f0c01aa

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->setMessage(Ljava/lang/String;)V

    .line 911
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->showDialog()V

    .line 912
    iget-boolean v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->isSleepData:Z

    if-eqz v3, :cond_2

    .line 913
    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v3, v2, v1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncSleepData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 915
    :cond_2
    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v3, v2, v1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncSportData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearDisableDates()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 598
    return-void
.end method

.method public clearSelectedDates()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 657
    return-void
.end method

.method public getCaldroidData()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 317
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidData:Ljava/util/HashMap;

    const-string v1, "disableDates"

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidData:Ljava/util/HashMap;

    const-string v1, "selectedDates"

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidData:Ljava/util/HashMap;

    const-string v1, "_minDateTime"

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidData:Ljava/util/HashMap;

    const-string v1, "_maxDateTime"

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidData:Ljava/util/HashMap;

    const-string v1, "startDayOfWeek"

    iget v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->startDayOfWeek:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidData:Ljava/util/HashMap;

    const-string v1, "sixWeeksInCalendar"

    iget-boolean v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->sixWeeksInCalendar:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidData:Ljava/util/HashMap;

    const-string v1, "_backgroundForDateTimeMap"

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidData:Ljava/util/HashMap;

    const-string v1, "_textColorForDateTimeMap"

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCaldroidListener()Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    return-object v0
.end method

.method public getCurrentVirtualPosition()I
    .locals 2

    .prologue
    .line 496
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->getCurrentItem()I

    move-result v0

    .line 497
    .local v0, "currentPage":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->getCurrent(I)I

    move-result v1

    return v1
.end method

.method public getDatePagerAdapters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExtraData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->extraData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFragments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->fragments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLeftArrowButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->leftArrowButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMonthTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->monthTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNewDatesGridAdapter(II)Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    .locals 6
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    .line 258
    new-instance v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getCaldroidData()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->extraData:Ljava/util/HashMap;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;-><init>(Landroid/content/Context;IILjava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public getRightArrowButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->rightArrowButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSavedStates()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 417
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 418
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "month"

    iget v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->month:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    const-string v1, "year"

    iget v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->year:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    const-string v1, "day"

    iget v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->day:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dialogTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 423
    const-string v1, "dialogTitle"

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 427
    const-string v1, "selectedDates"

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertToStringList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 431
    const-string v1, "disableDates"

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertToStringList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v1, :cond_3

    .line 435
    const-string v1, "minDate"

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    const-string v3, "YYYY-MM-DD"

    invoke-virtual {v2, v3}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_3
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v1, :cond_4

    .line 439
    const-string v1, "maxDate"

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    const-string v3, "YYYY-MM-DD"

    invoke-virtual {v2, v3}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_4
    const-string v1, "showNavigationArrows"

    iget-boolean v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->showNavigationArrows:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    const-string v1, "issleepdata"

    iget-boolean v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->isSleepData:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    const-string v1, "enableSwipe"

    iget-boolean v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->enableSwipe:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    const-string v1, "startDayOfWeek"

    iget v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->startDayOfWeek:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    const-string v1, "sixWeeksInCalendar"

    iget-boolean v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->sixWeeksInCalendar:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    return-object v0
.end method

.method public getWeekdayGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->weekdayGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public isEnableSwipe()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->enableSwipe:Z

    return v0
.end method

.method public isShowNavigationArrows()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->showNavigationArrows:Z

    return v0
.end method

.method public isSixWeeksInCalendar()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->sixWeeksInCalendar:Z

    return v0
.end method

.method public moveToDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 506
    invoke-static {p1}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->moveToDateTime(Lhirondelle/date4j/DateTime;)V

    .line 507
    return-void
.end method

.method public moveToDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 14
    .param p1, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 516
    new-instance v0, Lhirondelle/date4j/DateTime;

    iget v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->month:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 517
    .local v0, "firstOfMonth":Lhirondelle/date4j/DateTime;
    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getEndOfMonth()Lhirondelle/date4j/DateTime;

    move-result-object v13

    .line 523
    .local v13, "lastOfMonth":Lhirondelle/date4j/DateTime;
    invoke-virtual {p1, v0}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 529
    .local v12, "firstDayNextMonth":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1, v12}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->setCurrentDateTime(Lhirondelle/date4j/DateTime;)V

    .line 530
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->getCurrentItem()I

    move-result v10

    .line 531
    .local v10, "currentItem":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1, v10}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->refreshAdapters(I)V

    .line 534
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setCurrentItem(I)V

    .line 552
    .end local v10    # "currentItem":I
    .end local v12    # "firstDayNextMonth":Lhirondelle/date4j/DateTime;
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {p1, v13}, Lhirondelle/date4j/DateTime;->gt(Lhirondelle/date4j/DateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lhirondelle/date4j/DateTime;->minus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v11

    .line 544
    .local v11, "firstDayLastMonth":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1, v11}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->setCurrentDateTime(Lhirondelle/date4j/DateTime;)V

    .line 545
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->getCurrentItem()I

    move-result v10

    .line 546
    .restart local v10    # "currentItem":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1, v10}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->refreshAdapters(I)V

    .line 549
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public nextMonth()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setCurrentItem(I)V

    .line 590
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1446
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 1107
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->retrieveInitialArgs()V

    .line 1108
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, p0, v3, v4}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 1110
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1111
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setRetainInstance(Z)V

    .line 1115
    :cond_0
    const v2, 0x7f030024

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1117
    .local v0, "view":Landroid/view/View;
    const v2, 0x7f060023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->mTitleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 1118
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->mTitleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v3, 0x7f0c003e

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 1133
    const v2, 0x7f060086

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->monthTitleTextView:Landroid/widget/TextView;

    .line 1136
    const v2, 0x7f060085

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->leftArrowButton:Landroid/widget/TextView;

    .line 1137
    const v2, 0x7f060087

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->rightArrowButton:Landroid/widget/TextView;

    .line 1140
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->leftArrowButton:Landroid/widget/TextView;

    new-instance v3, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$3;

    invoke-direct {v3, p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$3;-><init>(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1148
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->rightArrowButton:Landroid/widget/TextView;

    new-instance v3, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$4;

    invoke-direct {v3, p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$4;-><init>(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1156
    iget-boolean v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->showNavigationArrows:Z

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setShowNavigationArrows(Z)V

    .line 1159
    const v2, 0x7f060088

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->weekdayGridView:Landroid/widget/GridView;

    .line 1160
    new-instance v1, Lcom/veclink/movnow_q2/view/calendar/WeekdayArrayAdapter;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030040

    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getDaysOfWeek()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/veclink/movnow_q2/view/calendar/WeekdayArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1161
    .local v1, "weekdaysAdapter":Lcom/veclink/movnow_q2/view/calendar/WeekdayArrayAdapter;
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->weekdayGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1164
    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setupDateGridPages(Landroid/view/View;)V

    .line 1167
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->refreshView()V

    .line 1171
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    if-eqz v2, :cond_1

    .line 1172
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;->onCaldroidViewCreated()V

    .line 1176
    :cond_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 899
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 900
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 901
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 1099
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 1100
    return-void
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 1431
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 1433
    :try_start_0
    const-class v2, Landroid/support/v4/app/Fragment;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1434
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1435
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1441
    return-void

    .line 1436
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 1437
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1438
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 1439
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->waitDialogUtil:Lcom/veclink/movnow_q2/view/WaitDialogUtil;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/WaitDialogUtil;->dismissDialog()V

    .line 922
    :cond_0
    return-void
.end method

.method public prevMonth()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->pageChangeListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$DatePageChangeListener;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setCurrentItem(I)V

    .line 583
    return-void
.end method

.method protected refreshMonthTitleTextView()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 929
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->firstMonthTime:Landroid/text/format/Time;

    iget v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->year:I

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 930
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->firstMonthTime:Landroid/text/format/Time;

    iget v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->month:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 931
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->firstMonthTime:Landroid/text/format/Time;

    iput v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 932
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->firstMonthTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 933
    .local v2, "millis":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 934
    .local v7, "calendar":Ljava/util/Calendar;
    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 935
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    invoke-direct {p0, v7}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->syncSportOrSleepData(Ljava/util/Calendar;)V

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->monthYearStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 941
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->monthYearFormatter:Ljava/util/Formatter;

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 943
    .local v8, "monthTitle":Ljava/lang/String;
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->monthTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    return-void
.end method

.method public refreshView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 953
    iget v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->month:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->year:I

    if-ne v2, v3, :cond_1

    .line 970
    :cond_0
    return-void

    .line 957
    :cond_1
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->refreshMonthTitleTextView()V

    .line 960
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    .line 962
    .local v0, "adapter":Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getCaldroidData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->setCaldroidData(Ljava/util/HashMap;)V

    .line 965
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->extraData:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->setExtraData(Ljava/util/HashMap;)V

    .line 968
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public restoreDialogStatesFromKey(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "dialogTag"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-virtual {p0, p2, p3}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->restoreStatesFromKey(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    .line 486
    .local v0, "existingDialog":Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;
    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dismiss()V

    .line 488
    invoke-virtual {p0, p1, p4}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 490
    :cond_0
    return-void
.end method

.method public restoreStatesFromKey(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 468
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 470
    .local v0, "caldroidSavedState":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setArguments(Landroid/os/Bundle;)V

    .line 472
    .end local v0    # "caldroidSavedState":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected retrieveInitialArgs()V
    .locals 12

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 980
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_6

    .line 982
    const-string v10, "month"

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->month:I

    .line 983
    const-string v10, "year"

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->year:I

    .line 984
    const-string v10, "day"

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->day:I

    .line 985
    const-string v10, "dialogTitle"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dialogTitle:Ljava/lang/String;

    .line 986
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    .line 987
    .local v3, "dialog":Landroid/app/Dialog;
    if-eqz v3, :cond_0

    .line 988
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dialogTitle:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 989
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dialogTitle:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 998
    :cond_0
    :goto_0
    const-string v10, "startDayOfWeek"

    sget v11, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->MONDAY:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->startDayOfWeek:I

    .line 999
    iget v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->startDayOfWeek:I

    const/4 v11, 0x7

    if-le v10, v11, :cond_1

    .line 1000
    iget v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->startDayOfWeek:I

    rem-int/lit8 v10, v10, 0x7

    iput v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->startDayOfWeek:I

    .line 1004
    :cond_1
    const-string v10, "showNavigationArrows"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->showNavigationArrows:Z

    .line 1006
    const-string v10, "issleepdata"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->isSleepData:Z

    .line 1009
    const-string v10, "enableSwipe"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->enableSwipe:Z

    .line 1012
    const-string v10, "sixWeeksInCalendar"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->sixWeeksInCalendar:Z

    .line 1015
    const-string v10, "enableClickOnDisabledDates"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->enableClickOnDisabledDates:Z

    .line 1018
    const-string v10, "disableDates"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1020
    .local v4, "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 1021
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1022
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1023
    .local v1, "dateString":Ljava/lang/String;
    const-string v10, "yyyy-MM-dd"

    invoke-static {v1, v10}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v5

    .line 1025
    .local v5, "dt":Lhirondelle/date4j/DateTime;
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 993
    .end local v1    # "dateString":Ljava/lang/String;
    .end local v4    # "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "dt":Lhirondelle/date4j/DateTime;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_0

    .line 1030
    .restart local v4    # "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v10, "selectedDates"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1032
    .local v9, "selectedDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1033
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1034
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1035
    .restart local v1    # "dateString":Ljava/lang/String;
    const-string v10, "yyyy-MM-dd"

    invoke-static {v1, v10}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v5

    .line 1037
    .restart local v5    # "dt":Lhirondelle/date4j/DateTime;
    iget-object v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1042
    .end local v1    # "dateString":Ljava/lang/String;
    .end local v5    # "dt":Lhirondelle/date4j/DateTime;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v10, "minDate"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1043
    .local v8, "minDateTimeString":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 1044
    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v10

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    .line 1048
    :cond_5
    const-string v10, "maxDate"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1049
    .local v7, "maxDateTimeString":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 1050
    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v10

    iput-object v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    .line 1055
    .end local v3    # "dialog":Landroid/app/Dialog;
    .end local v4    # "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "maxDateTimeString":Ljava/lang/String;
    .end local v8    # "minDateTimeString":Ljava/lang/String;
    .end local v9    # "selectedDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->month:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    iget v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->year:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8

    .line 1056
    :cond_7
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v10}, Lhirondelle/date4j/DateTime;->today(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v2

    .line 1057
    .local v2, "dateTime":Lhirondelle/date4j/DateTime;
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->month:I

    .line 1058
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->year:I

    .line 1059
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->day:I

    .line 1061
    .end local v2    # "dateTime":Lhirondelle/date4j/DateTime;
    :cond_8
    return-void
.end method

.method public saveStatesToKey(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->getSavedStates()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 459
    return-void
.end method

.method public setBackgroundResourceForDate(ILjava/util/Date;)V
    .locals 3
    .param p1, "backgroundRes"    # I
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 372
    invoke-static {p2}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 373
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    return-void
.end method

.method public setBackgroundResourceForDateTime(ILhirondelle/date4j/DateTime;)V
    .locals 2
    .param p1, "backgroundRes"    # I
    .param p2, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-void
.end method

.method public setBackgroundResourceForDateTimes(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "backgroundForDateTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lhirondelle/date4j/DateTime;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 369
    return-void
.end method

.method public setBackgroundResourceForDates(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Date;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "backgroundForDateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/Date;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 356
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 365
    :cond_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 361
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 362
    .local v3, "resource":Ljava/lang/Integer;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 363
    .local v1, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCaldroidListener(Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;)V
    .locals 0
    .param p1, "caldroidListener"    # Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    .line 819
    return-void
.end method

.method public setCalendarDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 562
    invoke-static {p1}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setCalendarDateTime(Lhirondelle/date4j/DateTime;)V

    .line 563
    return-void
.end method

.method public setCalendarDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 3
    .param p1, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 566
    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->month:I

    .line 567
    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->year:I

    .line 568
    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->day:I

    .line 571
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->caldroidListener:Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;

    iget v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->month:I

    iget v2, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->year:I

    invoke-virtual {v0, v1, v2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;->onChangeMonth(II)V

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->refreshView()V

    .line 576
    return-void
.end method

.method public setDisableDates(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "disableDateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 607
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 616
    :cond_0
    return-void

    .line 611
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 612
    .local v0, "date":Ljava/util/Date;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 613
    .local v1, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDisableDatesFromString(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setDisableDatesFromString(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method public setDisableDatesFromString(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p2, "dateFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 639
    .local p1, "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 640
    if-nez p1, :cond_1

    .line 649
    :cond_0
    return-void

    .line 644
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 645
    .local v0, "dateString":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 647
    .local v1, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setEnableSwipe(Z)V
    .locals 1
    .param p1, "enableSwipe"    # Z

    .prologue
    .line 741
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->enableSwipe:Z

    .line 742
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    invoke-virtual {v0, p1}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setEnabled(Z)V

    .line 743
    return-void
.end method

.method public setExtraData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->extraData:Ljava/util/HashMap;

    .line 347
    return-void
.end method

.method public setMaxDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "maxDate"    # Ljava/util/Date;

    .prologue
    .line 789
    if-nez p1, :cond_0

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    .line 794
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-static {p1}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    goto :goto_0
.end method

.method public setMaxDateFromString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "maxDateString"    # Ljava/lang/String;
    .param p2, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 804
    if-nez p1, :cond_0

    .line 805
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setMaxDate(Ljava/util/Date;)V

    .line 810
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-static {p1, p2}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    goto :goto_0
.end method

.method public setMinDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "minDate"    # Ljava/util/Date;

    .prologue
    .line 751
    if-nez p1, :cond_0

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-static {p1}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    goto :goto_0
.end method

.method public setMinDateFromString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "minDateString"    # Ljava/lang/String;
    .param p2, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 775
    if-nez p1, :cond_0

    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setMinDate(Ljava/util/Date;)V

    .line 781
    :goto_0
    return-void

    .line 778
    :cond_0
    invoke-static {p1, p2}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    goto :goto_0
.end method

.method public setMonthTitleTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "monthTitleTextView"    # Landroid/widget/TextView;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->monthTitleTextView:Landroid/widget/TextView;

    .line 298
    return-void
.end method

.method public setSelectedDateStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fromDateString"    # Ljava/lang/String;
    .param p2, "toDateString"    # Ljava/lang/String;
    .param p3, "dateFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-static {p1, p3}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 701
    .local v0, "fromDate":Ljava/util/Date;
    invoke-static {p2, p3}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 703
    .local v1, "toDate":Ljava/util/Date;
    invoke-virtual {p0, v0, v1}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setSelectedDates(Ljava/util/Date;Ljava/util/Date;)V

    .line 704
    return-void
.end method

.method public setSelectedDates(Ljava/util/Date;Ljava/util/Date;)V
    .locals 4
    .param p1, "fromDate"    # Ljava/util/Date;
    .param p2, "toDate"    # Ljava/util/Date;

    .prologue
    .line 671
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 677
    invoke-static {p1}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 678
    .local v1, "fromDateTime":Lhirondelle/date4j/DateTime;
    invoke-static {p2}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v2

    .line 680
    .local v2, "toDateTime":Lhirondelle/date4j/DateTime;
    move-object v0, v1

    .line 681
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    :goto_1
    invoke-virtual {v0, v2}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 682
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    goto :goto_1

    .line 685
    :cond_2
    iget-object v3, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShowNavigationArrows(Z)V
    .locals 3
    .param p1, "showNavigationArrows"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 721
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->showNavigationArrows:Z

    .line 722
    if-eqz p1, :cond_0

    .line 723
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->leftArrowButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->rightArrowButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 729
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->leftArrowButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->rightArrowButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSixWeeksInCalendar(Z)V
    .locals 1
    .param p1, "sixWeeksInCalendar"    # Z

    .prologue
    .line 763
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->sixWeeksInCalendar:Z

    .line 764
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->dateViewPager:Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;

    invoke-virtual {v0, p1}, Lcom/veclink/movnow_q2/view/calendar/InfiniteViewPager;->setSixWeeksInCalendar(Z)V

    .line 765
    return-void
.end method

.method public setTextColorForDate(ILjava/util/Date;)V
    .locals 3
    .param p1, "textColorRes"    # I
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 405
    invoke-static {p2}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 406
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-void
.end method

.method public setTextColorForDateTime(ILhirondelle/date4j/DateTime;)V
    .locals 2
    .param p1, "textColorRes"    # I
    .param p2, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    return-void
.end method

.method public setTextColorForDateTimes(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "textColorForDateTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lhirondelle/date4j/DateTime;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 402
    return-void
.end method

.method public setTextColorForDates(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Date;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "textColorForDateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/Date;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 389
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 398
    :cond_0
    return-void

    .line 393
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 394
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 395
    .local v3, "resource":Ljava/lang/Integer;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 396
    .local v1, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v4, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

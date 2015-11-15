.class public Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;
.super Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;
.source "SleepDateHistoryRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$ViewPaperAdapter;
    }
.end annotation


# static fields
.field public static final GET_SLEEP_AT_NIGHT:I = 0x2

.field public static final GET_SLEEP_DAY_TIME:I = 0x1

.field public static final GET_SLEEP_TIME:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SleepDateHistoryRecordActivity"


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

.field private atnightDeepSleepTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private atnightLightSleepTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private atnightSleepTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private bottomHideList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private calendar:Ljava/util/Calendar;

.field private currentDate:Ljava/util/Date;

.field private date:Ljava/util/Date;

.field private daySleepDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;>;"
        }
    .end annotation
.end field

.field private daytimeDeepSleepTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private daytimeLightSleepTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private daytimeSleepTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private daytimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deepSleepLargeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private deepSleepSmallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private imgSlidingDrower:Landroid/widget/ImageView;

.field private imgUpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private isHide:Z

.field private lightSleepLargeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private lightSleepSmallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private llBottomHide:Landroid/widget/LinearLayout;

.field private llDeepSleepLarge:Landroid/widget/LinearLayout;

.field private llLightSleepLarge:Landroid/widget/LinearLayout;

.field private llTopHide:Landroid/widget/LinearLayout;

.field private lltouchDown:Landroid/widget/LinearLayout;

.field private lltouchUp:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mMonth:I

.field private mYear:I

.field private nightSleepDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;>;"
        }
    .end annotation
.end field

.field private progressBarList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movnow_q2/view/RoundProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private rlDeepSleepSmall:Landroid/widget/RelativeLayout;

.field private rlLightSleepSmall:Landroid/widget/RelativeLayout;

.field private roundProgressBarStep:Lcom/veclink/movnow_q2/view/RoundProgressBar;

.field private selectMonth:I

.field private sleepBarGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;

.field private sleepBarGraphViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movnow_q2/view/SleepBarGraphView;",
            ">;"
        }
    .end annotation
.end field

.field private sleepDeepTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private sleepHideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

.field private sleepHideBarGraphViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;",
            ">;"
        }
    .end annotation
.end field

.field private sleepLightTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private sleepTotalTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private strDay:I

.field private tabStrip:Landroid/support/v4/view/PagerTabStrip;

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

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private topHideList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private totalMonthDay:I

.field private touchDownList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private touchUPList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private tvAtnightDeepSleepTime:Landroid/widget/TextView;

.field private tvAtnightLightSleepTime:Landroid/widget/TextView;

.field private tvAtnightSleepTime:Landroid/widget/TextView;

.field private tvDaytimeDeepSleepTime:Landroid/widget/TextView;

.field private tvDaytimeLightSleepTime:Landroid/widget/TextView;

.field private tvDaytimeSleepTime:Landroid/widget/TextView;

.field private tvDeepSleepTime:Landroid/widget/TextView;

.field private tvLightSleepTime:Landroid/widget/TextView;

.field private tvSleepTotalTime:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

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

.field y1:F

.field y2:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;-><init>()V

    .line 52
    iput v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->selectMonth:I

    .line 68
    iput-boolean v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->isHide:Z

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->times:Ljava/util/List;

    .line 145
    new-instance v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->handler:Landroid/os/Handler;

    .line 595
    iput v1, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y1:F

    .line 596
    iput v1, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y2:F

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepTotalTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepLightTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->nightSleepDatas:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightSleepTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightDeepSleepTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightLightSleepTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mYear:I

    return v0
.end method

.method static synthetic access$1600(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mMonth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->totalMonthDay:I

    return v0
.end method

.method static synthetic access$1900(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->selectMonth:I

    return v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepDeepTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daySleepDatas:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeSleepTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeDeepSleepTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeLightSleepTimeList:Ljava/util/List;

    return-object v0
.end method

.method private initViews()V
    .locals 3

    .prologue
    const v2, 0x7f080015

    const/4 v1, 0x0

    .line 577
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 578
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 579
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 580
    const v0, 0x7f06006d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerTabStrip;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tabStrip:Landroid/support/v4/view/PagerTabStrip;

    .line 581
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tabStrip:Landroid/support/v4/view/PagerTabStrip;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 582
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tabStrip:Landroid/support/v4/view/PagerTabStrip;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->setDrawFullUnderline(Z)V

    .line 583
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tabStrip:Landroid/support/v4/view/PagerTabStrip;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->setTextColor(I)V

    .line 585
    return-void
.end method

.method public static launchActivity(Landroid/app/Activity;Ljava/util/Date;)V
    .locals 3
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 588
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 590
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "date"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 591
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 593
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 644
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f040010

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 646
    .local v0, "animationZoomIn":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f040011

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 647
    .local v1, "animationZoomOut":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 791
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 677
    :pswitch_1
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 678
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 680
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 682
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepSmallList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 684
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 686
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepSmallList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 688
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->nightSleepDatas:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->nightSleepDatas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 691
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->nightSleepDatas:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 692
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphViewList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->nightSleepDatas:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v7}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 693
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphViewList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->invalidate()V

    .line 694
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphViewList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->nightSleepDatas:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v7}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 695
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphViewList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->invalidate()V

    goto/16 :goto_0

    .line 704
    :pswitch_2
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 705
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 707
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 709
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepSmallList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 711
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 713
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepSmallList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 741
    :pswitch_3
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepSmallList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 742
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 744
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 746
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepSmallList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 748
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 750
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepSmallList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 752
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daySleepDatas:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daySleepDatas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 754
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daySleepDatas:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 755
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphViewList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daySleepDatas:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v6}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 756
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphViewList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->invalidate()V

    .line 757
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphViewList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daySleepDatas:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v6}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 758
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphViewList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->invalidate()V

    goto/16 :goto_0

    .line 768
    :pswitch_4
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 769
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 771
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 773
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepSmallList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 775
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepLargeList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 777
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepSmallList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 781
    :pswitch_5
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 782
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 783
    const v3, 0x7f04000f

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 784
    .local v2, "showAnim":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x7f0600c5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 288
    const v11, 0x7f030018

    invoke-virtual {p0, v11}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->setContentView(I)V

    .line 289
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;

    const-string v12, "21:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;

    const-string v12, "23:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;

    const-string v12, "01:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;

    const-string v12, "03:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;

    const-string v12, "05:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;

    const-string v12, "07:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnight:Ljava/util/List;

    const-string v12, "09:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;

    const-string v12, "09:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;

    const-string v12, "11:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;

    const-string v12, "13:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;

    const-string v12, "15:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;

    const-string v12, "17:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;

    const-string v12, "19:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimes:Ljava/util/List;

    const-string v12, "21:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mContext:Landroid/content/Context;

    .line 305
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    .line 306
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    .line 307
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->touchUPList:Ljava/util/List;

    .line 308
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->touchDownList:Ljava/util/List;

    .line 309
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->imgUpList:Ljava/util/List;

    .line 311
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepTotalTimeList:Ljava/util/List;

    .line 312
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepLightTimeList:Ljava/util/List;

    .line 313
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepDeepTimeList:Ljava/util/List;

    .line 316
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepSmallList:Ljava/util/List;

    .line 317
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepLargeList:Ljava/util/List;

    .line 320
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepSmallList:Ljava/util/List;

    .line 321
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepLargeList:Ljava/util/List;

    .line 323
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightSleepTimeList:Ljava/util/List;

    .line 324
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightDeepSleepTimeList:Ljava/util/List;

    .line 325
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightLightSleepTimeList:Ljava/util/List;

    .line 327
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeSleepTimeList:Ljava/util/List;

    .line 328
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeDeepSleepTimeList:Ljava/util/List;

    .line 329
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeLightSleepTimeList:Ljava/util/List;

    .line 331
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->progressBarList:Ljava/util/List;

    .line 333
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphViewList:Ljava/util/List;

    .line 334
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphViewList:Ljava/util/List;

    .line 336
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 337
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v11, "date"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Ljava/util/Date;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->date:Ljava/util/Date;

    .line 338
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 339
    .local v10, "tempCalendar":Ljava/util/Calendar;
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->date:Ljava/util/Date;

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 340
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iput v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->selectMonth:I

    iput v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mMonth:I

    .line 341
    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iput v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->strDay:I

    .line 342
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iput v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mYear:I

    .line 343
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->date:Ljava/util/Date;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->currentDate:Ljava/util/Date;

    .line 344
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;

    .line 345
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->date:Ljava/util/Date;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 346
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->initViews()V

    .line 348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 349
    .local v1, "currentyear":I
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 350
    .local v9, "selectyear":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v6, v11, 0x1

    .line 351
    .local v6, "month":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 352
    .local v7, "monthofday":I
    iget v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->selectMonth:I

    if-ne v6, v11, :cond_0

    if-ne v1, v9, :cond_0

    .line 354
    iput v7, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->totalMonthDay:I

    .line 359
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPapers:Ljava/util/List;

    .line 360
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 361
    .local v5, "lf":Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    .line 362
    .local v8, "pagerChildren":Landroid/view/View;
    const/4 v2, 0x1

    .local v2, "days":I
    :goto_1
    iget v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->totalMonthDay:I

    if-gt v2, v11, :cond_1

    .line 363
    const v11, 0x7f030046

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 364
    const v11, 0x7f0600b3

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 365
    const v11, 0x7f0600b5

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/veclink/movnow_q2/view/RoundProgressBar;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->roundProgressBarStep:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    .line 366
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->progressBarList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->roundProgressBarStep:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    const v11, 0x7f0600cc

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->rlDeepSleepSmall:Landroid/widget/RelativeLayout;

    .line 369
    const v11, 0x7f0600cd

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    .line 371
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    const v11, 0x7f0600c5

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->imgSlidingDrower:Landroid/widget/ImageView;

    .line 374
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->rlDeepSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    const v11, 0x7f0600d3

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    .line 380
    const v11, 0x7f0600d4

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->llLightSleepLarge:Landroid/widget/LinearLayout;

    .line 382
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 385
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->llLightSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    const v11, 0x7f0600ce

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvAtnightSleepTime:Landroid/widget/TextView;

    .line 390
    const v11, 0x7f0600cf

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvAtnightDeepSleepTime:Landroid/widget/TextView;

    .line 391
    const v11, 0x7f0600d0

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvAtnightLightSleepTime:Landroid/widget/TextView;

    .line 392
    const v11, 0x7f0600d5

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvDaytimeSleepTime:Landroid/widget/TextView;

    .line 393
    const v11, 0x7f0600d6

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvDaytimeDeepSleepTime:Landroid/widget/TextView;

    .line 394
    const v11, 0x7f0600d7

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvDaytimeLightSleepTime:Landroid/widget/TextView;

    .line 396
    const v11, 0x7f0600b3

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvTime:Landroid/widget/TextView;

    .line 398
    const v11, 0x7f0600c2

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lltouchUp:Landroid/widget/LinearLayout;

    .line 399
    const v11, 0x7f060108

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lltouchDown:Landroid/widget/LinearLayout;

    .line 400
    const v11, 0x7f0600b8

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->llTopHide:Landroid/widget/LinearLayout;

    .line 401
    const v11, 0x7f0600c7

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->llBottomHide:Landroid/widget/LinearLayout;

    .line 403
    const v11, 0x7f0600bb

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvSleepTotalTime:Landroid/widget/TextView;

    .line 404
    const v11, 0x7f0600bd

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvLightSleepTime:Landroid/widget/TextView;

    .line 405
    const v11, 0x7f0600bc

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvDeepSleepTime:Landroid/widget/TextView;

    .line 407
    const v11, 0x7f060107

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    .line 408
    const v11, 0x7f060109

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    .line 409
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphViewList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepBarGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphViewList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepHideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->imgUpList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->imgSlidingDrower:Landroid/widget/ImageView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPapers:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->touchUPList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lltouchUp:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->touchDownList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lltouchDown:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepTotalTimeList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvSleepTotalTime:Landroid/widget/TextView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepLightTimeList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvLightSleepTime:Landroid/widget/TextView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->sleepDeepTimeList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvDeepSleepTime:Landroid/widget/TextView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->llTopHide:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->llBottomHide:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepSmallList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->rlDeepSleepSmall:Landroid/widget/RelativeLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepLargeList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepSmallList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepLargeList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->llLightSleepLarge:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightSleepTimeList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvAtnightSleepTime:Landroid/widget/TextView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightDeepSleepTimeList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvAtnightDeepSleepTime:Landroid/widget/TextView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->atnightLightSleepTimeList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvAtnightLightSleepTime:Landroid/widget/TextView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeSleepTimeList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvDaytimeSleepTime:Landroid/widget/TextView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeDeepSleepTimeList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvDaytimeDeepSleepTime:Landroid/widget/TextView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->daytimeLightSleepTimeList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->tvDaytimeLightSleepTime:Landroid/widget/TextView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 357
    .end local v2    # "days":I
    .end local v5    # "lf":Landroid/view/LayoutInflater;
    .end local v8    # "pagerChildren":Landroid/view/View;
    :cond_0
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v11

    iput v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->totalMonthDay:I

    goto/16 :goto_0

    .line 440
    .restart local v2    # "days":I
    .restart local v5    # "lf":Landroid/view/LayoutInflater;
    .restart local v8    # "pagerChildren":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->touchUPList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 441
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->touchUPList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 442
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->touchDownList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 444
    :cond_2
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepSmallList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 446
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepSmallList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    invoke-virtual {v11, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->deepSleepLargeList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepSmallList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    invoke-virtual {v11, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->lightSleepLargeList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->imgUpList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v11, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 453
    :cond_3
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v12, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$ViewPaperAdapter;

    iget-object v13, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPapers:Ljava/util/List;

    invoke-direct {v12, p0, v13}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$ViewPaperAdapter;-><init>(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;Ljava/util/List;)V

    invoke-virtual {v11, v12}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 454
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v12, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->strDay:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 455
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getHistoryTitleDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 456
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v12, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$2;

    invoke-direct {v12, p0}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)V

    invoke-virtual {v11, v12}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 474
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 478
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onResume()V

    .line 479
    new-instance v0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;-><init>(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)V

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$3;->start()V

    .line 574
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 599
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 600
    .local v0, "action":I
    const/4 v4, 0x0

    .line 601
    .local v4, "x1":F
    const/4 v5, 0x0

    .line 602
    .local v5, "x2":F
    packed-switch v0, :pswitch_data_0

    .line 637
    :goto_0
    :pswitch_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 604
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 605
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y1:F

    goto :goto_0

    .line 610
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 611
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y2:F

    .line 612
    sub-float v6, v4, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y1:F

    iget v8, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y2:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y1:F

    iget v9, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y2:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 613
    .local v1, "distance":D
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    cmpg-double v6, v1, v6

    if-gez v6, :cond_0

    .line 614
    const/4 v6, 0x0

    goto :goto_1

    .line 617
    :cond_0
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->isHide:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y1:F

    iget v7, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y2:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 618
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 619
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    const v6, 0x7f04000f

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 621
    .local v3, "showAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 629
    .end local v3    # "showAnim":Landroid/view/animation/Animation;
    :cond_1
    :goto_2
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->isHide:Z

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->isHide:Z

    .line 630
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 623
    :cond_2
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->isHide:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y1:F

    iget v7, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->y2:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 624
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 625
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 626
    const v6, 0x7f04000e

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 627
    .restart local v3    # "showAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 629
    .end local v3    # "showAnim":Landroid/view/animation/Animation;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

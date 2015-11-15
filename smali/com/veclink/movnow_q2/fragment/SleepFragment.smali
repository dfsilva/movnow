.class public Lcom/veclink/movnow_q2/fragment/SleepFragment;
.super Landroid/support/v4/app/Fragment;
.source "SleepFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final GET_SLEEP_AT_NIGHT:I = 0x2

.field public static final GET_SLEEP_DAY_TIME:I = 0x1

.field public static final GET_SLEEP_TIME:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SleepFragment"


# instance fields
.field application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

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

.field private barGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;

.field private daySleepDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
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

.field private handler:Landroid/os/Handler;

.field private hideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

.field private imgSlidingDrower:Landroid/widget/ImageView;

.field private isDestroy:Z

.field private isHide:Z

.field private llButtomHide:Landroid/widget/LinearLayout;

.field private llDeepSleepLarge:Landroid/widget/LinearLayout;

.field private llLightSleepLarge:Landroid/widget/LinearLayout;

.field private llOntouch:Landroid/widget/LinearLayout;

.field private llTouchUPAndDown:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

.field private nightSleepDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation
.end field

.field private rlDeepSleepMiddle:Landroid/widget/RelativeLayout;

.field private rlDeepSleepSmall:Landroid/widget/RelativeLayout;

.field private rlLightSleepMiddle:Landroid/widget/RelativeLayout;

.field private rlLightSleepSmall:Landroid/widget/RelativeLayout;

.field private roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;

.field private startSyncTime:J

.field syncDataCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field syncDataHandler:Landroid/os/Handler;

.field syncTask:Lcom/veclink/bracelet/bletask/BleTask;

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

.field y1:F

.field y2:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->isHide:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    .line 106
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->isDestroy:Z

    .line 107
    new-instance v0, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment$1;-><init>(Lcom/veclink/movnow_q2/fragment/SleepFragment;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncDataHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncDataHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncDataCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    .line 293
    new-instance v0, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment$3;-><init>(Lcom/veclink/movnow_q2/fragment/SleepFragment;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->handler:Landroid/os/Handler;

    .line 564
    iput v2, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y1:F

    .line 565
    iput v2, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y2:F

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->isDestroy:Z

    return v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->hideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/SleepBarGraphView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->barGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/veclink/movnow_q2/fragment/SleepFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daySleepDatas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDaytimeSleepTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDaytimeDeepSleepTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDaytimeLightSleepTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/veclink/movnow_q2/fragment/SleepFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->nightSleepDatas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvAtnightSleepTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvAtnightDeepSleepTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvAtnightLightSleepTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/fragment/SleepFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->refreshView()V

    return-void
.end method

.method static synthetic access$500(Lcom/veclink/movnow_q2/fragment/SleepFragment;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->sendIntent(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$600(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvSleepTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvLightSleepTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDeepSleepTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/veclink/movnow_q2/fragment/SleepFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    return-object v0
.end method

.method private refreshView()V
    .locals 5

    .prologue
    .line 375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 376
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "currentDay":Ljava/lang/String;
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 378
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "preDay":Ljava/lang/String;
    new-instance v3, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;-><init>(Lcom/veclink/movnow_q2/fragment/SleepFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/fragment/SleepFragment$4;->start()V

    .line 442
    return-void
.end method

.method private sendIntent(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "targetclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 529
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/veclink/movnow_q2/util/StringUtil;->fromatCurrDateByLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 263
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 447
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f040010

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 449
    .local v0, "animationZoomIn":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f040011

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 450
    .local v1, "animationZoomOut":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 453
    :sswitch_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 454
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llLightSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 456
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlDeepSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 460
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llLightSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 464
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->nightSleepDatas:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 465
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->hideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->nightSleepDatas:Ljava/util/List;

    iget-object v5, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v7}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 466
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->hideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->invalidate()V

    .line 467
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->barGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->nightSleepDatas:Ljava/util/List;

    iget-object v5, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v7}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 468
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->barGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->invalidate()V

    goto :goto_0

    .line 475
    :sswitch_1
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 476
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llLightSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 477
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlDeepSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 479
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llLightSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 484
    :sswitch_2
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 485
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 487
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlDeepSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 491
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llLightSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 494
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daySleepDatas:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 495
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->hideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daySleepDatas:Ljava/util/List;

    iget-object v5, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v6}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 496
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->hideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->invalidate()V

    .line 497
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->barGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daySleepDatas:Ljava/util/List;

    iget-object v5, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v6}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 498
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->barGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/SleepBarGraphView;->invalidate()V

    goto/16 :goto_0

    .line 504
    :sswitch_3
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 505
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llLightSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 506
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlDeepSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 508
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llLightSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 513
    :sswitch_4
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    invoke-virtual {v3, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    .line 514
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llButtomHide:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f04000f

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 516
    .local v2, "showAnim":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llButtomHide:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 450
    :sswitch_data_0
    .sparse-switch
        0x7f0600c5 -> :sswitch_4
        0x7f0600cc -> :sswitch_0
        0x7f0600cd -> :sswitch_1
        0x7f0600d3 -> :sswitch_2
        0x7f0600d4 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 182
    const v1, 0x7f030038

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "contextView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;

    .line 184
    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 185
    const v1, 0x7f0600c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llTouchUPAndDown:Landroid/widget/LinearLayout;

    .line 186
    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvTime:Landroid/widget/TextView;

    .line 187
    const v1, 0x7f0600bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvSleepTotalTime:Landroid/widget/TextView;

    .line 188
    const v1, 0x7f0600bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvLightSleepTime:Landroid/widget/TextView;

    .line 189
    const v1, 0x7f0600bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDeepSleepTime:Landroid/widget/TextView;

    .line 190
    const v1, 0x7f0600c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llButtomHide:Landroid/widget/LinearLayout;

    .line 191
    const v1, 0x7f0600c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llOntouch:Landroid/widget/LinearLayout;

    .line 192
    const v1, 0x7f0600b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/RoundProgressBar;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    .line 193
    const v1, 0x7f0600ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlDeepSleepMiddle:Landroid/widget/RelativeLayout;

    .line 194
    const v1, 0x7f0600cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlDeepSleepSmall:Landroid/widget/RelativeLayout;

    .line 195
    const v1, 0x7f0600cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    .line 196
    const v1, 0x7f0600c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->imgSlidingDrower:Landroid/widget/ImageView;

    .line 197
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->imgSlidingDrower:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlDeepSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llDeepSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v1, 0x7f0600d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlLightSleepMiddle:Landroid/widget/RelativeLayout;

    .line 205
    const v1, 0x7f0600d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    .line 206
    const v1, 0x7f0600d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llLightSleepLarge:Landroid/widget/LinearLayout;

    .line 208
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->rlLightSleepSmall:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llLightSleepLarge:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    const/16 v2, 0x5a0

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 215
    const v1, 0x7f0600c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->hideBarGraphView:Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    .line 216
    const v1, 0x7f0600c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->barGraphView:Lcom/veclink/movnow_q2/view/SleepBarGraphView;

    .line 217
    const v1, 0x7f0600ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvAtnightSleepTime:Landroid/widget/TextView;

    .line 218
    const v1, 0x7f0600cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvAtnightDeepSleepTime:Landroid/widget/TextView;

    .line 219
    const v1, 0x7f0600d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvAtnightLightSleepTime:Landroid/widget/TextView;

    .line 220
    const v1, 0x7f0600d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDaytimeSleepTime:Landroid/widget/TextView;

    .line 221
    const v1, 0x7f0600d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDaytimeDeepSleepTime:Landroid/widget/TextView;

    .line 222
    const v1, 0x7f0600d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->tvDaytimeLightSleepTime:Landroid/widget/TextView;

    .line 223
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llTouchUPAndDown:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llOntouch:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    const v1, 0x7f0600b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    .line 226
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    new-instance v2, Lcom/veclink/movnow_q2/fragment/SleepFragment$2;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment$2;-><init>(Lcom/veclink/movnow_q2/fragment/SleepFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 239
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 240
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    const-string v2, "21:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    const-string v2, "23:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    const-string v2, "01:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    const-string v2, "03:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    const-string v2, "05:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    const-string v2, "07:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    const-string v2, "09:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 248
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    const-string v2, "09:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    const-string v2, "11:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    const-string v2, "13:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    const-string v2, "15:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    const-string v2, "17:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    const-string v2, "19:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    const-string v2, "21:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->nightSleepDatas:Ljava/util/List;

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daySleepDatas:Ljava/util/List;

    .line 257
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 609
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 610
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleTask;->stopSyncTask()V

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->atnight:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 615
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->daytimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 616
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->isDestroy:Z

    .line 270
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->isDestroy:Z

    .line 279
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 280
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 365
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 366
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->isHasSyncSleepData()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncSleepData()V

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->refreshView()V

    .line 371
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 569
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 570
    .local v0, "action":I
    const/4 v4, 0x0

    .line 571
    .local v4, "x1":F
    const/4 v5, 0x0

    .line 572
    .local v5, "x2":F
    packed-switch v0, :pswitch_data_0

    .line 604
    :goto_0
    :pswitch_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 574
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 575
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y1:F

    goto :goto_0

    .line 580
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 581
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y2:F

    .line 582
    sub-float v6, v4, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y1:F

    iget v8, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y2:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y1:F

    iget v9, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y2:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 583
    .local v1, "distance":D
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    cmpg-double v6, v1, v6

    if-gez v6, :cond_0

    .line 584
    const/4 v6, 0x0

    goto :goto_1

    .line 587
    :cond_0
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->isHide:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y1:F

    iget v7, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y2:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 588
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    .line 589
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llButtomHide:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f04000f

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 591
    .local v3, "showAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llButtomHide:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 598
    .end local v3    # "showAnim":Landroid/view/animation/Animation;
    :cond_1
    :goto_2
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->isHide:Z

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->isHide:Z

    .line 599
    const/4 v6, 0x1

    goto :goto_1

    .line 592
    :cond_2
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->isHide:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y1:F

    iget v7, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->y2:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 593
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    .line 594
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->llButtomHide:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f04000e

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 596
    .restart local v3    # "showAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    invoke-virtual {v6, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 598
    .end local v3    # "showAnim":Landroid/view/animation/Animation;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public syncSleepData()V
    .locals 15

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 532
    const/4 v3, 0x2

    .line 533
    .local v3, "dataType":I
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/veclink/healthy/database/op/HealthyDBSyncRecordOperate;->loadLastSyncRecordByDataType(Landroid/content/Context;I)Lcom/veclink/healthy/database/entity/SyncRecord;

    move-result-object v11

    .line 534
    .local v11, "record":Lcom/veclink/healthy/database/entity/SyncRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 535
    .local v9, "nowTime":J
    iget-wide v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->startSyncTime:J

    sub-long v0, v9, v0

    const-wide/16 v13, 0x3e8

    div-long v7, v0, v13

    .line 536
    .local v7, "dotaskTime":J
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1e

    cmp-long v0, v7, v0

    if-gez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->onRefreshComplete()V

    .line 561
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getChangeToOldProtocol(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 541
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    const/16 v1, 0x5a0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 542
    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;->refreshView()V

    .line 543
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncDataHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 544
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->onRefreshComplete()V

    goto :goto_0

    .line 548
    :cond_1
    if-eqz v11, :cond_2

    .line 549
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getStartSyncTime(Landroid/content/Context;I)[I

    move-result-object v12

    .line 550
    .local v12, "yearMonthDay":[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 551
    .local v6, "calendar":Ljava/util/Calendar;
    const/4 v0, 0x0

    aget v0, v12, v0

    aget v1, v12, v2

    add-int/lit8 v1, v1, -0x1

    aget v2, v12, v5

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 552
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 553
    .local v4, "startDate":Ljava/util/Date;
    new-instance v0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncDataCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;ILjava/util/Date;Ljava/util/Date;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    .line 559
    .end local v4    # "startDate":Ljava/util/Date;
    .end local v6    # "calendar":Ljava/util/Calendar;
    .end local v12    # "yearMonthDay":[I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->startSyncTime:J

    .line 560
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleTask;->work()V

    goto :goto_0

    .line 555
    :cond_2
    new-instance v0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncDataCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v0, v1, v2, v3}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;I)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/SleepFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    goto :goto_1
.end method

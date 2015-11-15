.class public Lcom/veclink/movnow_q2/fragment/WalkFragment;
.super Landroid/support/v4/app/Fragment;
.source "WalkFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# static fields
.field private static final BAR_DATA:I = 0x1

.field private static final CIRCLE_PROGRESS:I = 0x0

.field private static final DEVICE_CONNECTED:I = 0x5

.field private static final DEVICE_DISCONNECT:I = 0x4

.field private static final POWER_DATA:I = 0x3

.field private static final SHORT_SPORTDATA:I = 0x2

.field public static final TAG:Ljava/lang/String; = "WalkFragment"


# instance fields
.field application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

.field private band_power_value:Landroid/widget/TextView;

.field private bind_remind_tip:Landroid/widget/TextView;

.field private bind_remind_view:Landroid/view/View;

.field private graphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;

.field private handler:Landroid/os/Handler;

.field private imgSlidingDrower:Landroid/widget/ImageView;

.field intentFilter:Landroid/content/IntentFilter;

.field private isDestroy:Z

.field private isHide:Z

.field private llButtomHide:Landroid/widget/LinearLayout;

.field private llManagerCalories:Landroid/widget/LinearLayout;

.field private llOntouch:Landroid/widget/LinearLayout;

.field private llShare:Landroid/widget/LinearLayout;

.field private llTouchUPAndDown:Landroid/widget/LinearLayout;

.field private mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

.field queryPowerCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field queryPowerHandler:Landroid/os/Handler;

.field queryPowerValueTask:Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;

.field private roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;

.field shortSportDataReceiver:Landroid/content/BroadcastReceiver;

.field private shortStepCount:I

.field private sportGraphView:Lcom/veclink/movnow_q2/view/SportGraphView;

.field private startSyncTime:J

.field syncDataCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field syncDataHandler:Landroid/os/Handler;

.field syncTask:Lcom/veclink/bracelet/bletask/BleTask;

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

.field private tvDistance:Landroid/widget/TextView;

.field private tvDistanceUint:Landroid/widget/TextView;

.field private tvHideDistance:Landroid/widget/TextView;

.field private tvHideDistanceUint:Landroid/widget/TextView;

.field private tvHideKcla:Landroid/widget/TextView;

.field private tvHideStepAccount:Landroid/widget/TextView;

.field private tvKcla:Landroid/widget/TextView;

.field private tvPercent:Landroid/widget/TextView;

.field private tvSteps:Landroid/widget/TextView;

.field private tvTargetSteps:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

.field y1:F

.field y2:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 286
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->isHide:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;

    .line 109
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 111
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->isDestroy:Z

    .line 113
    new-instance v0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;-><init>(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->handler:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment$2;-><init>(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncDataHandler:Landroid/os/Handler;

    .line 236
    new-instance v0, Lcom/veclink/movnow_q2/fragment/WalkFragment$3;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment$3;-><init>(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->queryPowerHandler:Landroid/os/Handler;

    .line 250
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncDataHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncDataCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 251
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->queryPowerHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->queryPowerCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 252
    iput-object v3, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    .line 253
    iput-object v3, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->queryPowerValueTask:Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_SHORT_SPORT_DATA"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->intentFilter:Landroid/content/IntentFilter;

    .line 255
    new-instance v0, Lcom/veclink/movnow_q2/fragment/WalkFragment$4;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment$4;-><init>(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->shortSportDataReceiver:Landroid/content/BroadcastReceiver;

    .line 479
    iput v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y1:F

    .line 480
    iput v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y2:F

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->isDestroy:Z

    return v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/fragment/WalkFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->shortStepCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/veclink/movnow_q2/view/RoundProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/veclink/movnow_q2/fragment/WalkFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->shortStepCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->refreshRoundView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/veclink/movnow_q2/fragment/WalkFragment;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->sendIntent(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncStepData()V

    return-void
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/fragment/WalkFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->setKmlStepAndKclaDta(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/veclink/movnow_q2/view/SportGraphView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->sportGraphView:Lcom/veclink/movnow_q2/view/SportGraphView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/veclink/movnow_q2/view/SportGraphHideView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->graphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->band_power_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_tip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llTouchUPAndDown:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private refreshRoundView()V
    .locals 2

    .prologue
    .line 416
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/veclink/movnow_q2/fragment/WalkFragment$6;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment$6;-><init>(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 438
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
    .line 575
    .local p1, "targetclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 578
    return-void
.end method

.method private setKmlStepAndKclaDta(I)V
    .locals 17
    .param p1, "stepCount"    # I

    .prologue
    .line 442
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const-string v12, "personal_weight"

    const/high16 v13, 0x42480000    # 50.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 443
    .local v5, "person_weight":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const-string v12, "personal_height"

    const/high16 v13, 0x43200000    # 160.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 444
    .local v4, "person_height":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const-string v12, "pre_DistanceType"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 445
    .local v2, "distance_unit":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const-string v12, "pre_Weight_Type"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 446
    .local v10, "weight_unit":I
    const-string v11, "WalkFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "distance_unit:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v11, "WalkFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "weight_unit:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v11, "WalkFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "person_height:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v11, "WalkFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "person_weight:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    move/from16 v0, p1

    invoke-static {v11, v0}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getDistance(Landroid/content/Context;I)D

    move-result-wide v6

    .line 451
    .local v6, "stepDistance":D
    const/4 v11, 0x0

    invoke-static {v4, v11}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getStepDistanceByHeight(FI)D

    move-result-wide v11

    move/from16 v0, p1

    int-to-double v13, v0

    mul-double v8, v11, v13

    .line 452
    .local v8, "stepDistanceKMUnit":D
    const-string v11, "WalkFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stepDistance:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v11, "WalkFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stepDistanceKMUnit:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v11, 0x1

    invoke-static {v5, v8, v9, v11}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getCaloryByWeightAndDisStance(FDI)I

    move-result v1

    .line 455
    .local v1, "cal":I
    if-nez v2, :cond_0

    .line 456
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvDistance:Landroid/widget/TextView;

    const v12, 0x7f0c0036

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getFormatDistance(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvDistanceUint:Landroid/widget/TextView;

    const v12, 0x7f0c00b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvHideDistance:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getFormatDistance(D)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvHideDistanceUint:Landroid/widget/TextView;

    const v12, 0x7f0c003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :goto_0
    const-string v11, "setKmlStepAndKclaDta:"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "km:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " stepCount\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " kcal:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvSteps:Landroid/widget/TextView;

    const v12, 0x7f0c0038

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvKcla:Landroid/widget/TextView;

    const v12, 0x7f0c0039

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvHideStepAccount:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvKcla:Landroid/widget/TextView;

    const v12, 0x7f0c0039

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvHideKcla:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    sget-object v11, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v11}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "pre_MyTarget"

    const-string v13, "7000"

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 473
    .local v3, "maxprogress":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvPercent:Landroid/widget/TextView;

    const v12, 0x7f0c009f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    mul-int/lit8 v15, p1, 0x64

    div-int/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    invoke-virtual {v11, v3}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setProgress(I)V

    .line 476
    return-void

    .line 461
    .end local v3    # "maxprogress":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvDistance:Landroid/widget/TextView;

    const v12, 0x7f0c0037

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getFormatDistance(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvDistanceUint:Landroid/widget/TextView;

    const v12, 0x7f0c00b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvHideDistance:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getFormatDistance(D)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvHideDistanceUint:Landroid/widget/TextView;

    const v12, 0x7f0c003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private syncStepData()V
    .locals 15

    .prologue
    .line 581
    const/4 v3, 0x1

    .line 582
    .local v3, "dataType":I
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v0, v3}, Lcom/veclink/healthy/database/op/HealthyDBSyncRecordOperate;->loadLastSyncRecordByDataType(Landroid/content/Context;I)Lcom/veclink/healthy/database/entity/SyncRecord;

    move-result-object v11

    .line 583
    .local v11, "record":Lcom/veclink/healthy/database/entity/SyncRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 584
    .local v9, "nowTime":J
    iget-wide v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->startSyncTime:J

    sub-long v0, v9, v0

    const-wide/16 v13, 0x3e8

    div-long v7, v0, v13

    .line 585
    .local v7, "dotaskTime":J
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1e

    cmp-long v0, v7, v0

    if-gez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->onRefreshComplete()V

    .line 648
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getChangeToOldProtocol(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 590
    if-eqz v11, :cond_1

    .line 591
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getStartSyncTime(Landroid/content/Context;I)[I

    move-result-object v12

    .line 592
    .local v12, "yearMonthDay":[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 593
    .local v6, "calendar":Ljava/util/Calendar;
    const/4 v0, 0x0

    aget v0, v12, v0

    const/4 v1, 0x1

    aget v1, v12, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aget v2, v12, v2

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 594
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 595
    .local v4, "startDate":Ljava/util/Date;
    new-instance v0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncDataCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/util/Date;Ljava/util/Date;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    .line 646
    .end local v4    # "startDate":Ljava/util/Date;
    .end local v6    # "calendar":Ljava/util/Calendar;
    .end local v12    # "yearMonthDay":[I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->startSyncTime:J

    .line 647
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleTask;->work()V

    goto :goto_0

    .line 597
    :cond_1
    new-instance v0, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncDataCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v0, v1, v2}, Lcom/veclink/bracelet/bletask/BleSyncOldDeviceDataTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    goto :goto_1

    .line 634
    :cond_2
    if-eqz v11, :cond_3

    .line 635
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getStartSyncTime(Landroid/content/Context;I)[I

    move-result-object v12

    .line 636
    .restart local v12    # "yearMonthDay":[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 637
    .restart local v6    # "calendar":Ljava/util/Calendar;
    const/4 v0, 0x0

    aget v0, v12, v0

    const/4 v1, 0x1

    aget v1, v12, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aget v2, v12, v2

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 638
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 639
    .restart local v4    # "startDate":Ljava/util/Date;
    new-instance v0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncDataCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;ILjava/util/Date;Ljava/util/Date;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    goto :goto_1

    .line 641
    .end local v4    # "startDate":Ljava/util/Date;
    .end local v6    # "calendar":Ljava/util/Calendar;
    .end local v12    # "yearMonthDay":[I
    :cond_3
    new-instance v0, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncDataCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v0, v1, v2, v3}, Lcom/veclink/bracelet/bletask/BleSyncNewDeviceDataTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;I)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 389
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 530
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 531
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 532
    const-string v6, "yyyyMMdd"

    invoke-static {v6}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "date":Ljava/lang/String;
    const-string v6, "date"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 537
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    .line 538
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llButtomHide:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f04000f

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 540
    .local v5, "showAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llButtomHide:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 544
    .end local v5    # "showAnim":Landroid/view/animation/Animation;
    :sswitch_2
    sget-object v6, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    const/high16 v7, 0x7f0c0000

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Pwatch"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 548
    sget-object v6, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v6}, Lcom/veclink/movnow_q2/activity/MainActivity;->showShareDialog()V

    goto :goto_0

    .line 554
    :sswitch_3
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_tip:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, "remind_tip":Ljava/lang/String;
    const v6, 0x7f0c0178

    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 556
    const-class v6, Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-direct {p0, v6}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->sendIntent(Ljava/lang/Class;)V

    goto :goto_0

    .line 557
    :cond_1
    const v6, 0x7f0c0185

    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 558
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const-string v7, "bluetooth"

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothManager;

    .line 559
    .local v3, "mBluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 560
    .local v2, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 561
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const v7, 0x7f0c018a

    invoke-virtual {p0, v7}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 564
    :cond_2
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v6, v7}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->bindService(Landroid/app/Application;)V

    .line 565
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_tip:Landroid/widget/TextView;

    const v7, 0x7f0c0173

    invoke-virtual {p0, v7}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 527
    :sswitch_data_0
    .sparse-switch
        0x7f0600be -> :sswitch_0
        0x7f0600c0 -> :sswitch_2
        0x7f0600c5 -> :sswitch_1
        0x7f0600df -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 294
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 322
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;

    const-string v2, "03:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;

    const-string v2, "06:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;

    const-string v2, "09:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;

    const-string v2, "12:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;

    const-string v2, "15:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;

    const-string v2, "18:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;

    const-string v2, "21:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ACTION_SHORT_SPORT_DATA"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->intentFilter:Landroid/content/IntentFilter;

    .line 330
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->intentFilter:Landroid/content/IntentFilter;

    const-string v2, "ACTION_POWER_CHANGE_DATA"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->intentFilter:Landroid/content/IntentFilter;

    const-string v2, "ACTION_GATT_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->intentFilter:Landroid/content/IntentFilter;

    const-string v2, "ACTION_GATT_SERVICES_DISCOVERED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->shortSportDataReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 335
    const v1, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, "contextView":Landroid/view/View;
    const v1, 0x7f0600c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llTouchUPAndDown:Landroid/widget/LinearLayout;

    .line 337
    const v1, 0x7f0600c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->imgSlidingDrower:Landroid/widget/ImageView;

    .line 338
    const v1, 0x7f0600be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llManagerCalories:Landroid/widget/LinearLayout;

    .line 339
    const v1, 0x7f0600c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llShare:Landroid/widget/LinearLayout;

    .line 340
    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvTime:Landroid/widget/TextView;

    .line 341
    const v1, 0x7f0600d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->band_power_value:Landroid/widget/TextView;

    .line 342
    const v1, 0x7f0600c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llButtomHide:Landroid/widget/LinearLayout;

    .line 343
    const v1, 0x7f0600c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llOntouch:Landroid/widget/LinearLayout;

    .line 344
    const v1, 0x7f0600e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/SportGraphView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->sportGraphView:Lcom/veclink/movnow_q2/view/SportGraphView;

    .line 345
    const v1, 0x7f0600e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/SportGraphHideView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->graphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;

    .line 346
    const v1, 0x7f0600b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/RoundProgressBar;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    .line 347
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->roundProgressBar:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const-string v3, "pre_MyTarget"

    const-string v4, "7000"

    invoke-static {v1, v3, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 348
    const v1, 0x7f0600da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvSteps:Landroid/widget/TextView;

    .line 349
    const v1, 0x7f0600db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvPercent:Landroid/widget/TextView;

    .line 350
    const v1, 0x7f0600dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvDistance:Landroid/widget/TextView;

    .line 351
    const v1, 0x7f0600dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvDistanceUint:Landroid/widget/TextView;

    .line 352
    const v1, 0x7f0600de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvKcla:Landroid/widget/TextView;

    .line 353
    const v1, 0x7f0600e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvTargetSteps:Landroid/widget/TextView;

    .line 354
    const v1, 0x7f0600e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvHideDistance:Landroid/widget/TextView;

    .line 355
    const v1, 0x7f0600e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvHideDistanceUint:Landroid/widget/TextView;

    .line 356
    const v1, 0x7f0600e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvHideStepAccount:Landroid/widget/TextView;

    .line 357
    const v1, 0x7f0600e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvHideKcla:Landroid/widget/TextView;

    .line 358
    const v1, 0x7f0600df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_view:Landroid/view/View;

    .line 359
    const v1, 0x7f0600e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_tip:Landroid/widget/TextView;

    .line 360
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_view:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llTouchUPAndDown:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 362
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llOntouch:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 363
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llManagerCalories:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->imgSlidingDrower:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llShare:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    sget-object v1, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pwatch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llShare:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 369
    :cond_0
    const v1, 0x7f0600d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    .line 370
    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    new-instance v2, Lcom/veclink/movnow_q2/fragment/WalkFragment$5;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment$5;-><init>(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 383
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 651
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 652
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleTask;->stopSyncTask()V

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncTask:Lcom/veclink/bracelet/bletask/BleTask;

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 657
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->isDestroy:Z

    .line 303
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->shortSportDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->isDestroy:Z

    .line 313
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 314
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 393
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 394
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_view:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_tip:Landroid/widget/TextView;

    const v3, 0x7f0c0178

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 397
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llTouchUPAndDown:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    :goto_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    sget-boolean v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->isConnected:Z

    if-nez v2, :cond_0

    .line 403
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 404
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 405
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->refreshRoundView()V

    .line 408
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/veclink/movnow_q2/util/StringUtil;->fromatCurrDateByLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const-string v3, "pre_MyTarget"

    const-string v4, "7000"

    invoke-static {v2, v3, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 410
    .local v1, "targetSteps":Ljava/lang/String;
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->tvTargetSteps:Landroid/widget/TextView;

    const v3, 0x7f0c00a2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->isHasSyncStepData()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->syncStepData()V

    .line 413
    :cond_1
    return-void

    .line 399
    .end local v1    # "targetSteps":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llTouchUPAndDown:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 484
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 485
    .local v0, "action":I
    const/4 v4, 0x0

    .line 486
    .local v4, "x1":F
    const/4 v5, 0x0

    .line 487
    .local v5, "x2":F
    packed-switch v0, :pswitch_data_0

    .line 521
    :goto_0
    :pswitch_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 489
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 490
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y1:F

    goto :goto_0

    .line 496
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 497
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y2:F

    .line 498
    sub-float v6, v4, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y1:F

    iget v8, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y2:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y1:F

    iget v9, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y2:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 499
    .local v1, "distance":D
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    cmpg-double v6, v1, v6

    if-gez v6, :cond_0

    .line 500
    const/4 v6, 0x0

    goto :goto_1

    .line 503
    :cond_0
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->isHide:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y1:F

    iget v7, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y2:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 504
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    .line 505
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llButtomHide:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f04000f

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 507
    .local v3, "showAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llButtomHide:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 514
    .end local v3    # "showAnim":Landroid/view/animation/Animation;
    :cond_1
    :goto_2
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->isHide:Z

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->isHide:Z

    .line 516
    const/4 v6, 0x1

    goto :goto_1

    .line 508
    :cond_2
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->isHide:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y1:F

    iget v7, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->y2:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 509
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    .line 510
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->llButtomHide:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f04000e

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 512
    .restart local v3    # "showAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    invoke-virtual {v6, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 514
    .end local v3    # "showAnim":Landroid/view/animation/Animation;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

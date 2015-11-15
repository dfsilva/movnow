.class public Lcom/veclink/movnow_q2/activity/MainActivity;
.super Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;
    }
.end annotation


# static fields
.field private static final SHAREDPREFERENCES_NAME:Ljava/lang/String; = "pre_introduce"

.field public static mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;


# instance fields
.field private HEARTRATEPAGEINDEX:I

.field private final SHOWGUIDEACTIVITY:I

.field private final SHOWUPDATEFIREREMINDDIALOG:I

.field private final SLEEPPAGEINDEX:I

.field private final WALKPAGEINDEX:I

.field private WATERPAGEINDEX:I

.field private adapter:Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;

.field private application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

.field private deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

.field exitTime:J

.field private fragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private heartRateFragment:Lcom/veclink/movnow_q2/fragment/HeartRateFragment;

.field private iconResList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private indicator:Lcom/viewpagerindicator/TabPageIndicator;

.field isFirstIn:Z

.field isFromBindBand:Z

.field private page:I

.field private sleepFragment:Lcom/veclink/movnow_q2/fragment/SleepFragment;

.field private tvHistory:Landroid/widget/TextView;

.field private tvSettings:Landroid/widget/TextView;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private walkFragment:Lcom/veclink/movnow_q2/fragment/WalkFragment;

.field private waterFragment:Lcom/veclink/movnow_q2/fragment/WaterFragment;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;-><init>()V

    .line 55
    iput v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->page:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->fragmentList:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->iconResList:Ljava/util/List;

    .line 68
    iput v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->WALKPAGEINDEX:I

    .line 69
    iput v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->SLEEPPAGEINDEX:I

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->WATERPAGEINDEX:I

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->HEARTRATEPAGEINDEX:I

    .line 72
    iput v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->SHOWGUIDEACTIVITY:I

    .line 73
    iput v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->SHOWUPDATEFIREREMINDDIALOG:I

    .line 77
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->isFirstIn:Z

    .line 80
    new-instance v0, Lcom/veclink/movnow_q2/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/MainActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/MainActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->handler:Landroid/os/Handler;

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MainActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->setGuided()V

    return-void
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MainActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->page:I

    return v0
.end method

.method static synthetic access$102(Lcom/veclink/movnow_q2/activity/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->page:I

    return p1
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MainActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->WATERPAGEINDEX:I

    return v0
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/activity/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->tvHistory:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/activity/MainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/MainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->iconResList:Ljava/util/List;

    return-object v0
.end method

.method private clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->walkFragment:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .line 342
    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->sleepFragment:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .line 343
    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->waterFragment:Lcom/veclink/movnow_q2/fragment/WaterFragment;

    .line 345
    return-void
.end method

.method private initFragment()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->walkFragment:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/veclink/movnow_q2/fragment/WalkFragment;

    invoke-direct {v0}, Lcom/veclink/movnow_q2/fragment/WalkFragment;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->walkFragment:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->sleepFragment:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Lcom/veclink/movnow_q2/fragment/SleepFragment;

    invoke-direct {v0}, Lcom/veclink/movnow_q2/fragment/SleepFragment;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->sleepFragment:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->waterFragment:Lcom/veclink/movnow_q2/fragment/WaterFragment;

    if-nez v0, :cond_2

    .line 188
    new-instance v0, Lcom/veclink/movnow_q2/fragment/WaterFragment;

    invoke-direct {v0}, Lcom/veclink/movnow_q2/fragment/WaterFragment;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->waterFragment:Lcom/veclink/movnow_q2/fragment/WaterFragment;

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->heartRateFragment:Lcom/veclink/movnow_q2/fragment/HeartRateFragment;

    if-nez v0, :cond_3

    .line 191
    new-instance v0, Lcom/veclink/movnow_q2/fragment/HeartRateFragment;

    invoke-direct {v0}, Lcom/veclink/movnow_q2/fragment/HeartRateFragment;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->heartRateFragment:Lcom/veclink/movnow_q2/fragment/HeartRateFragment;

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->fragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 195
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v0, v0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowStepModule:I

    if-nez v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->fragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->walkFragment:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->iconResList:Ljava/util/List;

    const v1, 0x7f0200fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v0, v0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowSleepModule:I

    if-nez v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->fragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->sleepFragment:Lcom/veclink/movnow_q2/fragment/SleepFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->iconResList:Ljava/util/List;

    const v1, 0x7f0200fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v0, v0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowRemindModule:I

    if-nez v0, :cond_6

    .line 204
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->fragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->waterFragment:Lcom/veclink/movnow_q2/fragment/WaterFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->iconResList:Ljava/util/List;

    const v1, 0x7f0200f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_6
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v0, v0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowHeartReateModule:I

    if-nez v0, :cond_7

    .line 209
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->fragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->heartRateFragment:Lcom/veclink/movnow_q2/fragment/HeartRateFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->iconResList:Ljava/util/List;

    const v1, 0x7f0200fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_7
    new-instance v0, Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->fragmentList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;-><init>(Lcom/veclink/movnow_q2/activity/MainActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->adapter:Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;

    .line 216
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->adapter:Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 217
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 218
    const v0, 0x7f060043

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->indicator:Lcom/viewpagerindicator/TabPageIndicator;

    .line 219
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->indicator:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;I)V

    .line 220
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->indicator:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v1, Lcom/veclink/movnow_q2/activity/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/MainActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 244
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 172
    const v0, 0x7f060045

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 173
    const v0, 0x7f060042

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->tvSettings:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f060044

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->tvHistory:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->tvSettings:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->tvHistory:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    return-void
.end method

.method private jumpToLogin()V
    .locals 2

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 404
    return-void
.end method

.method private setGuided()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    const-string v2, "pre_introduce"

    invoke-virtual {p0, v2, v3}, Lcom/veclink/movnow_q2/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isFirstIn"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    return-void
.end method


# virtual methods
.method public checkFirmwareUpdate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 368
    iget-boolean v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->isFromBindBand:Z

    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 372
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const-class v2, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2, v3}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 373
    new-instance v0, Lcom/veclink/healthy/business/http/session/HealthyGetNewRomSession;

    sget-object v1, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {v0, v1}, Lcom/veclink/healthy/business/http/session/HealthyGetNewRomSession;-><init>(Landroid/content/Context;)V

    .line 374
    .local v0, "session":Lcom/veclink/healthy/business/http/session/HealthyGetNewRomSession;
    invoke-static {p0, v0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 274
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 250
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/veclink/movnow_q2/activity/SettingsActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    const/4 v1, 0x0

    .line 257
    .local v1, "intentHistory":Landroid/content/Intent;
    iget v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->page:I

    if-nez v2, :cond_1

    .line 258
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intentHistory":Landroid/content/Intent;
    const-class v2, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .restart local v1    # "intentHistory":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 260
    :cond_1
    iget v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->page:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 262
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intentHistory":Landroid/content/Intent;
    const-class v2, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .restart local v1    # "intentHistory":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 264
    :cond_2
    iget v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->page:I

    iget v3, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->HEARTRATEPAGEINDEX:I

    if-ne v2, v3, :cond_0

    .line 265
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intentHistory":Landroid/content/Intent;
    const-class v2, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .restart local v1    # "intentHistory":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x7f060042
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/MainActivity;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 110
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    .line 111
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 112
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->initView()V

    .line 113
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->initFragment()V

    .line 114
    sput-object p0, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    .line 115
    const-string v1, "pre_introduce"

    invoke-virtual {p0, v1, v4}, Lcom/veclink/movnow_q2/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "isFirstIn"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->isFirstIn:Z

    .line 118
    iget-boolean v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->isFirstIn:Z

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromBindBand"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->isFromBindBand:Z

    .line 124
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onDestroy()V

    .line 318
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->stopSDK(Landroid/content/Context;)V

    .line 320
    return-void
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;)V
    .locals 7
    .param p1, "response"    # Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 379
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 380
    const-string v2, "GetBraceletRomReponse"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/util/DebugUtil;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, "oldversion":I
    const/4 v0, 0x0

    .line 383
    .local v0, "newVersion":I
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;->getError()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    :try_start_0
    sget-object v2, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceRomVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 386
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetBraceletRomReponse;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 390
    :goto_0
    if-le v0, v1, :cond_1

    sget-object v2, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-static {v2}, Lcom/veclink/healthy/account/HealthyAccountHolder;->isNeedShowUpdateFirewareDialog(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->isFromBindBand:Z

    if-eqz v2, :cond_1

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 392
    sget-object v2, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/veclink/healthy/account/HealthyAccountHolder;->setUpdateFirewareRemidTime(Landroid/content/Context;J)V

    .line 395
    :cond_1
    iput-boolean v5, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->isFromBindBand:Z

    .line 399
    :cond_2
    return-void

    .line 387
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    .line 349
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->exitTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0177

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->exitTime:J

    .line 362
    :goto_0
    const/4 v1, 0x1

    .line 364
    :goto_1
    return v1

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->clear()V

    .line 356
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 357
    .local v0, "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    invoke-virtual {v0, v5}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncSleepData(Z)V

    .line 358
    invoke-virtual {v0, v5}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncStepData(Z)V

    .line 359
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getActivityManager()Lcom/veclink/movnow_q2/util/MyActivityManager;

    move-result-object v1

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/util/MyActivityManager;->popAllActivityExceptOne(Ljava/lang/Class;)V

    goto :goto_0

    .line 364
    .end local v0    # "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromBindBand"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->isFromBindBand:Z

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onResume()V

    .line 137
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->jumpToLogin()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const-string v1, "com.veclink.hw.bleservice.VLBleService"

    invoke-virtual {v0, p0, v1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 143
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;

    invoke-direct {v2}, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->bindService(Landroid/app/Application;Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;)V

    .line 144
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->setAutoReConnect(Z)V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResumeFragments()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onResumeFragments()V

    .line 156
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onWindowFocusChanged(Z)V

    .line 326
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/veclink/healthy/view/ShareDialog;->getImageFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    new-instance v1, Lcom/veclink/movnow_q2/activity/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/MainActivity$3;-><init>(Lcom/veclink/movnow_q2/activity/MainActivity;)V

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/MainActivity$3;->start()V

    .line 338
    :cond_0
    return-void
.end method

.method public showShareDialog()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/veclink/healthy/view/ShareDialog;

    sget-object v1, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/veclink/healthy/view/ShareDialog;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    .line 160
    .local v0, "shareDialog":Lcom/veclink/healthy/view/ShareDialog;
    invoke-virtual {v0}, Lcom/veclink/healthy/view/ShareDialog;->show()V

    .line 161
    return-void
.end method

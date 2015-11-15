.class public Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;
.super Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;
.source "WalkDateHistoryRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$ViewPaperAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WalkDateHistoryRecordActivity"


# instance fields
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

.field private context:Landroid/content/Context;

.field private currentDate:Ljava/util/Date;

.field currentPage:I

.field private date:Ljava/util/Date;

.field private graphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;

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

.field private llBottomHide:Landroid/widget/LinearLayout;

.field private llManagerCalories:Landroid/widget/LinearLayout;

.field private llShare:Landroid/widget/LinearLayout;

.field private llTopHide:Landroid/widget/LinearLayout;

.field private lltouchDown:Landroid/widget/LinearLayout;

.field private lltouchUp:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mMonth:I

.field private mYear:I

.field private managerCloriesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private oneWeekOrMonthSportsDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;>;"
        }
    .end annotation
.end field

.field private progress:I

.field private progressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private roundList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movnow_q2/view/RoundProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private roundProgressBarStep:Lcom/veclink/movnow_q2/view/RoundProgressBar;

.field private selectMonth:I

.field private shareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private sportGraphView:Lcom/veclink/movnow_q2/view/SportGraphView;

.field private sportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
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

.field private tvHideDistance:Landroid/widget/TextView;

.field private tvHideDistanceUint:Landroid/widget/TextView;

.field private tvHideKcla:Landroid/widget/TextView;

.field private tvHideStepAccount:Landroid/widget/TextView;

.field private tvHistoryDistance:Landroid/widget/TextView;

.field private tvHistoryDistanceUint:Landroid/widget/TextView;

.field private tvHistoryKal:Landroid/widget/TextView;

.field private tvHistoryPercent:Landroid/widget/TextView;

.field private tvHistorySetps:Landroid/widget/TextView;

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;-><init>()V

    .line 54
    iput v1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->selectMonth:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->roundList:Ljava/util/List;

    .line 72
    iput-boolean v1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->isHide:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->times:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->oneWeekOrMonthSportsDataList:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->progressList:Ljava/util/ArrayList;

    .line 121
    iput v1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->currentPage:I

    .line 156
    iput v1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->progress:I

    .line 402
    iput v2, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y1:F

    .line 403
    iput v2, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y2:F

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mMonth:I

    return v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->totalMonthDay:I

    return v0
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$502(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->currentDate:Ljava/util/Date;

    return-object p1
.end method

.method private initLineGraphAndBarGraphData()V
    .locals 4

    .prologue
    .line 188
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->oneWeekOrMonthSportsDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->progressList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->totalMonthDay:I

    if-ge v0, v3, :cond_0

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->oneWeekOrMonthSportsDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 194
    .local v1, "progress":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->progressList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "progress":Ljava/lang/Integer;
    .end local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    const v2, 0x7f080015

    const/4 v1, 0x0

    .line 384
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 385
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 386
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 387
    const v0, 0x7f06006d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerTabStrip;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tabStrip:Landroid/support/v4/view/PagerTabStrip;

    .line 388
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tabStrip:Landroid/support/v4/view/PagerTabStrip;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 389
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tabStrip:Landroid/support/v4/view/PagerTabStrip;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->setDrawFullUnderline(Z)V

    .line 390
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tabStrip:Landroid/support/v4/view/PagerTabStrip;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->setTextColor(I)V

    .line 392
    return-void
.end method

.method public static launchActivity(Landroid/app/Activity;Ljava/util/Date;)V
    .locals 3
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 395
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 397
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "date"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 398
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 400
    return-void
.end method

.method private refreshHistoryRoundView()V
    .locals 9

    .prologue
    .line 159
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMM"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "formatterYearMonth":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->totalMonthDay:I

    if-ge v3, v7, :cond_3

    .line 162
    const/4 v7, 0x0

    iput v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->progress:I

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "dateString":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0xa

    if-ge v7, v8, :cond_0

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->date:Ljava/util/Date;

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    :goto_1
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->context:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadOriginSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 170
    .local v6, "oneDateSportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    if-eqz v6, :cond_1

    .line 171
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/veclink/healthy/database/entity/SportData;

    .line 172
    .local v5, "item":Lcom/veclink/healthy/database/entity/SportData;
    iget v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->progress:I

    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->progress:I

    goto :goto_2

    .line 167
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/veclink/healthy/database/entity/SportData;
    .end local v6    # "oneDateSportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->date:Ljava/util/Date;

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 175
    .restart local v6    # "oneDateSportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_1
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->progressList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->progress:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->context:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->loadSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "barWalkDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    if-nez v0, :cond_2

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "barWalkDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .restart local v0    # "barWalkDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_2
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->oneWeekOrMonthSportsDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 184
    .end local v0    # "barWalkDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .end local v1    # "dateString":Ljava/lang/String;
    .end local v6    # "oneDateSportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_3
    return-void
.end method

.method private setKmlStepAndKclaDta(I)V
    .locals 17
    .param p1, "stepCount"    # I

    .prologue
    .line 355
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mContext:Landroid/content/Context;

    const-string v12, "personal_weight"

    const/high16 v13, 0x42480000    # 50.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 356
    .local v5, "person_weight":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mContext:Landroid/content/Context;

    const-string v12, "personal_height"

    const/high16 v13, 0x43200000    # 160.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 357
    .local v4, "person_height":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mContext:Landroid/content/Context;

    const-string v12, "pre_DistanceType"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 358
    .local v2, "distance_unit":I
    invoke-static {v4, v2}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getStepDistanceByHeight(FI)D

    move-result-wide v11

    move/from16 v0, p1

    int-to-double v13, v0

    mul-double v6, v11, v13

    .line 359
    .local v6, "stepDistance":D
    const/4 v11, 0x0

    invoke-static {v4, v11}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getStepDistanceByHeight(FI)D

    move-result-wide v11

    move/from16 v0, p1

    int-to-double v13, v0

    mul-double v8, v11, v13

    .line 360
    .local v8, "stepDistanceKMUnit":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mContext:Landroid/content/Context;

    const-string v12, "pre_Weight_Type"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 361
    .local v10, "weight_unit":I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    invoke-static {v5}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getKgUnitWeight(F)F

    move-result v5

    .line 362
    :cond_0
    const/4 v11, 0x1

    invoke-static {v5, v8, v9, v11}, Lcom/veclink/movnow_q2/util/StepDataConverterUtil;->getCaloryByWeightAndDisStance(FDI)I

    move-result v1

    .line 363
    .local v1, "cal":I
    if-nez v2, :cond_1

    .line 364
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistoryDistance:Landroid/widget/TextView;

    const v12, 0x7f0c0036

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getString(I)Ljava/lang/String;

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

    .line 365
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistoryDistanceUint:Landroid/widget/TextView;

    const v12, 0x7f0c00b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHideDistance:Landroid/widget/TextView;

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

    .line 367
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHideDistanceUint:Landroid/widget/TextView;

    const v12, 0x7f0c003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistorySetps:Landroid/widget/TextView;

    const v12, 0x7f0c0038

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getString(I)Ljava/lang/String;

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

    .line 375
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistoryKal:Landroid/widget/TextView;

    const v12, 0x7f0c0039

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getString(I)Ljava/lang/String;

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

    .line 376
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHideStepAccount:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistoryKal:Landroid/widget/TextView;

    const v12, 0x7f0c0039

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getString(I)Ljava/lang/String;

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

    .line 378
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHideKcla:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const-string v11, "pre_MyTarget"

    const-string v12, "7000"

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 380
    .local v3, "maxprogress":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistoryPercent:Landroid/widget/TextView;

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

    invoke-virtual {v0, v12, v13}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    return-void

    .line 369
    .end local v3    # "maxprogress":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistoryDistance:Landroid/widget/TextView;

    const v12, 0x7f0c0037

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getString(I)Ljava/lang/String;

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

    .line 370
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistoryDistanceUint:Landroid/widget/TextView;

    const v12, 0x7f0c00b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHideDistance:Landroid/widget/TextView;

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

    .line 372
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHideDistanceUint:Landroid/widget/TextView;

    const v12, 0x7f0c003b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 488
    :goto_0
    return-void

    .line 454
    :sswitch_0
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 456
    const v5, 0x7f04000f

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 457
    .local v4, "showAnim":Landroid/view/animation/Animation;
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 462
    .end local v4    # "showAnim":Landroid/view/animation/Animation;
    :sswitch_1
    const-string v5, "WalkDateHistoryRecordActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentDate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->currentDate:Ljava/util/Date;

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v3, Lcom/veclink/healthy/view/ShareDialog;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->currentDate:Ljava/util/Date;

    invoke-direct {v3, p0, v5}, Lcom/veclink/healthy/view/ShareDialog;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    .line 464
    .local v3, "shareDialog":Lcom/veclink/healthy/view/ShareDialog;
    invoke-virtual {v3}, Lcom/veclink/healthy/view/ShareDialog;->show()V

    goto :goto_0

    .line 467
    .end local v3    # "shareDialog":Lcom/veclink/healthy/view/ShareDialog;
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 468
    .local v0, "intent":Landroid/content/Intent;
    const-class v5, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 469
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMM"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 470
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "ret":Ljava/lang/String;
    const-string v5, "WalkDateHistoryRecordActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    const/16 v6, 0x9

    if-ge v5, v6, :cond_0

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    :goto_1
    const-string v5, "WalkDateHistoryRecordActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v5, "date"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 475
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0600be -> :sswitch_2
        0x7f0600c0 -> :sswitch_1
        0x7f0600c5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const v11, 0x7f030018

    invoke-virtual {p0, v11}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->setContentView(I)V

    .line 202
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->context:Landroid/content/Context;

    .line 204
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->times:Ljava/util/List;

    const-string v12, "03:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->times:Ljava/util/List;

    const-string v12, "06:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->times:Ljava/util/List;

    const-string v12, "09:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->times:Ljava/util/List;

    const-string v12, "12:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->times:Ljava/util/List;

    const-string v12, "15:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->times:Ljava/util/List;

    const-string v12, "18:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->times:Ljava/util/List;

    const-string v12, "21:00"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mContext:Landroid/content/Context;

    .line 212
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    .line 213
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    .line 214
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->touchUPList:Ljava/util/List;

    .line 215
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->touchDownList:Ljava/util/List;

    .line 216
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->imgUpList:Ljava/util/List;

    .line 222
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->managerCloriesList:Ljava/util/List;

    .line 223
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->shareList:Ljava/util/List;

    .line 224
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v11, "date"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Ljava/util/Date;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->date:Ljava/util/Date;

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 227
    .local v10, "tempcalendar":Ljava/util/Calendar;
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->date:Ljava/util/Date;

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 228
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iput v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mYear:I

    .line 229
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iput v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mMonth:I

    .line 230
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iput v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->selectMonth:I

    .line 231
    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iput v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->strDay:I

    .line 232
    const-string v11, "WalkDateHistoryRecordActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "date:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->date:Ljava/util/Date;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v11, "WalkDateHistoryRecordActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "strDay:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->strDay:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->date:Ljava/util/Date;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->currentDate:Ljava/util/Date;

    .line 235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;

    .line 236
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->date:Ljava/util/Date;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 237
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->initViews()V

    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 240
    .local v1, "currentyear":I
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 241
    .local v9, "selectyear":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v6, v11, 0x1

    .line 242
    .local v6, "month":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 243
    .local v7, "monthofday":I
    iget v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->selectMonth:I

    if-ne v6, v11, :cond_1

    if-ne v1, v9, :cond_1

    .line 245
    iput v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->totalMonthDay:I

    .line 250
    :goto_0
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->initLineGraphAndBarGraphData()V

    .line 251
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->refreshHistoryRoundView()V

    .line 252
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPapers:Ljava/util/List;

    .line 253
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 254
    .local v4, "lf":Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    .line 255
    .local v8, "pagerChildren":Landroid/view/View;
    const/4 v2, 0x1

    .local v2, "days":I
    :goto_1
    iget v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->totalMonthDay:I

    if-gt v2, v11, :cond_2

    .line 256
    const v11, 0x7f030048

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 257
    const v11, 0x7f0600b3

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 258
    const v11, 0x7f0600b5

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/veclink/movnow_q2/view/RoundProgressBar;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->roundProgressBarStep:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    .line 260
    const v11, 0x7f0600c5

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->imgSlidingDrower:Landroid/widget/ImageView;

    .line 261
    const v11, 0x7f0600be

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->llManagerCalories:Landroid/widget/LinearLayout;

    .line 262
    const v11, 0x7f0600c0

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->llShare:Landroid/widget/LinearLayout;

    .line 263
    const v11, 0x7f0600b3

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvTime:Landroid/widget/TextView;

    .line 264
    const v11, 0x7f060129

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistorySetps:Landroid/widget/TextView;

    .line 265
    const v11, 0x7f06012a

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistoryPercent:Landroid/widget/TextView;

    .line 266
    const v11, 0x7f06012b

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistoryDistance:Landroid/widget/TextView;

    .line 267
    const v11, 0x7f06012c

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistoryDistanceUint:Landroid/widget/TextView;

    .line 268
    const v11, 0x7f06012d

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHistoryKal:Landroid/widget/TextView;

    .line 270
    const v11, 0x7f0600e5

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHideDistance:Landroid/widget/TextView;

    .line 271
    const v11, 0x7f0600e6

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHideDistanceUint:Landroid/widget/TextView;

    .line 272
    const v11, 0x7f0600e7

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHideStepAccount:Landroid/widget/TextView;

    .line 273
    const v11, 0x7f0600e9

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->tvHideKcla:Landroid/widget/TextView;

    .line 275
    const v11, 0x7f06012e

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->lltouchUp:Landroid/widget/LinearLayout;

    .line 276
    const v11, 0x7f060108

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->lltouchDown:Landroid/widget/LinearLayout;

    .line 277
    const v11, 0x7f0600b8

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->llTopHide:Landroid/widget/LinearLayout;

    .line 278
    const v11, 0x7f0600c7

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->llBottomHide:Landroid/widget/LinearLayout;

    .line 280
    const v11, 0x7f0600e1

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/veclink/movnow_q2/view/SportGraphView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->sportGraphView:Lcom/veclink/movnow_q2/view/SportGraphView;

    .line 281
    const v11, 0x7f0600e3

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/veclink/movnow_q2/view/SportGraphHideView;

    iput-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->graphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;

    .line 282
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->imgUpList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->imgSlidingDrower:Landroid/widget/ImageView;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPapers:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->touchUPList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->lltouchUp:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->touchDownList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->lltouchDown:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->managerCloriesList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->llManagerCalories:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v11, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    const/high16 v12, 0x7f0c0000

    invoke-virtual {v11, v12}, Lcom/veclink/movnow_q2/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Pwatch"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 294
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->llShare:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    :cond_0
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->shareList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->llShare:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->graphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;

    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->oneWeekOrMonthSportsDataList:Ljava/util/ArrayList;

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    iget-object v13, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->times:Ljava/util/List;

    invoke-virtual {v12, v11, v13}, Lcom/veclink/movnow_q2/view/SportGraphHideView;->setDataInfo(Ljava/util/List;Ljava/util/List;)V

    .line 298
    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->sportGraphView:Lcom/veclink/movnow_q2/view/SportGraphView;

    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->oneWeekOrMonthSportsDataList:Ljava/util/ArrayList;

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-virtual {v12, v11}, Lcom/veclink/movnow_q2/view/SportGraphView;->setDataInfo(Ljava/util/List;)V

    .line 299
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mContext:Landroid/content/Context;

    const-string v12, "pre_MyTarget"

    const-string v13, "7000"

    invoke-static {v11, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 300
    .local v5, "maxprogress":I
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->roundProgressBarStep:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    invoke-virtual {v11, v5}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setMax(I)V

    .line 301
    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->roundProgressBarStep:Lcom/veclink/movnow_q2/view/RoundProgressBar;

    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->progressList:Ljava/util/ArrayList;

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v11}, Lcom/veclink/movnow_q2/view/RoundProgressBar;->setProgress(I)V

    .line 302
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->progressList:Ljava/util/ArrayList;

    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->setKmlStepAndKclaDta(I)V

    .line 303
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->llTopHide:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->llBottomHide:Landroid/widget/LinearLayout;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 248
    .end local v2    # "days":I
    .end local v4    # "lf":Landroid/view/LayoutInflater;
    .end local v5    # "maxprogress":I
    .end local v8    # "pagerChildren":Landroid/view/View;
    :cond_1
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v11

    iput v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->totalMonthDay:I

    goto/16 :goto_0

    .line 307
    .restart local v2    # "days":I
    .restart local v4    # "lf":Landroid/view/LayoutInflater;
    .restart local v8    # "pagerChildren":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->touchUPList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_3

    .line 308
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->touchUPList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 309
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->touchDownList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 310
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->managerCloriesList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->shareList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->imgUpList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v11, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 314
    :cond_3
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v12, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$ViewPaperAdapter;

    iget-object v13, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPapers:Ljava/util/List;

    invoke-direct {v12, p0, v13}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$ViewPaperAdapter;-><init>(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;Ljava/util/List;)V

    invoke-virtual {v11, v12}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 315
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v12, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->strDay:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 316
    iget v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->strDay:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->currentPage:I

    .line 317
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getHistoryTitleDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 318
    iget-object v11, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v12, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;

    invoke-direct {v12, p0}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)V

    invoke-virtual {v11, v12}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 346
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onResume()V

    .line 351
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 407
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 408
    .local v0, "action":I
    const/4 v4, 0x0

    .line 409
    .local v4, "x1":F
    const/4 v5, 0x0

    .line 411
    .local v5, "x2":F
    packed-switch v0, :pswitch_data_0

    .line 446
    :goto_0
    :pswitch_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 413
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y1:F

    goto :goto_0

    .line 419
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 420
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y2:F

    .line 421
    sub-float v6, v4, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y1:F

    iget v8, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y2:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y1:F

    iget v9, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y2:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 422
    .local v1, "distance":D
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    cmpg-double v6, v1, v6

    if-gez v6, :cond_0

    .line 423
    const/4 v6, 0x0

    goto :goto_1

    .line 426
    :cond_0
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->isHide:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y1:F

    iget v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y2:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 427
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    const v6, 0x7f04000f

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 430
    .local v3, "showAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 438
    .end local v3    # "showAnim":Landroid/view/animation/Animation;
    :cond_1
    :goto_2
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->isHide:Z

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->isHide:Z

    .line 439
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 432
    :cond_2
    iget-boolean v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->isHide:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y1:F

    iget v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->y2:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 433
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->bottomHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    const v6, 0x7f04000e

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 436
    .restart local v3    # "showAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->topHideList:Ljava/util/List;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 438
    .end local v3    # "showAnim":Landroid/view/animation/Animation;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

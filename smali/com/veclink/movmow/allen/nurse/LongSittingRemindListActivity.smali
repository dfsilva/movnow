.class public Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "LongSittingRemindListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final LONG_SITTING:Ljava/lang/String; = "long_sitting"

.field public static final LONG_SIT_INTERVALMINUTE:Ljava/lang/String; = "intervalMinute"

.field public static final OPEN_WAKEUP:Ljava/lang/String; = "open_wakeup"

.field public static final SELECT_WAKE_UP_TIMES:Ljava/lang/String; = "select_wake_up_times"


# instance fields
.field private adapter:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

.field btnChooseSave:Landroid/widget/Button;

.field cs_turn_onoff:Landroid/widget/Switch;

.field private handler:Landroid/os/Handler;

.field private isOnCreate:Z

.field private isOpenWakeUp:Z

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field remindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movmow/allen/nurse/RemindObject;",
            ">;"
        }
    .end annotation
.end field

.field private rl_wake_up_times:Landroid/widget/RelativeLayout;

.field selectDistanceDialog:Landroid/app/Dialog;

.field selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field public selsectTime:I

.field private start_end_time_textView:Landroid/widget/TextView;

.field private titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private tv_wake_up_time:Landroid/widget/TextView;

.field private viewPopup:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->isOpenWakeUp:Z

    .line 60
    new-instance v0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$1;

    invoke-direct {v0, p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$1;-><init>(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)V

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->setData()V

    return-void
.end method

.method static synthetic access$100(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->isOpenWakeUp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->isOnCreate:Z

    return v0
.end method

.method static synthetic access$400(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->tv_wake_up_time:Landroid/widget/TextView;

    return-object v0
.end method

.method private initView()V
    .locals 7

    .prologue
    .line 90
    iput-object p0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->mContext:Landroid/content/Context;

    .line 91
    const v2, 0x7f060073

    invoke-virtual {p0, v2}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->listView:Landroid/widget/ListView;

    .line 92
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "headView":Landroid/view/View;
    const v2, 0x7f06006e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, "setting_long_sittting_time_layout":Landroid/view/View;
    new-instance v2, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$2;

    invoke-direct {v2, p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$2;-><init>(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v2, 0x7f06006f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->start_end_time_textView:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f060071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->tv_wake_up_time:Landroid/widget/TextView;

    .line 105
    const-string v2, "select_wake_up_times"

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selsectTime:I

    .line 106
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->tv_wake_up_time:Landroid/widget/TextView;

    const v3, 0x7f0c00ff

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selsectTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v2, 0x7f060070

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->rl_wake_up_times:Landroid/widget/RelativeLayout;

    .line 108
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->rl_wake_up_times:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v2, 0x7f060072

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->cs_turn_onoff:Landroid/widget/Switch;

    .line 110
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->cs_turn_onoff:Landroid/widget/Switch;

    new-instance v3, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$3;

    invoke-direct {v3, p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$3;-><init>(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 123
    const v2, 0x7f060017

    invoke-virtual {p0, v2}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 124
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00ed

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private initWheel()V
    .locals 7

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 213
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->viewPopup:Landroid/view/View;

    const v4, 0x7f0600a2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 215
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;

    const/16 v4, 0x19

    const v5, 0x7f030050

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;-><init>(Landroid/content/Context;IIII)V

    .line 217
    .local v0, "hourNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumberWheelAdapter;
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 218
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 221
    .local v6, "currentItemSize":I
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 222
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v2, 0x7f020124

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 224
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const v2, 0x7f02018f

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 225
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 226
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 227
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const-string v2, "mins"

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setLabel(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectTime:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setLabelSize(I)V

    .line 231
    return-void
.end method

.method private setData()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "remindList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightEnalbe(Z)V

    .line 130
    new-instance v1, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v0, v2}, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->adapter:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    .line 131
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->adapter:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->setLongSittingStartEndTime()V

    .line 133
    return-void

    .line 129
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setLongSittingStartEndTime()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 136
    const-string v5, "key_sitting_remind_timemind_time_begin_hour"

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 137
    .local v1, "timeBeginHour":I
    const-string v5, "key_sitting_remind_time_begin_minute"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 138
    .local v2, "timeBeginMinute":I
    const-string v5, "key_sitting_remind_time_end_hour"

    const/16 v6, 0x15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 139
    .local v3, "timeEndHour":I
    const-string v5, "key_sitting_remind_time_end_minute"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 140
    .local v4, "timeEndMinute":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%02d:%02d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02d:%02d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "start_end_time":Ljava/lang/String;
    iget-object v5, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->start_end_time_textView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 142
    iget-object v5, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->start_end_time_textView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 7

    .prologue
    .line 234
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f0b0014

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectDistanceDialog:Landroid/app/Dialog;

    .line 235
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectDistanceDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->viewPopup:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectDistanceDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 237
    .local v0, "window":Landroid/view/Window;
    const v2, 0x7f0b0018

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 238
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 239
    .local v1, "wl":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 240
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 241
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectDistanceDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 242
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectDistanceDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 243
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->selectDistanceDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 244
    return-void
.end method

.method private showSetTimeDialog()V
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->viewPopup:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->viewPopup:Landroid/view/View;

    const v1, 0x7f0600a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->btnChooseSave:Landroid/widget/Button;

    .line 158
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->initWheel()V

    .line 159
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->showDialog()V

    .line 161
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->btnChooseSave:Landroid/widget/Button;

    new-instance v1, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;

    invoke-direct {v1, p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$4;-><init>(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 250
    :pswitch_0
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->showSetTimeDialog()V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x7f060070
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->setContentView(I)V

    .line 72
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->initView()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->isOnCreate:Z

    .line 74
    const-string v0, "open_wakeup"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->isOpenWakeUp:Z

    .line 75
    iget-boolean v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->isOnCreate:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->cs_turn_onoff:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->isOpenWakeUp:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 78
    :cond_0
    iput-boolean v2, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->isOnCreate:Z

    .line 79
    const-string v0, "sitting_remind_objects_file.wao"

    invoke-static {p0, v0}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->remindList:Ljava/util/List;

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onResume()V

    .line 86
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->setData()V

    .line 87
    return-void
.end method

.method public startSyn()V
    .locals 21

    .prologue
    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sput-wide v18, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->sitting_remind_startTime:J

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->mContext:Landroid/content/Context;

    const-string v18, "select_wake_up_times"

    const/16 v19, 0x19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 182
    .local v17, "minutes":I
    div-int/lit8 v9, v17, 0x3c

    .line 183
    .local v9, "intervalHour":I
    rem-int/lit8 v10, v17, 0x3c

    .line 184
    .local v10, "intervalMinute":I
    const-string v15, "key_sitting_remind_timemind_time_begin_hour"

    const/16 v18, 0x9

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v15, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 185
    .local v11, "timeBeginHour":I
    const-string v15, "key_sitting_remind_time_begin_minute"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v15, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 186
    .local v12, "timeBeginMinute":I
    const-string v15, "key_sitting_remind_time_end_hour"

    const/16 v18, 0x15

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v15, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 187
    .local v13, "timeEndHour":I
    const-string v15, "key_sitting_remind_time_end_minute"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v15, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 188
    .local v14, "timeEndMinute":I
    const/4 v7, 0x0

    .line 189
    .local v7, "openflag":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->isOpenWakeUp:Z

    if-eqz v15, :cond_0

    .line 190
    const/4 v7, 0x1

    .line 193
    :cond_0
    sget-object v15, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v15, v15, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->updateFirewareWay:I

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_2

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 195
    .local v16, "calendar":Ljava/util/Calendar;
    const/16 v15, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int v4, v15, v9

    .line 196
    .local v4, "hour":I
    const/16 v15, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int v5, v15, v10

    .line 197
    .local v5, "minute":I
    const/16 v15, 0x3b

    if-le v5, v15, :cond_1

    .line 198
    add-int/lit8 v4, v4, 0x1

    .line 199
    add-int/lit8 v5, v5, -0x3b

    .line 201
    :cond_1
    const/4 v15, 0x7

    new-array v6, v15, [I

    fill-array-data v6, :array_0

    .line 202
    .local v6, "repeatDay":[I
    new-instance v3, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;-><init>(II[III)V

    .line 203
    .local v3, "bleAlarmRemindParam":Lcom/veclink/bracelet/bean/BleAlarmRemindParam;
    new-instance v15, Ljava/lang/Thread;

    new-instance v18, Lcom/veclink/healthy/task/SetRemindTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/veclink/healthy/task/SetRemindTask;-><init>(Landroid/content/Context;ILcom/veclink/bracelet/bean/BaseRemindParam;)V

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 209
    .end local v3    # "bleAlarmRemindParam":Lcom/veclink/bracelet/bean/BleAlarmRemindParam;
    .end local v4    # "hour":I
    .end local v5    # "minute":I
    .end local v6    # "repeatDay":[I
    .end local v16    # "calendar":Ljava/util/Calendar;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->finish()V

    .line 210
    return-void

    .line 205
    :cond_2
    new-instance v8, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;-><init>(IIIIIII)V

    .line 207
    .local v8, "bleLongSittingRemindParam":Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;
    new-instance v15, Ljava/lang/Thread;

    new-instance v18, Lcom/veclink/healthy/task/SetRemindTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v8}, Lcom/veclink/healthy/task/SetRemindTask;-><init>(Landroid/content/Context;ILcom/veclink/bracelet/bean/BaseRemindParam;)V

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 201
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

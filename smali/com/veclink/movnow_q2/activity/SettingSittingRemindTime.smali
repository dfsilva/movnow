.class public Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "SettingSittingRemindTime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final STR_SITTING_REMIND_TIME_BEGIN_HOUR:Ljava/lang/String; = "key_sitting_remind_timemind_time_begin_hour"

.field public static final STR_SITTING_REMIND_TIME_BEGIN_MINUTE:Ljava/lang/String; = "key_sitting_remind_time_begin_minute"

.field public static final STR_SITTING_REMIND_TIME_END_HOUR:Ljava/lang/String; = "key_sitting_remind_time_end_hour"

.field public static final STR_SITTING_REMIND_TIME_END_MINUTE:Ljava/lang/String; = "key_sitting_remind_time_end_minute"

.field public static final TAG:Ljava/lang/String; = "SettingsActivityMySittingRemindTime"


# instance fields
.field btnChooseSave:Landroid/widget/Button;

.field private currentItem:I

.field private currentItem2:I

.field private evCurrent:Landroid/widget/EditText;

.field evSleeptimeBegin:Landroid/widget/EditText;

.field evSleeptimeEnd:Landroid/widget/EditText;

.field hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field selectPortaitDialog:Landroid/app/Dialog;

.field timeBeginHour:I

.field timeBeginMinute:I

.field timeEndHour:I

.field timeEndMinute:I

.field titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private viewPopup:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evCurrent:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evCurrent:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 76
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c006a

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 78
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 79
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c00f4

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightText(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    new-instance v1, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$1;-><init>(Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x7f060182

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeBegin:Landroid/widget/EditText;

    .line 92
    const v0, 0x7f060183

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeEnd:Landroid/widget/EditText;

    .line 95
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeBegin:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 96
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeEnd:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 98
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeBegin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeEnd:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const-string v0, "key_sitting_remind_timemind_time_begin_hour"

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeBeginHour:I

    .line 104
    const-string v0, "key_sitting_remind_time_begin_minute"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeBeginMinute:I

    .line 105
    const-string v0, "key_sitting_remind_time_end_hour"

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeEndHour:I

    .line 106
    const-string v0, "key_sitting_remind_time_end_minute"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeEndMinute:I

    .line 107
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeBegin:Landroid/widget/EditText;

    const-string v1, "%02d:%02d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeBeginHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeBeginMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeEnd:Landroid/widget/EditText;

    const-string v1, "%02d:%02d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeEndHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->timeEndMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method private initWheel()V
    .locals 14

    .prologue
    const v13, 0x7f02018f

    const v12, 0x7f020124

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->viewPopup:Landroid/view/View;

    const v4, 0x7f06001e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 149
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evCurrent:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeBegin:Landroid/widget/EditText;

    if-ne v1, v4, :cond_0

    .line 150
    const-string v1, "key_sitting_remind_timemind_time_begin_hour"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->currentItem:I

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->viewPopup:Landroid/view/View;

    const v4, 0x7f06001f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 158
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evCurrent:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeBegin:Landroid/widget/EditText;

    if-ne v1, v4, :cond_2

    .line 159
    const-string v1, "key_sitting_remind_time_begin_minute"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->currentItem2:I

    .line 165
    :goto_1
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/16 v3, 0x17

    const-string v4, "%02d"

    const v5, 0x7f030050

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 166
    .local v0, "hourNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 167
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v10}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 168
    new-instance v3, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/16 v6, 0x3b

    const-string v7, "%02d"

    const v8, 0x7f030050

    move-object v4, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 169
    .local v3, "minuterNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 170
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v10}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 172
    .local v9, "currentItemSize":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v9}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 173
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v9}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 174
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v12}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 175
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v13}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 176
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v12}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 177
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v13}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 178
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->currentItem:I

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 179
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 180
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 181
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->currentItem2:I

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 183
    return-void

    .line 151
    .end local v0    # "hourNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    .end local v3    # "minuterNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    .end local v9    # "currentItemSize":I
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evCurrent:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeEnd:Landroid/widget/EditText;

    if-ne v1, v4, :cond_1

    .line 152
    const-string v1, "key_sitting_remind_time_end_hour"

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->currentItem:I

    goto/16 :goto_0

    .line 154
    :cond_1
    const-string v1, "SettingsActivityMySittingRemindTime"

    const-string v4, "evCurrent err!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evCurrent:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeEnd:Landroid/widget/EditText;

    if-ne v1, v4, :cond_3

    .line 161
    const-string v1, "key_sitting_remind_time_end_minute"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->currentItem2:I

    goto/16 :goto_1

    .line 163
    :cond_3
    const-string v1, "SettingsActivityMySittingRemindTime"

    const-string v4, "evCurrent err!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 186
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f0b0014

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->selectPortaitDialog:Landroid/app/Dialog;

    .line 187
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->selectPortaitDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->viewPopup:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 188
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 189
    .local v0, "window":Landroid/view/Window;
    const v2, 0x7f0b0018

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 190
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 191
    .local v1, "wl":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 192
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 193
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 194
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 195
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->selectPortaitDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 196
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 197
    return-void
.end method

.method private showSetTimeDialog()V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->viewPopup:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->viewPopup:Landroid/view/View;

    const v1, 0x7f0600a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->btnChooseSave:Landroid/widget/Button;

    .line 121
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->initWheel()V

    .line 123
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->showDialog()V

    .line 125
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->btnChooseSave:Landroid/widget/Button;

    new-instance v1, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime$2;-><init>(Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeBegin:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evCurrent:Landroid/widget/EditText;

    .line 61
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->showSetTimeDialog()V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evSleeptimeEnd:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->evCurrent:Landroid/widget/EditText;

    .line 65
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->showSetTimeDialog()V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x7f060182
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;->initView()V

    .line 53
    return-void
.end method

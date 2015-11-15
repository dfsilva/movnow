.class public Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "SettingsActivityMyDeviceSleepTime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SETTING_ACTIVITY_MYDEVICE_SLEEPTIME_TAG:Ljava/lang/String; = "SettingsActivityMyDeviceSleepTime"

.field public static final STR_SLEEP_TIME_BEGIN_HOUR:Ljava/lang/String; = "key_sleep_time_begin_hour"

.field public static final STR_SLEEP_TIME_BEGIN_MINUTE:Ljava/lang/String; = "key_sleep_time_begin_minute"

.field public static final STR_SLEEP_TIME_END_HOUR:Ljava/lang/String; = "key_sleep_time_end_hour"

.field public static final STR_SLEEP_TIME_END_MINUTE:Ljava/lang/String; = "key_sleep_time_end_minute"


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

.field titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private viewPopup:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evCurrent:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evCurrent:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 71
    const v4, 0x7f060032

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 72
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v5, 0x7f0c0069

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 73
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v4, v8}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 74
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v5, 0x7f020128

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 75
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v5, 0x7f0c00f4

    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightText(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    new-instance v5, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$1;

    invoke-direct {v5, p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$1;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;)V

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v4, 0x7f060182

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeBegin:Landroid/widget/EditText;

    .line 84
    const v4, 0x7f060183

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeEnd:Landroid/widget/EditText;

    .line 87
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeBegin:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 88
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeEnd:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 90
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeBegin:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeEnd:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const-string v4, "key_sleep_time_begin_hour"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    .local v0, "timeBeginHour":I
    const-string v4, "key_sleep_time_begin_minute"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 97
    .local v1, "timeBeginMinute":I
    const-string v4, "key_sleep_time_end_hour"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 98
    .local v2, "timeEndHour":I
    const-string v4, "key_sleep_time_end_minute"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 99
    .local v3, "timeEndMinute":I
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeBegin:Landroid/widget/EditText;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeEnd:Landroid/widget/EditText;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
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

    .line 138
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->viewPopup:Landroid/view/View;

    const v4, 0x7f06001e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 140
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evCurrent:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeBegin:Landroid/widget/EditText;

    if-ne v1, v4, :cond_0

    .line 141
    const-string v1, "key_sleep_time_begin_hour"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->currentItem:I

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->viewPopup:Landroid/view/View;

    const v4, 0x7f06001f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 149
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evCurrent:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeBegin:Landroid/widget/EditText;

    if-ne v1, v4, :cond_2

    .line 150
    const-string v1, "key_sleep_time_begin_minute"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->currentItem2:I

    .line 156
    :goto_1
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/16 v3, 0x17

    const-string v4, "%02d"

    const v5, 0x7f030050

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 157
    .local v0, "hourNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 158
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v10}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 159
    new-instance v3, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/16 v6, 0x3b

    const-string v7, "%02d"

    const v8, 0x7f030050

    move-object v4, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 160
    .local v3, "minuterNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 161
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v10}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 163
    .local v9, "currentItemSize":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v9}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 164
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v9}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 165
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v12}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 166
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v13}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 167
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v12}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelForeground(I)V

    .line 168
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v13}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 169
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 170
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 171
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v11}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 172
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 174
    return-void

    .line 142
    .end local v0    # "hourNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    .end local v3    # "minuterNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    .end local v9    # "currentItemSize":I
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evCurrent:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeEnd:Landroid/widget/EditText;

    if-ne v1, v4, :cond_1

    .line 143
    const-string v1, "key_sleep_time_end_hour"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->currentItem:I

    goto/16 :goto_0

    .line 145
    :cond_1
    const-string v1, "SettingsActivityMyDeviceSleepTime"

    const-string v4, "evCurrent err!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evCurrent:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeEnd:Landroid/widget/EditText;

    if-ne v1, v4, :cond_3

    .line 152
    const-string v1, "key_sleep_time_end_minute"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->currentItem2:I

    goto/16 :goto_1

    .line 154
    :cond_3
    const-string v1, "SettingsActivityMyDeviceSleepTime"

    const-string v4, "evCurrent err!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 177
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f0b0014

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->selectPortaitDialog:Landroid/app/Dialog;

    .line 178
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->selectPortaitDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->viewPopup:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 179
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 180
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 181
    .local v1, "wl":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 182
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 183
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 184
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->selectPortaitDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 185
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->selectPortaitDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 186
    return-void
.end method

.method private showSetTimeDialog()V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->viewPopup:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->viewPopup:Landroid/view/View;

    const v1, 0x7f0600a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->btnChooseSave:Landroid/widget/Button;

    .line 113
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->initWheel()V

    .line 115
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->showDialog()V

    .line 117
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->btnChooseSave:Landroid/widget/Button;

    new-instance v1, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$2;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeBegin:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evCurrent:Landroid/widget/EditText;

    .line 57
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->showSetTimeDialog()V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evSleeptimeEnd:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->evCurrent:Landroid/widget/EditText;

    .line 61
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->showSetTimeDialog()V

    goto :goto_0

    .line 53
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
    .line 46
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->initView()V

    .line 49
    return-void
.end method

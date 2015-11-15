.class public Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;
.super Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;
.source "AddOrEditWakeUpRemindActivity.java"


# static fields
.field public static final WAKEUPREMIAND:Ljava/lang/String; = "wakeupremind"

.field public static final WAKEUP_ALARMHOUR:Ljava/lang/String; = "alarmHour"

.field public static final WAKEUP_ALARMMINUTE:Ljava/lang/String; = "alarmMinute"

.field public static final WAKEUP_REPEATDAY:Ljava/lang/String; = "repeatDay"


# instance fields
.field private final DAY_ORDER:[I

.field private dayButtonParents:[Landroid/view/ViewGroup;

.field private dayButtons:[Landroid/widget/ToggleButton;

.field editObjectPosition:I

.field editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

.field private mFactory:Landroid/view/LayoutInflater;

.field private mLongWeekDayStrings:[Ljava/lang/String;

.field private mShortWeekDayStrings:[Ljava/lang/String;

.field private remind_label:Landroid/widget/TextView;

.field private repeat_days:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 20
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;-><init>()V

    .line 25
    new-array v0, v1, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtonParents:[Landroid/view/ViewGroup;

    .line 26
    new-array v0, v1, [Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->DAY_ORDER:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method static synthetic access$000(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)[Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->DAY_ORDER:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->turnOnDayOfWeek(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->turnOffDayOfWeek(I)V

    return-void
.end method

.method private editCurrentItemHourMinuteAndRepeatDate()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xb

    .line 122
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 123
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "position"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editObjectPosition:I

    .line 125
    const-class v6, Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/veclink/movmow/allen/nurse/RemindObject;

    iput-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 126
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    if-eqz v6, :cond_0

    .line 127
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v6}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v2

    .line 128
    .local v2, "currentHourItem":I
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v6}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v3

    .line 129
    .local v3, "currentMinteItem":I
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 130
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v6, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 131
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->remindtitleLabel:Landroid/widget/TextView;

    const v7, 0x7f0c01ab

    invoke-virtual {p0, v7}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v6}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getRepeateArray()[Z

    move-result-object v5

    .line 133
    .local v5, "repeatArray":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 134
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v4

    aget-boolean v7, v5, v4

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "currentHourItem":I
    .end local v3    # "currentMinteItem":I
    .end local v4    # "i":I
    .end local v5    # "repeatArray":[Z
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 138
    .local v1, "calendar":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 139
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 148
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_1
    :goto_1
    return-void

    .line 144
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 145
    .restart local v1    # "calendar":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 146
    iget-object v6, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    goto :goto_1
.end method

.method private initAlarmData()V
    .locals 15

    .prologue
    const/4 v14, 0x7

    const/4 v13, 0x0

    .line 151
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 152
    .local v3, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mShortWeekDayStrings:[Ljava/lang/String;

    .line 153
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mLongWeekDayStrings:[Ljava/lang/String;

    .line 154
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    iput-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mFactory:Landroid/view/LayoutInflater;

    .line 155
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "lanuage":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v14, :cond_1

    .line 157
    iget-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mFactory:Landroid/view/LayoutInflater;

    const v11, 0x7f03002f

    iget-object v12, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->repeat_days:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 159
    .local v7, "viewgroup":Landroid/view/ViewGroup;
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 160
    .local v0, "button":Landroid/widget/ToggleButton;
    iget-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->DAY_ORDER:[I

    aget v2, v10, v4

    .line 161
    .local v2, "dayToShowIndex":I
    iget-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mShortWeekDayStrings:[Ljava/lang/String;

    aget-object v8, v10, v2

    .line 162
    .local v8, "weekDayString":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 163
    .local v9, "weekDayStringLength":I
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "resultDayString":Ljava/lang/String;
    const-string v10, "CN"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 166
    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mLongWeekDayStrings:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v0, v10}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 176
    :goto_1
    iget-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->repeat_days:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;

    aput-object v0, v10, v4

    .line 178
    iget-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtonParents:[Landroid/view/ViewGroup;

    aput-object v7, v10, v4

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mLongWeekDayStrings:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v0, v10}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 181
    .end local v0    # "button":Landroid/widget/ToggleButton;
    .end local v2    # "dayToShowIndex":I
    .end local v6    # "resultDayString":Ljava/lang/String;
    .end local v7    # "viewgroup":Landroid/view/ViewGroup;
    .end local v8    # "weekDayString":Ljava/lang/String;
    .end local v9    # "weekDayStringLength":I
    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_2

    .line 182
    move v1, v4

    .line 184
    .local v1, "buttonIndex":I
    iget-object v10, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtonParents:[Landroid/view/ViewGroup;

    aget-object v10, v10, v4

    new-instance v11, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;

    invoke-direct {v11, p0, v1}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;-><init>(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;I)V

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 202
    .end local v1    # "buttonIndex":I
    :cond_2
    return-void
.end method

.method private turnOffDayOfWeek(I)V
    .locals 2
    .param p1, "dayIndex"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 211
    return-void
.end method

.method private turnOnDayOfWeek(I)V
    .locals 2
    .param p1, "dayIndex"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 206
    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->initView()V

    .line 55
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->remind_label:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->remind_label:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0101

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 58
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->repeat_days:Landroid/widget/LinearLayout;

    .line 59
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    new-instance v1, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;

    invoke-direct {v1, p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$1;-><init>(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->initAlarmData()V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->initView()V

    .line 48
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->initWheelViewData()V

    .line 49
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->editCurrentItemHourMinuteAndRepeatDate()V

    .line 51
    return-void
.end method

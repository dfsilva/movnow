.class public Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;
.super Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;
.source "AddOrEditWaterClockActivity.java"


# static fields
.field public static final REMINDWATER:Ljava/lang/String; = "remindwater"

.field public static final WATER_HOUR:Ljava/lang/String; = "water_hour"

.field public static final WATER_MINUTES:Ljava/lang/String; = "water_minutes"

.field public static final WATER_REMINDCOUNT:Ljava/lang/String; = "water_remindCount"

.field public static final WATER_REMINDCYLE:Ljava/lang/String; = "water_remindCyle"

.field public static final WATER_REMINDRUNNINGTIME:Ljava/lang/String; = "water_remindRunningTime"

.field public static final WATER_REMINDSERIALNUMBER:Ljava/lang/String; = "remindSerialNumber"


# instance fields
.field editObjectPosition:I

.field editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

.field remind_label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;Landroid/content/Context;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getRemindWaterTip(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private editCurrentItemHourMinute()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    .line 108
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "position"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editObjectPosition:I

    .line 111
    const-class v4, Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/veclink/movmow/allen/nurse/RemindObject;

    iput-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 112
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v4}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v2

    .line 114
    .local v2, "currentHourItem":I
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v4}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v3

    .line 115
    .local v3, "currentMinteItem":I
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v4, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 116
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v4, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 117
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->remindtitleLabel:Landroid/widget/TextView;

    const v5, 0x7f0c00f1

    invoke-virtual {p0, v5}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .end local v2    # "currentHourItem":I
    .end local v3    # "currentMinteItem":I
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 120
    .local v1, "calendar":Ljava/util/Calendar;
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 121
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 125
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 126
    .restart local v1    # "calendar":Ljava/util/Calendar;
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 127
    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    goto :goto_0
.end method

.method private getRemindWaterTip(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const v7, 0x7f0c00fa

    const/16 v6, 0xb

    const/16 v5, 0x1e

    .line 133
    const v4, 0x7f0c00fd

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "remind_text":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 135
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 136
    .local v1, "hour":I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 137
    .local v2, "minute":I
    packed-switch v1, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    :pswitch_0
    if-ne v1, v6, :cond_1

    if-ne v2, v5, :cond_1

    .line 168
    const v4, 0x7f0c00f8

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    :cond_1
    return-object v3

    .line 139
    :pswitch_1
    const v4, 0x7f0c00f5

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    goto :goto_0

    .line 142
    :pswitch_2
    const v4, 0x7f0c00f6

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    goto :goto_0

    .line 145
    :pswitch_3
    const v4, 0x7f0c00f7

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    goto :goto_0

    .line 148
    :pswitch_4
    const v4, 0x7f0c00f9

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    goto :goto_0

    .line 151
    :pswitch_5
    if-lt v2, v5, :cond_0

    .line 152
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 156
    :pswitch_6
    if-gt v2, v5, :cond_0

    .line 157
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 161
    :pswitch_7
    const v4, 0x7f0c00fb

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 162
    goto :goto_0

    .line 164
    :pswitch_8
    const v4, 0x7f0c00fc

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private getRemindWaterTip(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    const v3, 0x7f0c00fa

    const/16 v2, 0x1e

    .line 176
    const v1, 0x7f0c00fd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "remind_text":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v1, 0xb

    if-ne p2, v1, :cond_1

    if-ne p3, v2, :cond_1

    .line 208
    const v1, 0x7f0c00f8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_1
    return-object v0

    .line 179
    :pswitch_1
    const v1, 0x7f0c00f5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    goto :goto_0

    .line 182
    :pswitch_2
    const v1, 0x7f0c00f6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    goto :goto_0

    .line 185
    :pswitch_3
    const v1, 0x7f0c00f7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    goto :goto_0

    .line 188
    :pswitch_4
    const v1, 0x7f0c00f9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    goto :goto_0

    .line 191
    :pswitch_5
    if-lt p3, v2, :cond_0

    .line 192
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_6
    if-gt p3, v2, :cond_0

    .line 197
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :pswitch_7
    const v1, 0x7f0c00fb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    goto :goto_0

    .line 204
    :pswitch_8
    const v1, 0x7f0c00fc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected initView()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->initView()V

    .line 66
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->remind_label:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->remind_label:Landroid/widget/TextView;

    invoke-direct {p0, p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getRemindWaterTip(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    new-instance v1, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;

    invoke-direct {v1, p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$3;-><init>(Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->initView()V

    .line 36
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->initWheelViewData()V

    .line 37
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->editCurrentItemHourMinute()V

    .line 39
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    new-instance v1, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$1;

    invoke-direct {v1, p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$1;-><init>(Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->addScrollingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;)V

    .line 50
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    new-instance v1, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$2;

    invoke-direct {v1, p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$2;-><init>(Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->addScrollingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;)V

    .line 62
    return-void
.end method

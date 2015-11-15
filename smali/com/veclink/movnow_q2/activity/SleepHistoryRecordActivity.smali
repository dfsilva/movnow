.class public Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;
.super Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;
.source "SleepHistoryRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

.field private customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private weekSleepFragment:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;-><init>()V

    return-void
.end method

.method private hideFragments(Landroid/support/v4/app/FragmentTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->weekSleepFragment:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->weekSleepFragment:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 176
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 42
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 43
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 46
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c003e

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private showCurrentFragment(I)V
    .locals 9
    .param p1, "currentFragment"    # I

    .prologue
    const v7, 0x7f06006a

    const/4 v8, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 99
    .local v5, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-direct {p0, v5}, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->hideFragments(Landroid/support/v4/app/FragmentTransaction;)V

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 158
    :goto_0
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 161
    return-void

    .line 103
    :pswitch_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
    .local v3, "formatterMonth":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "dd"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "formatterDay":Ljava/text/SimpleDateFormat;
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    if-nez v6, :cond_0

    .line 106
    new-instance v6, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-direct {v6}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;-><init>()V

    iput-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    .line 107
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-virtual {v5, v7, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "args":Landroid/os/Bundle;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 110
    .local v1, "cal":Ljava/util/Calendar;
    const-string v6, "month"

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v6, "year"

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string v6, "enableSwipe"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    const-string v6, "sixWeeksInCalendar"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    const-string v6, "issleepdata"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-virtual {v6, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setArguments(Landroid/os/Bundle;)V

    .line 119
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "cal":Ljava/util/Calendar;
    :goto_1
    new-instance v4, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity$1;

    invoke-direct {v4, p0}, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;)V

    .line 138
    .local v4, "listener":Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-virtual {v6, v4}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setCaldroidListener(Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;)V

    goto :goto_0

    .line 117
    .end local v4    # "listener":Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
    :cond_0
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 141
    .end local v2    # "formatterDay":Ljava/text/SimpleDateFormat;
    .end local v3    # "formatterMonth":Ljava/text/SimpleDateFormat;
    :pswitch_1
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->weekSleepFragment:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    if-nez v6, :cond_1

    .line 142
    new-instance v6, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    invoke-direct {v6}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;-><init>()V

    iput-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->weekSleepFragment:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    .line 143
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->weekSleepFragment:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    invoke-virtual {v5, v7, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 145
    :cond_1
    iget-object v6, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->weekSleepFragment:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 54
    :sswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    if-nez v0, :cond_1

    new-instance v0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->dismiss()V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0, p1, v1, v1}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->showAsDropDown(Landroid/view/View;II)V

    .line 60
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setOneOnclicListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setTwoOnclicListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setThreeVisisble(I)V

    goto :goto_0

    .line 68
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->showCurrentFragment(I)V

    .line 69
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->dismiss()V

    goto :goto_0

    .line 74
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->showCurrentFragment(I)V

    .line 75
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->dismiss()V

    goto :goto_0

    .line 80
    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->showCurrentFragment(I)V

    .line 81
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->dismiss()V

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x7f060092 -> :sswitch_1
        0x7f060093 -> :sswitch_2
        0x7f060094 -> :sswitch_3
        0x7f0601cb -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->initView()V

    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->showCurrentFragment(I)V

    .line 40
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    const-string v1, "CALDROID_SAVED_STATE"

    invoke-virtual {v0, p1, v1}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->saveStatesToKey(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

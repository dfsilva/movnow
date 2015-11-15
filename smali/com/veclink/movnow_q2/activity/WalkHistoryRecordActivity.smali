.class public Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;
.super Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;
.source "WalkHistoryRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

.field private customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

.field private monthWalkFragment:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private weekWalkFragment:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;-><init>()V

    return-void
.end method

.method private hideFragments(Landroid/support/v4/app/FragmentTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->weekWalkFragment:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->weekWalkFragment:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->monthWalkFragment:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->monthWalkFragment:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 46
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 47
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c003e

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 50
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 51
    return-void
.end method

.method private showCurrentFragment(I)V
    .locals 7
    .param p1, "currentFragment"    # I

    .prologue
    const v5, 0x7f06006a

    const/4 v6, 0x1

    .line 58
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 59
    .local v3, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-direct {p0, v3}, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->hideFragments(Landroid/support/v4/app/FragmentTransaction;)V

    .line 60
    packed-switch p1, :pswitch_data_0

    .line 117
    :goto_0
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 120
    return-void

    .line 63
    :pswitch_0
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    if-nez v4, :cond_0

    .line 64
    new-instance v4, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-direct {v4}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;-><init>()V

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    .line 65
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "args":Landroid/os/Bundle;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 68
    .local v1, "cal":Ljava/util/Calendar;
    const-string v4, "month"

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v4, "year"

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v4, "enableSwipe"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    const-string v4, "sixWeeksInCalendar"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-virtual {v4, v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "cal":Ljava/util/Calendar;
    :goto_1
    new-instance v2, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity$1;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;)V

    .line 97
    .local v2, "listener":Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-virtual {v4, v2}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->setCaldroidListener(Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;)V

    goto :goto_0

    .line 74
    .end local v2    # "listener":Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
    :cond_0
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 101
    :pswitch_1
    new-instance v4, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    invoke-direct {v4}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;-><init>()V

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->weekWalkFragment:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    .line 102
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->weekWalkFragment:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->monthWalkFragment:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    if-nez v4, :cond_1

    .line 107
    new-instance v4, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    invoke-direct {v4}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;-><init>()V

    iput-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->monthWalkFragment:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    .line 108
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->monthWalkFragment:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->monthWalkFragment:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onBackPressed()V

    .line 142
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 171
    :sswitch_0
    new-instance v0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    .line 172
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->dismiss()V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0, p1, v1, v1}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->showAsDropDown(Landroid/view/View;II)V

    .line 177
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setOneOnclicListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setTwoOnclicListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setThreeOnclicListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 184
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->showCurrentFragment(I)V

    .line 185
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->dismiss()V

    goto :goto_0

    .line 190
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->showCurrentFragment(I)V

    .line 191
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->dismiss()V

    goto :goto_0

    .line 196
    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->showCurrentFragment(I)V

    .line 197
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->dismiss()V

    goto :goto_0

    .line 169
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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->initView()V

    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->showCurrentFragment(I)V

    .line 44
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onResume()V

    .line 164
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkHistoryRecordActivity;->caldroidFragment:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    const-string v1, "CALDROID_SAVED_STATE"

    invoke-virtual {v0, p1, v1}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->saveStatesToKey(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

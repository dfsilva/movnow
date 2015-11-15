.class public Lcom/veclink/movnow_q2/fragment/WaterFragment;
.super Landroid/support/v4/app/Fragment;
.source "WaterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bmiRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

.field private bmi_layout:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private sittingLongRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

.field private sitting_remind_layout:Landroid/view/View;

.field private tvTime:Landroid/widget/TextView;

.field private wakeupRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

.field private wakeup_remind_layout:Landroid/view/View;

.field private waterRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

.field private water_clock_layout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private addViewListener()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->water_clock_layout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->sitting_remind_layout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->wakeup_remind_layout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->bmi_layout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    const v0, 0x7f0600ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->water_clock_layout:Landroid/view/View;

    .line 74
    const v0, 0x7f0600f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->sitting_remind_layout:Landroid/view/View;

    .line 75
    const v0, 0x7f0600f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->wakeup_remind_layout:Landroid/view/View;

    .line 76
    const v0, 0x7f0600f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->bmi_layout:Landroid/view/View;

    .line 77
    const v0, 0x7f0600b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->tvTime:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0600ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/RemindProgressBar;

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->waterRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    .line 79
    const v0, 0x7f0600f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/RemindProgressBar;

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->sittingLongRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    .line 80
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->sittingLongRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    const-string v1, "sittingLongRemindProBar"

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->setTag(Ljava/lang/Object;)V

    .line 81
    const v0, 0x7f0600f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/RemindProgressBar;

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->wakeupRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    .line 82
    const v0, 0x7f0600f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/RemindProgressBar;

    iput-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->bmiRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    .line 84
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->tvTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/veclink/movnow_q2/util/StringUtil;->fromatCurrDateByLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method private reFreshBarProgress(Lcom/veclink/movnow_q2/view/RemindProgressBar;Ljava/lang/String;)V
    .locals 11
    .param p1, "bar"    # Lcom/veclink/movnow_q2/view/RemindProgressBar;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x64

    .line 165
    iget-object v7, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->mContext:Landroid/content/Context;

    invoke-static {v7, p2}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 166
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 167
    const/4 v3, 0x0

    .line 168
    .local v3, "isHasSetPro":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 169
    .local v1, "earliestWaterRemind":Lcom/veclink/movmow/allen/nurse/RemindObject;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 170
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v7, v8

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int v6, v7, v8

    .line 171
    .local v6, "progress":I
    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int v5, v7, v8

    .line 172
    .local v5, "max":I
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WaterFragment;->getTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "progress:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/veclink/movnow_q2/util/DebugUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-gt v6, v5, :cond_0

    .line 174
    const/4 v3, 0x1

    .line 175
    invoke-virtual {p1, v5}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->setMax(I)V

    .line 176
    if-ltz v6, :cond_1

    .line 177
    invoke-virtual {p1, v6}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->setProgress(I)V

    .line 183
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "earliestWaterRemind":Lcom/veclink/movmow/allen/nurse/RemindObject;
    .end local v5    # "max":I
    .end local v6    # "progress":I
    :cond_1
    if-nez v3, :cond_2

    .line 184
    invoke-virtual {p1, v10}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->setMax(I)V

    .line 185
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 186
    invoke-virtual {p1, v10}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->setProgress(I)V

    .line 187
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->stopFreshView()V

    .line 193
    :cond_2
    :goto_0
    return-void

    .line 189
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->setProgress(I)V

    .line 190
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->stopFreshView()V

    goto :goto_0
.end method

.method private reFreshLongSittingProgress()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->sittingLongRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->setProgress(I)V

    .line 157
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->sittingLongRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->stopFreshView()V

    .line 159
    return-void
.end method

.method private setBarProgress()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->bmiRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->stopFreshView()V

    .line 138
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->bmiRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/RemindProgressBar;->setProgress(I)V

    .line 139
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->waterRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    const-string v1, "water_remind_objects_file.wao"

    invoke-direct {p0, v0, v1}, Lcom/veclink/movnow_q2/fragment/WaterFragment;->reFreshBarProgress(Lcom/veclink/movnow_q2/view/RemindProgressBar;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->wakeupRemindProBar:Lcom/veclink/movnow_q2/view/RemindProgressBar;

    const-string v1, "wakeup_remind_objects_file.wao"

    invoke-direct {p0, v0, v1}, Lcom/veclink/movnow_q2/fragment/WaterFragment;->reFreshBarProgress(Lcom/veclink/movnow_q2/view/RemindProgressBar;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/WaterFragment;->reFreshLongSittingProgress()V

    .line 145
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 132
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WaterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void

    .line 105
    :pswitch_1
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->mContext:Landroid/content/Context;

    const-string v5, "water_remind_objects_file.wao"

    invoke-static {v4, v5}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/veclink/movmow/allen/nurse/WaterRemindListActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 114
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    :pswitch_2
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->mContext:Landroid/content/Context;

    const-string v5, "sitting_remind_objects_file.wao"

    invoke-static {v4, v5}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, "sittingremindlist":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 119
    .end local v2    # "sittingremindlist":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    :pswitch_3
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/veclink/movnow_q2/activity/BMIActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 123
    :pswitch_4
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->mContext:Landroid/content/Context;

    const-string v5, "wakeup_remind_objects_file.wao"

    invoke-static {v4, v5}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 124
    .local v3, "wakeupremindlist":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 125
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x7f0600ee
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v1, 0x7f03003c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/fragment/WaterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/fragment/WaterFragment;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/fragment/WaterFragment;->initView(Landroid/view/View;)V

    .line 57
    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/WaterFragment;->addViewListener()V

    .line 58
    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/WaterFragment;->setBarProgress()V

    .line 59
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 67
    invoke-direct {p0}, Lcom/veclink/movnow_q2/fragment/WaterFragment;->setBarProgress()V

    .line 68
    return-void
.end method

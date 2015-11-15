.class public Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;
.super Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;
.source "AddOrEditLongSittingRemindActivity.java"


# static fields
.field public static final LONG_SIT_ENDHOUR:Ljava/lang/String; = "endHour"

.field public static final LONG_SIT_ENDMINUTE:Ljava/lang/String; = "endMinute"

.field public static final LONG_SIT_STARTHOUR:Ljava/lang/String; = "startHour"

.field public static final LONG_SIT_STARTMINUTE:Ljava/lang/String; = "startMinute"


# instance fields
.field editObjectPosition:I

.field editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

.field remind_label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;-><init>()V

    return-void
.end method

.method private editCurrentItemHourMinute()V
    .locals 6

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "position"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editObjectPosition:I

    .line 123
    const-class v3, Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/veclink/movmow/allen/nurse/RemindObject;

    iput-object v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 124
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v3}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v1

    .line 126
    .local v1, "currentHourItem":I
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editRemindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v3}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v2

    .line 128
    .local v2, "currentMinteItem":I
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 129
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v3, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 130
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->remindtitleLabel:Landroid/widget/TextView;

    const v4, 0x7f0c00f1

    invoke-virtual {p0, v4}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .end local v1    # "currentHourItem":I
    .end local v2    # "currentMinteItem":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHourWheelIntValue()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getMinuteWheelIntValue()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected getTimeStringValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getHourWheelIntValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->getMinuteWheelIntValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initView()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->initView()V

    .line 39
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->remind_label:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->remind_label:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0100

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->remindtitleLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    new-instance v1, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;

    invoke-direct {v1, p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity$1;-><init>(Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method protected initWheelViewData()V
    .locals 12

    .prologue
    const v5, 0x7f030050

    const/16 v3, 0x3b

    const/4 v2, 0x1

    .line 111
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const-string v4, "%02d"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 112
    .local v0, "hourNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 113
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->hourWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 114
    new-instance v6, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/4 v8, 0x0

    const-string v10, "%02d"

    move-object v7, p0

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 115
    .local v6, "minuterNumbericWheelAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 116
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->minuteWheel:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->initView()V

    .line 33
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->initWheelViewData()V

    .line 34
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;->editCurrentItemHourMinute()V

    .line 35
    return-void
.end method

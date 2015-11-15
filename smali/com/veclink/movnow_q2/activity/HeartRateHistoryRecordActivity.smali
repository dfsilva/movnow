.class public Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;
.super Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;
.source "HeartRateHistoryRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;

.field private buddy:[[Ljava/lang/String;

.field private customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

.field private exListView:Landroid/widget/ExpandableListView;

.field private group:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;-><init>()V

    .line 32
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "2015.1(3)"

    aput-object v1, v0, v3

    const-string v1, "2014.12(4)"

    aput-object v1, v0, v4

    const-string v1, "2014.11(5)"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->group:[Ljava/lang/String;

    .line 34
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "69"

    aput-object v2, v1, v3

    const-string v2, "69"

    aput-object v2, v1, v4

    const-string v2, "69"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "69"

    aput-object v2, v1, v3

    const-string v2, "69"

    aput-object v2, v1, v4

    const-string v2, "69"

    aput-object v2, v1, v5

    const-string v2, "69"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "69"

    aput-object v2, v1, v3

    const-string v2, "69"

    aput-object v2, v1, v4

    const-string v2, "69"

    aput-object v2, v1, v5

    const-string v2, "69"

    aput-object v2, v1, v6

    const-string v2, "69"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->buddy:[[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->group:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)[[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->buddy:[[Ljava/lang/String;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->mContext:Landroid/content/Context;

    .line 48
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 49
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 51
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 52
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c003e

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 53
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->exListView:Landroid/widget/ExpandableListView;

    .line 54
    new-instance v0, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->group:[Ljava/lang/String;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->buddy:[[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->adapter:Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;

    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->exListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->adapter:Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->exListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 62
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->exListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$2;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 67
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->exListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$3;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$3;-><init>(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 81
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 116
    :goto_0
    :sswitch_0
    return-void

    .line 87
    :sswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    const v1, 0x7f0c0110

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setOneBtnText(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    const v1, 0x7f0c010f

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setTwoBtnText(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->dismiss()V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, p1, v1, v2}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->showAsDropDown(Landroid/view/View;II)V

    .line 95
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setOneOnclicListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setTwoOnclicListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->customPopupWimdow:Lcom/veclink/movnow_q2/view/CustomPopupWimdow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/CustomPopupWimdow;->setThreeVisisble(I)V

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060092 -> :sswitch_0
        0x7f060093 -> :sswitch_0
        0x7f060094 -> :sswitch_0
        0x7f0601cb -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealyBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->initView()V

    .line 45
    return-void
.end method

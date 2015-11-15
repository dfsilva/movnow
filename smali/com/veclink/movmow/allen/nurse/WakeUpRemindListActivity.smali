.class public Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "WakeUpRemindListActivity.java"


# instance fields
.field private adapter:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;)Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->adapter:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 38
    iput-object p0, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->mContext:Landroid/content/Context;

    .line 39
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->listView:Landroid/widget/ListView;

    .line 40
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 41
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 43
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 44
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    new-instance v1, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity$1;

    invoke-direct {v1, p0}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity$1;-><init>(Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method private setData()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    invoke-direct {v0, p0}, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->adapter:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    .line 60
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->adapter:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->initView()V

    .line 25
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onResume()V

    .line 32
    invoke-direct {p0}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->setData()V

    .line 33
    return-void
.end method

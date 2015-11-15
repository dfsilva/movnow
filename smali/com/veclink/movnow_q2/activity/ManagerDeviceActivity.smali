.class public Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "ManagerDeviceActivity.java"


# instance fields
.field adapter:Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

.field deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listView:Landroid/widget/ListView;

.field mContext:Landroid/content/Context;

.field titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 30
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->mContext:Landroid/content/Context;

    .line 31
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 32
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c010b

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 33
    const v0, 0x7f060046

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->listView:Landroid/widget/ListView;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->deviceList:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->deviceList:Ljava/util/List;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    new-instance v0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->deviceList:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->adapter:Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

    .line 37
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->adapter:Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;->initView()V

    .line 27
    return-void
.end method

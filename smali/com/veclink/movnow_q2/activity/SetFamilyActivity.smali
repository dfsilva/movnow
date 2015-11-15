.class public Lcom/veclink/movnow_q2/activity/SetFamilyActivity;
.super Landroid/app/Activity;
.source "SetFamilyActivity.java"


# instance fields
.field private adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

.field private add_number_btn:Landroid/widget/Button;

.field private numberListView:Landroid/widget/ListView;

.field private phone_number_edit:Landroid/widget/EditText;

.field private titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->phone_number_edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->add_number_btn:Landroid/widget/Button;

    return-object v0
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->add_number_btn:Landroid/widget/Button;

    new-instance v1, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->phone_number_edit:Landroid/widget/EditText;

    new-instance v1, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$2;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/SetFamilyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    return-void
.end method

.method private initListViewData()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    .line 104
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->numberListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->adapter:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 43
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 44
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c01b1

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 46
    const v0, 0x7f060059

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->phone_number_edit:Landroid/widget/EditText;

    .line 47
    const v0, 0x7f06005a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->add_number_btn:Landroid/widget/Button;

    .line 48
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->numberListView:Landroid/widget/ListView;

    .line 50
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->initView()V

    .line 38
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->initListViewData()V

    .line 39
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;->addListener()V

    .line 40
    return-void
.end method

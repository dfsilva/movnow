.class public Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "SettingsActivityMyDeviceSportModeSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SPORTTYPE:Ljava/lang/String; = "sporttype"


# instance fields
.field private currentSportType:I

.field private dialog:Lcom/veclink/movnow_q2/view/CustomAlertDialog;

.field private mContext:Landroid/content/Context;

.field private savedSportType:I

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private tvDefault:Landroid/widget/TextView;

.field private tvRiding:Landroid/widget/TextView;

.field private tvSleep:Landroid/widget/TextView;

.field private tvWalk:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 70
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c00c8

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 72
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c00f4

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightText(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f060185

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvDefault:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f060186

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvWalk:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f060187

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvSleep:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f060188

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvRiding:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvDefault:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvWalk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvSleep:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvRiding:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvSleep:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 85
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvRiding:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 87
    return-void
.end method

.method private saveSportType(I)V
    .locals 3
    .param p1, "sportType"    # I

    .prologue
    .line 129
    iget v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->currentSportType:I

    if-eq v0, p1, :cond_0

    .line 130
    iput p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->currentSportType:I

    .line 131
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->mContext:Landroid/content/Context;

    const-string v1, "pre_SportType"

    iget v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->currentSportType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParams()V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 126
    :goto_0
    :sswitch_0
    return-void

    .line 93
    :sswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvDefault:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 94
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvWalk:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 95
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvSleep:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 96
    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->saveSportType(I)V

    goto :goto_0

    .line 99
    :sswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvWalk:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 100
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvDefault:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 101
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvSleep:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 102
    invoke-direct {p0, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->saveSportType(I)V

    goto :goto_0

    .line 109
    :sswitch_3
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvSleep:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 110
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvWalk:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 111
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvDefault:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 112
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->saveSportType(I)V

    goto :goto_0

    .line 115
    :sswitch_4
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvRiding:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvRiding:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvRiding:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x7f060185 -> :sswitch_1
        0x7f060186 -> :sswitch_2
        0x7f060187 -> :sswitch_3
        0x7f060188 -> :sswitch_4
        0x7f0601cb -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->initView()V

    .line 38
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onResume()V

    .line 44
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pre_SportType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->currentSportType:I

    .line 45
    iget v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->currentSportType:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvDefault:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvWalk:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 49
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvSleep:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvDefault:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 53
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvWalk:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvSleep:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvDefault:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 59
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvWalk:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 60
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect;->tvSleep:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

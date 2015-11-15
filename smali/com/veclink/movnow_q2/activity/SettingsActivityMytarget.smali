.class public Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "SettingsActivityMytarget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingsActivityMytarget"


# instance fields
.field private changedListener:Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;

.field private currentStep:Ljava/lang/String;

.field private firstLogin:Z

.field private imgStepDown:Landroid/widget/ImageView;

.field private imgStepUp:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field scrolledListener:Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;

.field private titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private tvActive:Landroid/widget/TextView;

.field private tvActiveText:Landroid/widget/TextView;

.field private tvCommon:Landroid/widget/TextView;

.field private tvCommonText:Landroid/widget/TextView;

.field private tvLoseWeigth:Landroid/widget/TextView;

.field private tvLoseWeigthText:Landroid/widget/TextView;

.field private wheelScrolled:Z

.field private wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

.field private wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 55
    const-string v0, "0"

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->changedListener:Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wheelScrolled:Z

    .line 258
    new-instance v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$3;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$3;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->scrolledListener:Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->firstLogin:Z

    return v0
.end method

.method static synthetic access$700(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->submitUserInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wheelScrolled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wheelScrolled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->setSetpText(Ljava/lang/String;)V

    return-void
.end method

.method private getWheel(I)Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    return-object v0
.end method

.method private initView()V
    .locals 7

    .prologue
    const v6, 0x7f0c00c3

    const v5, 0x7f060032

    const v4, 0x7f020166

    const/16 v3, 0x32

    const/4 v2, 0x1

    .line 98
    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 99
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 101
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 103
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 104
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c015e

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightText(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    new-instance v1, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$1;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f060189

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->imgStepUp:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f060190

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->imgStepDown:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f060193

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActiveText:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f060194

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f060195

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f060197

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActive:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f060198

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigth:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f060199

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommon:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f06018b

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 139
    const v0, 0x7f06018c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 140
    const v0, 0x7f06018d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 141
    const v0, 0x7f06018e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 142
    const v0, 0x7f06018f

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .line 144
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 145
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 146
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 147
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 148
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setWheelBackground(I)V

    .line 149
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 150
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 151
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 152
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 153
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItemSize(I)V

    .line 154
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setChangeAllItemSizeByCurrentitem(Z)V

    .line 155
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setChangeAllItemSizeByCurrentitem(Z)V

    .line 156
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setChangeAllItemSizeByCurrentitem(Z)V

    .line 157
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setChangeAllItemSizeByCurrentitem(Z)V

    .line 158
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setChangeAllItemSizeByCurrentitem(Z)V

    .line 159
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->setWheel(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    .line 160
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->setWheel(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    .line 161
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->setWheel(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    .line 162
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->setWheel(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    .line 163
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->setWheel(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V

    .line 170
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->imgStepUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->imgStepDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigth:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommon:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method

.method private initWheel(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 210
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getWheel(I)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v0

    .line 211
    .local v0, "wheel":Lcom/veclink/movnow_q2/view/wheel/WheelView;
    new-instance v1, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {v1, p0, v2, v3}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 212
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 214
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->changedListener:Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->addChangingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;)V

    .line 215
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->scrolledListener:Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->addScrollingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;)V

    .line 216
    invoke-virtual {v0, v5}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 217
    new-instance v1, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 218
    invoke-virtual {v0, v5}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 219
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    .line 220
    const-string v1, "height"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wheel.getHeight()-------:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method private setSetpText(Ljava/lang/String;)V
    .locals 6
    .param p1, "step"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2ee0

    const/16 v1, 0x1b58

    const/4 v5, 0x1

    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 372
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 373
    .local v0, "now_date_total_step":I
    if-ge v0, v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActiveText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    const v2, 0x7f0c0064

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 381
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigth:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 382
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommon:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    if-lt v0, v1, :cond_2

    if-ge v0, v3, :cond_2

    .line 385
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActiveText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    const v2, 0x7f0c0064

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 392
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigth:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 393
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommon:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 395
    :cond_2
    if-lt v0, v3, :cond_3

    const/16 v1, 0x4268

    if-ge v0, v1, :cond_3

    .line 396
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActiveText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 400
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigth:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 401
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommon:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 402
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActiveText:Landroid/widget/TextView;

    const v2, 0x7f0c0062

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 403
    :cond_3
    const/16 v1, 0x4268

    if-lt v0, v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActiveText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    const v2, 0x7f0c0063

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 409
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigth:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 410
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommon:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0
.end method

.method private setWheel(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V
    .locals 4
    .param p1, "wheelView"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .prologue
    const/4 v3, 0x1

    .line 183
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, p0, v1, v2}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 198
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->changedListener:Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;

    invoke-virtual {p1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->addChangingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;)V

    .line 199
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->scrolledListener:Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;

    invoke-virtual {p1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->addScrollingListener(Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;)V

    .line 200
    invoke-virtual {p1, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCyclic(Z)V

    .line 201
    new-instance v0, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 202
    invoke-virtual {p1, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setVisibleItems(I)V

    .line 203
    return-void
.end method

.method private submitUserInfo()V
    .locals 18

    .prologue
    .line 506
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    const-string v14, "pre_Sex"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 507
    .local v7, "sex":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    const-string v14, "personal_year"

    const/16 v15, 0x7b2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 508
    .local v12, "year":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    const-string v14, "personal_month"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 509
    .local v5, "month":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    const-string v14, "personal_day"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 510
    .local v3, "day":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/16 v13, 0xa

    if-ge v5, v13, :cond_0

    .line 514
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 517
    .local v9, "strmonth":Ljava/lang/String;
    :goto_0
    const/16 v13, 0xa

    if-ge v3, v13, :cond_1

    .line 518
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 522
    .local v8, "strday":Ljava/lang/String;
    :goto_1
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "birthday":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    const-string v14, "personal_height"

    const/high16 v15, 0x43200000    # 160.0f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 525
    .local v4, "height":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    const-string v14, "personal_weight"

    const/high16 v15, 0x42480000    # 50.0f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 526
    .local v11, "weight":F
    new-instance v10, Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-direct {v10}, Lcom/veclink/healthy/database/entity/UserInfo;-><init>()V

    .line 527
    .local v10, "userInfo":Lcom/veclink/healthy/database/entity/UserInfo;
    invoke-virtual {v10, v7}, Lcom/veclink/healthy/database/entity/UserInfo;->setSex(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v10, v1}, Lcom/veclink/healthy/database/entity/UserInfo;->setBirthday(Ljava/lang/String;)V

    .line 529
    float-to-int v13, v4

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/veclink/healthy/database/entity/UserInfo;->setHeight(Ljava/lang/String;)V

    .line 530
    const/high16 v13, 0x447a0000    # 1000.0f

    mul-float/2addr v13, v11

    float-to-int v13, v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/veclink/healthy/database/entity/UserInfo;->setWeight(Ljava/lang/String;)V

    .line 531
    const-string v13, "SettingsActivityMytarget"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sex:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v13, "SettingsActivityMytarget"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "birthday:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v13, "SettingsActivityMytarget"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(int)(height):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    float-to-int v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v13, "SettingsActivityMytarget"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(int)(weight*1000):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/high16 v15, 0x447a0000    # 1000.0f

    mul-float/2addr v15, v11

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 537
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    const-class v15, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 538
    new-instance v6, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    invoke-direct {v6, v13, v10}, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;-><init>(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UserInfo;)V

    .line 539
    .local v6, "session":Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    invoke-static {v13, v6}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    .line 540
    return-void

    .line 516
    .end local v1    # "birthday":Ljava/lang/String;
    .end local v4    # "height":F
    .end local v6    # "session":Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;
    .end local v8    # "strday":Ljava/lang/String;
    .end local v9    # "strmonth":Ljava/lang/String;
    .end local v10    # "userInfo":Lcom/veclink/healthy/database/entity/UserInfo;
    .end local v11    # "weight":F
    :cond_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "strmonth":Ljava/lang/String;
    goto/16 :goto_0

    .line 520
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "strday":Ljava/lang/String;
    goto/16 :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x9

    const/4 v6, 0x7

    const/4 v1, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_4

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;

    .line 365
    :goto_1
    const-string v0, "currentStep"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentStep--onclcik----:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->setSetpText(Ljava/lang/String;)V

    .line 368
    return-void

    .line 288
    :sswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 290
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 291
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 298
    :sswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 311
    :sswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActiveText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 315
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigth:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 316
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommon:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 318
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActiveText:Landroid/widget/TextView;

    const v1, 0x7f0c0062

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x2ee0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v5}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 320
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 321
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 322
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 323
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 326
    :sswitch_3
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActiveText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    const v1, 0x7f0c0063

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x4268

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 331
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigth:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 332
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommon:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 334
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v5}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 335
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 336
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 337
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 338
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 341
    :sswitch_4
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActiveText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    const v1, 0x7f0c0064

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x1b58

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActive:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 347
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigth:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 348
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommon:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 349
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 350
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v6}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 351
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 352
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 353
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 363
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;

    goto/16 :goto_1

    .line 285
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060189 -> :sswitch_0
        0x7f060190 -> :sswitch_1
        0x7f060197 -> :sswitch_2
        0x7f060198 -> :sswitch_3
        0x7f060199 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->setContentView(I)V

    .line 68
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstLogin"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->firstLogin:Z

    .line 70
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->initView()V

    .line 71
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvActiveText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvLoseWeigthText:Landroid/widget/TextView;

    const v1, 0x7f0c0063

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x4268

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->tvCommonText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 470
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onDestroy()V

    .line 472
    return-void
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 482
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 483
    const-string v1, "UpdateUserInfoResponse"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;->getError()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    iget-boolean v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->firstLogin:Z

    if-ne v1, v4, :cond_0

    .line 491
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->mContext:Landroid/content/Context;

    const-class v2, Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 492
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->startActivity(Landroid/content/Intent;)V

    .line 494
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->finish()V

    .line 504
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;->getSubErrors()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 497
    const v1, 0x7f0c009a

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 499
    :cond_2
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;->getSubErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/business/http/pojo/SubError;

    invoke-virtual {v1}, Lcom/veclink/healthy/business/http/pojo/SubError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 475
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onPause()V

    .line 477
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 80
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onResume()V

    .line 82
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "pre_MyTarget_wan"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 83
    .local v4, "wan":I
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "pre_MyTarget_qian"

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 84
    .local v2, "qian":I
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "pre_MyTarget_bai"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    .local v0, "bai":I
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "pre_MyTarget_shi"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 86
    .local v3, "shi":I
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "pre_MyTarget_ge"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 87
    .local v1, "ge":I
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 88
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 89
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 90
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 91
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;

    invoke-virtual {v5, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 92
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "pre_MyTarget"

    const-string v7, "7000"

    invoke-static {v5, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;

    .line 93
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->setSetpText(Ljava/lang/String;)V

    .line 95
    return-void
.end method

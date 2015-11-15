.class public Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "SettingsActivityMyDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;
    }
.end annotation


# static fields
.field public static final FIND_DEVICES:Ljava/lang/String; = "find_devices"

.field private static final POWER_DATA:I = 0x3


# instance fields
.field private bandLightColorView:Landroid/view/View;

.field private bandLightImgView:Landroid/widget/ImageView;

.field private bandLightTextView:Landroid/widget/TextView;

.field private band_power_value:Landroid/widget/TextView;

.field private batteryPowery:I

.field private call_remind_view:Landroid/view/View;

.field changeLightCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field private changeLightColorHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

.field private imgId:I

.field intentFilter:Landroid/content/IntentFilter;

.field powerChangeReceiver:Landroid/content/BroadcastReceiver;

.field private power_left_text:Landroid/widget/TextView;

.field queryPowerCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field queryPowerHandler:Landroid/os/Handler;

.field queryPowerValueTask:Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;

.field private rlSleepTime:Landroid/widget/RelativeLayout;

.field private selectBandLightColorDialog:Landroid/app/Dialog;

.field private siFindDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private siFirmwareUpdate:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private siPowerView:Landroid/view/View;

.field private siSetFamilyNumber:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private siSportType:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private siTakePhoto:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private siUnbingDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

.field private si_kept_view:Landroid/view/View;

.field private sms_remind_view:Landroid/view/View;

.field private switchKept:Landroid/widget/Switch;

.field private switchMobile:Landroid/widget/Switch;

.field private switchSms:Landroid/widget/Switch;

.field private textId:I

.field private titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private tvCallRemindBySecond:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 81
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    .line 82
    const v0, 0x7f0200ce

    iput v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I

    .line 83
    const v0, 0x7f0c0181

    iput v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I

    .line 85
    new-instance v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$1;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->changeLightColorHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->changeLightColorHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->changeLightCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 105
    new-instance v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$2;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->queryPowerHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->queryPowerHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->queryPowerCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->queryPowerValueTask:Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_POWER_CHANGE_DATA"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->intentFilter:Landroid/content/IntentFilter;

    .line 136
    new-instance v0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$3;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$3;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->powerChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 467
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I

    return v0
.end method

.method static synthetic access$002(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I

    return p1
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->bandLightTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Lcom/veclink/movnow_q2/view/SettingsItemView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siUnbingDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->showDeviceFuntionView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->doChangeLightColorTask(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->selectBandLightColorDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I

    return v0
.end method

.method static synthetic access$202(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I

    return p1
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->bandLightImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->batteryPowery:I

    return v0
.end method

.method static synthetic access$402(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->batteryPowery:I

    return p1
.end method

.method static synthetic access$500(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->band_power_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->power_left_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Lcom/veclink/movnow_q2/view/SettingsItemView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFindDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Lcom/veclink/movnow_q2/view/SettingsItemView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFirmwareUpdate:Lcom/veclink/movnow_q2/view/SettingsItemView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    return-object v0
.end method

.method private doChangeLightColorTask(I)V
    .locals 4
    .param p1, "band_light_color"    # I

    .prologue
    .line 509
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doChangeLightColorTask band_light_color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 510
    new-instance v0, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->changeLightCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v0, v1, v2, p1}, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;I)V

    .line 511
    .local v0, "bleChangeLightColorTask":Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;
    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleChangeLightColorTask;->work()V

    .line 512
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 176
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 177
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c00c4

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 179
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 180
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c010a

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightText(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->titleBar:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    new-instance v1, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$4;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$4;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v0, 0x7f06017b

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->tvCallRemindBySecond:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siSportType:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 192
    const v0, 0x7f060171

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFindDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 193
    const v0, 0x7f060179

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siUnbingDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 194
    const v0, 0x7f060176

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFirmwareUpdate:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 195
    const v0, 0x7f060174

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siTakePhoto:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 196
    const v0, 0x7f060175

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/SettingsItemView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siSetFamilyNumber:Lcom/veclink/movnow_q2/view/SettingsItemView;

    .line 197
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siTakePhoto:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c019b

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFindDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c00c9

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siSportType:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c00c8

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siUnbingDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c00ca

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFirmwareUpdate:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c00ce

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 202
    const v0, 0x7f06017c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->switchMobile:Landroid/widget/Switch;

    .line 203
    const v0, 0x7f06017e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->switchSms:Landroid/widget/Switch;

    .line 204
    const v0, 0x7f060173

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->switchKept:Landroid/widget/Switch;

    .line 205
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->switchMobile:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 206
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->switchSms:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->switchKept:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siTakePhoto:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siSetFamilyNumber:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siSportType:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFirmwareUpdate:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v0, 0x7f060177

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->rlSleepTime:Landroid/widget/RelativeLayout;

    .line 213
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->rlSleepTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFindDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siUnbingDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v0, 0x7f060178

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v0, 0x7f06017f

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->bandLightColorView:Landroid/view/View;

    .line 218
    const v0, 0x7f060181

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->bandLightTextView:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f060180

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->bandLightImgView:Landroid/widget/ImageView;

    .line 220
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->bandLightColorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->setColorLightView()V

    .line 222
    const v0, 0x7f06016d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siPowerView:Landroid/view/View;

    .line 223
    const v0, 0x7f060170

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->band_power_value:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f06016e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->power_left_text:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f060172

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->si_kept_view:Landroid/view/View;

    .line 226
    const v0, 0x7f06017a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->call_remind_view:Landroid/view/View;

    .line 227
    const v0, 0x7f06017d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->sms_remind_view:Landroid/view/View;

    .line 230
    return-void
.end method

.method private setColorLightView()V
    .locals 4

    .prologue
    const v3, 0x7f0c0181

    const v2, 0x7f0200ce

    .line 515
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getBandLightColor(Landroid/content/Context;)I

    move-result v0

    .line 516
    .local v0, "band_light_color":I
    iput v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I

    .line 517
    iput v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I

    .line 518
    packed-switch v0, :pswitch_data_0

    .line 543
    :goto_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->bandLightTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 544
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->bandLightImgView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 545
    return-void

    .line 520
    :pswitch_0
    iput v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I

    .line 521
    iput v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I

    goto :goto_0

    .line 525
    :pswitch_1
    const v1, 0x7f0200d1

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I

    .line 526
    const v1, 0x7f0c0183

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I

    goto :goto_0

    .line 530
    :pswitch_2
    const v1, 0x7f0200cf

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I

    .line 531
    const v1, 0x7f0c0182

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I

    goto :goto_0

    .line 535
    :pswitch_3
    const v1, 0x7f0200d0

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->imgId:I

    .line 536
    const v1, 0x7f0c0184

    iput v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->textId:I

    .line 537
    const/4 v0, 0x3

    .line 538
    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDialogLightViewColor(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f080007

    .line 548
    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Keeper;->getBandLightColor(Landroid/content/Context;)I

    move-result v0

    .line 549
    .local v0, "band_light_color":I
    packed-switch v0, :pswitch_data_0

    .line 574
    :goto_0
    return-void

    .line 551
    :pswitch_0
    const v5, 0x7f0601bc

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 552
    .local v1, "blueText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 556
    .end local v1    # "blueText":Landroid/widget/TextView;
    :pswitch_1
    const v5, 0x7f0601be

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 557
    .local v4, "yellowText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 561
    .end local v4    # "yellowText":Landroid/widget/TextView;
    :pswitch_2
    const v5, 0x7f0601c0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 562
    .local v2, "greenText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 566
    .end local v2    # "greenText":Landroid/widget/TextView;
    :pswitch_3
    const v5, 0x7f0601c2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 567
    .local v3, "redText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showDeviceFuntionView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 234
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    .line 235
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v2, v2, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowPowerView:I

    if-nez v2, :cond_0

    .line 236
    new-instance v2, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->queryPowerCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v2, v3, v4}, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->queryPowerValueTask:Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;

    .line 237
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->queryPowerValueTask:Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;

    invoke-virtual {v2}, Lcom/veclink/bracelet/bletask/BleQueryPowerValueTask;->work()V

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siPowerView:Landroid/view/View;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v3, v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowPowerView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFindDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v3, v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowFindDeviceView:I

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->call_remind_view:Landroid/view/View;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v3, v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowCallRemindView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->switchMobile:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const-string v4, "personal_remind_mobile"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 246
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->sms_remind_view:Landroid/view/View;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v3, v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowSmsRemindView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->switchSms:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const-string v4, "personal_remind_sms"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 248
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->bandLightColorView:Landroid/view/View;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v3, v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowLightView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->si_kept_view:Landroid/view/View;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v3, v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowKeptView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 252
    .local v0, "defaultKeptOnoff":Z
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const-string v3, "personal_kept_set"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 253
    .local v1, "keptOnOffblean":Z
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->switchKept:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 255
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siTakePhoto:Lcom/veclink/movnow_q2/view/SettingsItemView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v3, v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowTakePhotoView:I

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setVisibility(I)V

    .line 257
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siSetFamilyNumber:Lcom/veclink/movnow_q2/view/SettingsItemView;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v3, v3, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowFamilyNumber:I

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setVisibility(I)V

    .line 258
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siSetFamilyNumber:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v3, 0x7f0c01b1

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private showSelectBandLightDialog()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03005f

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 442
    .local v4, "view":Landroid/view/View;
    const v8, 0x7f0601bb

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, "blueColor":Landroid/view/View;
    const v8, 0x7f0601bd

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 444
    .local v7, "yellowColor":Landroid/view/View;
    const v8, 0x7f0601bf

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 445
    .local v1, "greenColor":Landroid/view/View;
    const v8, 0x7f0601c1

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 446
    .local v3, "redColor":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->setDialogLightViewColor(Landroid/view/View;)V

    .line 447
    new-instance v2, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;

    invoke-direct {v2, p0, v10}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$1;)V

    .line 448
    .local v2, "listener":Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$BandLightSelectListener;
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    new-instance v8, Landroid/app/Dialog;

    const v9, 0x7f0b0016

    invoke-direct {v8, p0, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->selectBandLightColorDialog:Landroid/app/Dialog;

    .line 454
    iget-object v8, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->selectBandLightColorDialog:Landroid/app/Dialog;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v10

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v4, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v8, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->selectBandLightColorDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 456
    .local v5, "window":Landroid/view/Window;
    const v8, 0x7f0b0018

    invoke-virtual {v5, v8}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 457
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 458
    .local v6, "wl":Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x0

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 459
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v8

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 460
    iget-object v8, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->selectBandLightColorDialog:Landroid/app/Dialog;

    invoke-virtual {v8, v6}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 461
    iget-object v8, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->selectBandLightColorDialog:Landroid/app/Dialog;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 463
    iget-object v8, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->selectBandLightColorDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 464
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 403
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 405
    :sswitch_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const-string v1, "personal_remind_mobile"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    :sswitch_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const-string v1, "personal_remind_sms"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 413
    :sswitch_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const-string v1, "personal_kept_set"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParams()V

    .line 415
    if-nez p2, :cond_0

    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->stopPlayRing()V

    goto :goto_0

    .line 403
    :sswitch_data_0
    .sparse-switch
        0x7f060173 -> :sswitch_2
        0x7f06017c -> :sswitch_0
        0x7f06017e -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0c00e6

    const v10, 0x7f0c00cc

    const/4 v9, 0x0

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 400
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 287
    :pswitch_1
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 288
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 289
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v7, v7, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowPowerView:I

    if-nez v7, :cond_1

    iget v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->batteryPowery:I

    const/16 v8, 0x1e

    if-ge v7, v8, :cond_1

    .line 290
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const v9, 0x7f0c019d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 294
    .restart local v2    # "intent":Landroid/content/Intent;
    const-class v7, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-virtual {v2, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 300
    :cond_3
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const v9, 0x7f0c0176

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/veclink/movnow_q2/util/ToastUtil;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 306
    .restart local v2    # "intent":Landroid/content/Intent;
    const-class v7, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    invoke-virtual {v2, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 310
    :pswitch_3
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 311
    new-instance v1, Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;-><init>(Landroid/content/Context;)V

    .line 312
    .local v1, "dialog":Lcom/veclink/movnow_q2/view/BaseRemindDialog;
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setTitle(Ljava/lang/String;)V

    .line 313
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const v8, 0x7f0c00cd

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setContent(Ljava/lang/String;)V

    .line 314
    new-instance v7, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;

    invoke-direct {v7, p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V

    invoke-virtual {v1, v7}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->show()V

    goto/16 :goto_0

    .line 339
    .end local v1    # "dialog":Lcom/veclink/movnow_q2/view/BaseRemindDialog;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v3, "intent2":Landroid/content/Intent;
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const-class v8, Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 341
    const-string v7, "fromMyDevice"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->startActivity(Landroid/content/Intent;)V

    .line 343
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->finish()V

    goto/16 :goto_0

    .line 348
    .end local v3    # "intent2":Landroid/content/Intent;
    :pswitch_4
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 349
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 352
    :cond_5
    new-instance v4, Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;-><init>(Landroid/content/Context;)V

    .line 353
    .local v4, "resetdialog":Lcom/veclink/movnow_q2/view/BaseRemindDialog;
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setTitle(Ljava/lang/String;)V

    .line 354
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const v8, 0x7f0c00d1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setContent(Ljava/lang/String;)V

    .line 355
    new-instance v7, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$6;

    invoke-direct {v7, p0, v4}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$6;-><init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V

    invoke-virtual {v4, v7}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 367
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->show()V

    goto/16 :goto_0

    .line 377
    .end local v4    # "resetdialog":Lcom/veclink/movnow_q2/view/BaseRemindDialog;
    :pswitch_5
    invoke-static {}, Lcom/veclink/movnow_q2/util/ButtonUtil;->isFindBtnFastClick()Z

    move-result v7

    if-nez v7, :cond_0

    .line 378
    new-instance v0, Lcom/veclink/bracelet/bletask/BleAppFindDevices;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    new-instance v8, Lcom/veclink/bracelet/bletask/BleCallBack;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, v9}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v7, v8}, Lcom/veclink/bracelet/bletask/BleAppFindDevices;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 379
    .local v0, "bleAppFindDevices":Lcom/veclink/bracelet/bletask/BleAppFindDevices;
    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleAppFindDevices;->work()V

    goto/16 :goto_0

    .line 382
    .end local v0    # "bleAppFindDevices":Lcom/veclink/bracelet/bletask/BleAppFindDevices;
    :pswitch_6
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->showSelectBandLightDialog()V

    goto/16 :goto_0

    .line 387
    :pswitch_7
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const-class v8, Lcom/veclink/movnow_q2/activity/PhotographicActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v6, "takePhotoIntent":Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 392
    .end local v6    # "takePhotoIntent":Landroid/content/Intent;
    :pswitch_8
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    const-class v8, Lcom/veclink/movnow_q2/activity/SetFamilyActivity;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v5, "setFamilyIntent":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x7f060171
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->setContentView(I)V

    .line 157
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    .line 158
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->initView()V

    .line 159
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->powerChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->powerChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse;)V
    .locals 4
    .param p1, "reponse"    # Lcom/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse;

    .prologue
    .line 424
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 425
    const-string v0, "DeleteBraceleteDataReponse"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse;->getError()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->delAllSportAndSleepData(Landroid/content/Context;)V

    .line 431
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 264
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onResume()V

    .line 265
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->tvCallRemindBySecond:Landroid/widget/TextView;

    const v1, 0x7f0c00d3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getCallRemindTime(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siUnbingDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c00ca

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siUnbingDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setRightText(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFirmwareUpdate:Lcom/veclink/movnow_q2/view/SettingsItemView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceRomVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setRightText(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->showDeviceFuntionView()V

    .line 274
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siUnbingDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;

    const v1, 0x7f0c00cb

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    goto :goto_0
.end method

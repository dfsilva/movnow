.class Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;
.super Ljava/lang/Object;
.source "SettingsActivityMyDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

.field final synthetic val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    iput-object p2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->dismiss()V

    .line 319
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 320
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$900(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->unBindDevice(Landroid/content/Context;)V

    .line 321
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siUnbingDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$1000(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Lcom/veclink/movnow_q2/view/SettingsItemView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setRightText(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siFirmwareUpdate:Lcom/veclink/movnow_q2/view/SettingsItemView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$800(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Lcom/veclink/movnow_q2/view/SettingsItemView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setRightText(Ljava/lang/String;)V

    .line 323
    const-string v1, ""

    invoke-static {v1}, Lcom/veclink/hw/devicetype/DeviceProductFactory;->createDeviceProduct(Ljava/lang/String;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    move-result-object v1

    sput-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    .line 324
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # invokes: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->showDeviceFuntionView()V
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$1100(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)V

    .line 325
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 326
    .local v0, "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncSleepData(Z)V

    .line 327
    invoke-virtual {v0, v3}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncStepData(Z)V

    .line 328
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->stopPlayRing()V

    .line 329
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->cancelAllRemind()V

    .line 330
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->siUnbingDevices:Lcom/veclink/movnow_q2/view/SettingsItemView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$1000(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Lcom/veclink/movnow_q2/view/SettingsItemView;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const v3, 0x7f0c00cb

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/SettingsItemView;->setLeftText(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$5;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->access$900(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/movnow_q2/util/StorageUtil;->delteAllRemindObject(Landroid/content/Context;)V

    .line 332
    sget-object v1, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/MainActivity;->finish()V

    .line 334
    return-void
.end method

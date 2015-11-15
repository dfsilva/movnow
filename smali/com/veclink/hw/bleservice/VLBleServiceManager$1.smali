.class final Lcom/veclink/hw/bleservice/VLBleServiceManager$1;
.super Ljava/lang/Object;
.source "VLBleServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/hw/bleservice/VLBleServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 62
    :try_start_0
    check-cast p2, Lcom/veclink/hw/bleservice/VLBleService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/veclink/hw/bleservice/VLBleService$LocalBinder;->getService()Lcom/veclink/hw/bleservice/VLBleService;

    move-result-object v1

    # setter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$002(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/VLBleService;

    .line 64
    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->vlBleServiceManager:Lcom/veclink/hw/bleservice/VLBleServiceManager;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$100()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->updatePostExceute()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->observer:Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$300()Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$000()Lcom/veclink/hw/bleservice/VLBleService;

    move-result-object v1

    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->observer:Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$300()Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/hw/bleservice/VLBleService;->registerObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 72
    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$000()Lcom/veclink/hw/bleservice/VLBleService;

    move-result-object v1

    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->isAutoReConnect:Z
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$400()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/veclink/hw/bleservice/VLBleService;->setAutoReConnect(Z)V

    .line 76
    :cond_0
    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->application:Landroid/app/Application;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$200()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->mDeviceAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->mDeviceAddress:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$000()Lcom/veclink/hw/bleservice/VLBleService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->initialize()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to initialize Bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$000()Lcom/veclink/hw/bleservice/VLBleService;

    move-result-object v1

    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->mDeviceAddress:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/hw/bleservice/VLBleService;->connect(Ljava/lang/String;)Z

    .line 83
    :cond_2
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/ClassCastException;
    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->vlBleServiceManager:Lcom/veclink/hw/bleservice/VLBleServiceManager;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$100()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v1

    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->application:Landroid/app/Application;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$200()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 67
    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->vlBleServiceManager:Lcom/veclink/hw/bleservice/VLBleServiceManager;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$100()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v1

    # getter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->application:Landroid/app/Application;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$200()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    invoke-virtual {v1, v2, v3}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->bindService(Landroid/app/Application;Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 87
    const/4 v0, 0x0

    # setter for: Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;
    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->access$002(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/VLBleService;

    .line 88
    return-void
.end method

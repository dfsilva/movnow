.class public Lcom/veclink/hw/bleservice/VLBleServiceManager;
.super Ljava/lang/Object;
.source "VLBleServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static application:Landroid/app/Application;

.field public static gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

.field private static isAutoReConnect:Z

.field private static mBleService:Lcom/veclink/hw/bleservice/VLBleService;

.field private static mDeviceAddress:Ljava/lang/String;

.field private static final mServiceConnection:Landroid/content/ServiceConnection;

.field private static observer:Lcom/veclink/hw/bleservice/DeviceReponseObserver;

.field private static vlBleServiceManager:Lcom/veclink/hw/bleservice/VLBleServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/veclink/hw/bleservice/VLBleServiceManager$1;

    invoke-direct {v0}, Lcom/veclink/hw/bleservice/VLBleServiceManager$1;-><init>()V

    sput-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000()Lcom/veclink/hw/bleservice/VLBleService;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/VLBleService;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;

    .prologue
    .line 31
    sput-object p0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    return-object p0
.end method

.method static synthetic access$100()Lcom/veclink/hw/bleservice/VLBleServiceManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->vlBleServiceManager:Lcom/veclink/hw/bleservice/VLBleServiceManager;

    return-object v0
.end method

.method static synthetic access$200()Landroid/app/Application;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->application:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$300()Lcom/veclink/hw/bleservice/DeviceReponseObserver;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->observer:Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->isAutoReConnect:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    sput-object p0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->vlBleServiceManager:Lcom/veclink/hw/bleservice/VLBleServiceManager;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;

    invoke-direct {v0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;-><init>()V

    sput-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->vlBleServiceManager:Lcom/veclink/hw/bleservice/VLBleServiceManager;

    .line 191
    :cond_0
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->vlBleServiceManager:Lcom/veclink/hw/bleservice/VLBleServiceManager;

    return-object v0
.end method

.method public static registerObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V
    .locals 1
    .param p0, "observer"    # Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    .prologue
    .line 207
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0, p0}, Lcom/veclink/hw/bleservice/VLBleService;->unRegisterObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    sput-object p0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->observer:Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    goto :goto_0
.end method

.method public static setAutoReConnect(Z)V
    .locals 1
    .param p0, "autoReConnect"    # Z

    .prologue
    .line 222
    sput-boolean p0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->isAutoReConnect:Z

    .line 223
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0, p0}, Lcom/veclink/hw/bleservice/VLBleService;->setAutoReConnect(Z)V

    .line 226
    :cond_0
    return-void
.end method

.method public static unRegisterObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V
    .locals 1
    .param p0, "observer"    # Lcom/veclink/hw/bleservice/DeviceReponseObserver;

    .prologue
    .line 215
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0, p0}, Lcom/veclink/hw/bleservice/VLBleService;->unRegisterObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method public acquirePowerLock()V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->acquirePowerLock()V

    .line 198
    :cond_0
    return-void
.end method

.method public bindService(Landroid/app/Application;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 107
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/veclink/bracelet/bletask/BleTask;->taskExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 109
    sput-object p1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->application:Landroid/app/Application;

    .line 110
    new-instance v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;

    invoke-direct {v1}, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;-><init>()V

    sput-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    .line 111
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->disconnect()V

    .line 113
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->close()V

    .line 115
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/veclink/hw/bleservice/VLBleService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "initIntent":Landroid/content/Intent;
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 118
    return-void
.end method

.method public bindService(Landroid/app/Application;Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "baseGattAttributes"    # Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    .prologue
    .line 94
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/veclink/bracelet/bletask/BleTask;->taskExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 95
    sput-object p1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->application:Landroid/app/Application;

    .line 96
    sput-object p2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->gattAttributes:Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;

    .line 97
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->disconnect()V

    .line 99
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->close()V

    .line 101
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/veclink/hw/bleservice/VLBleService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "initIntent":Landroid/content/Intent;
    sget-object v1, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 104
    return-void
.end method

.method public cancelAllBleTask()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/veclink/bracelet/bletask/BleTask;->taskExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/veclink/bracelet/bletask/BleTask;->taskExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 165
    :cond_0
    return-void
.end method

.method public disConnectDevice()V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->disconnect()V

    .line 151
    :cond_0
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->application:Landroid/app/Application;

    invoke-virtual {p0, v0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 152
    return-void
.end method

.method public flagDoUpdateNotDoOtherTask()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    sput-boolean v0, Lcom/veclink/bracelet/bletask/BleTask;->updateing:Z

    .line 172
    return-void
.end method

.method public getVLBleService()Lcom/veclink/hw/bleservice/VLBleService;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    return-object v0
.end method

.method public reConnectDevice()V
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->application:Landroid/app/Application;

    invoke-virtual {p0, v0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 156
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->application:Landroid/app/Application;

    invoke-virtual {p0, v0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->bindService(Landroid/app/Application;)V

    .line 157
    return-void
.end method

.method public releasePowerLock()V
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->releasePowerLock()V

    .line 204
    :cond_0
    return-void
.end method

.method public unBindService(Landroid/app/Application;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    const/4 v3, 0x0

    .line 123
    sget-object v2, Lcom/veclink/bracelet/bletask/BleTask;->taskExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    .line 124
    sget-object v2, Lcom/veclink/bracelet/bletask/BleTask;->taskExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 125
    sput-object v3, Lcom/veclink/bracelet/bletask/BleTask;->taskExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 127
    :cond_0
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    if-eqz v2, :cond_1

    .line 130
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->setAutoReConnect(Z)V

    .line 131
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V

    .line 132
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v2}, Lcom/veclink/hw/bleservice/VLBleService;->disconnect()V

    .line 133
    sget-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v2}, Lcom/veclink/hw/bleservice/VLBleService;->close()V

    .line 134
    const/4 v2, 0x0

    sput-object v2, Lcom/veclink/hw/bleservice/VLBleServiceManager;->mBleService:Lcom/veclink/hw/bleservice/VLBleService;

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/veclink/hw/bleservice/VLBleService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updatePostExceute()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    sput-boolean v0, Lcom/veclink/bracelet/bletask/BleTask;->updateing:Z

    .line 179
    return-void
.end method

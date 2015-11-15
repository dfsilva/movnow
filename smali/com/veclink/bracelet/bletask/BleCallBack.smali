.class public Lcom/veclink/bracelet/bletask/BleCallBack;
.super Ljava/lang/Object;
.source "BleCallBack.java"


# static fields
.field public static final CANNOT_CONNECT_DEVICES:I = 0x3ef

.field public static final CANNOT_SUPPPORT_OTA_UPDATE:I = 0x3f0

.field public static final DEVICE_CONNECTED:I = 0x3ed

.field public static final DEVICE_DISCONNECTED:I = 0x3ec

.field public static final TASK_FAILED:I = 0x3e9

.field public static final TASK_FINISH:I = 0x3eb

.field public static final TASK_PROGRESS:I = 0x3ea

.field public static final TASK_START:I = 0x3e8

.field public static final TASK_SYNCSTEPDATA_FINISH:I = 0x3f1

.field public static final TASK_TIMEOUT:I = 0x3ee


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleCallBack;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "resultObject"    # Ljava/lang/Object;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleCallBack;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleCallBack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleCallBack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public getmHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleCallBack;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onFailed(Ljava/lang/Object;)V
    .locals 0
    .param p1, "paramObject"    # Ljava/lang/Object;

    .prologue
    .line 42
    return-void
.end method

.method public onFinish(Ljava/lang/Object;)V
    .locals 0
    .param p1, "paramObject"    # Ljava/lang/Object;

    .prologue
    .line 46
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 50
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public sendCanNotConnectDeviceMessage()V
    .locals 2

    .prologue
    .line 90
    const/16 v0, 0x3ef

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendMessage(ILjava/lang/Object;)V

    .line 91
    return-void
.end method

.method public sendCanNotSupportOTAUpdate()V
    .locals 2

    .prologue
    .line 94
    const/16 v0, 0x3f0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendMessage(ILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public sendOnDeviceConnectedMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "resultObject"    # Ljava/lang/Object;

    .prologue
    .line 81
    const/16 v0, 0x3ed

    invoke-direct {p0, v0, p1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendMessage(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public sendOnDeviceDisConnectedMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "resultObject"    # Ljava/lang/Object;

    .prologue
    .line 76
    const/16 v0, 0x3ec

    invoke-direct {p0, v0, p1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendMessage(ILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method public sendOnFialedMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "resultObject"    # Ljava/lang/Object;

    .prologue
    .line 57
    const/16 v0, 0x3e9

    invoke-direct {p0, v0, p1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendMessage(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public sendOnFinishMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "resultObject"    # Ljava/lang/Object;

    .prologue
    .line 62
    const/16 v0, 0x3eb

    invoke-direct {p0, v0, p1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendMessage(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public sendOnProgressMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "resultObject"    # Ljava/lang/Object;

    .prologue
    .line 66
    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendMessage(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public sendOnStartMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "resultObject"    # Ljava/lang/Object;

    .prologue
    .line 71
    const/16 v0, 0x3e8

    invoke-direct {p0, v0, p1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendMessage(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public sendOnSyncStepDataFinish(Ljava/lang/Object;)V
    .locals 1
    .param p1, "resultObject"    # Ljava/lang/Object;

    .prologue
    .line 98
    const/16 v0, 0x3f1

    invoke-direct {p0, v0, p1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendMessage(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public sendOnTaskTimeOutMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "resultObject"    # Ljava/lang/Object;

    .prologue
    .line 85
    const/16 v0, 0x3ee

    invoke-direct {p0, v0, p1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendMessage(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public setmHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleCallBack;->mHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method

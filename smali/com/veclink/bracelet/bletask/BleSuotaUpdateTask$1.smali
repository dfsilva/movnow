.class Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;
.super Ljava/lang/Thread;
.source "BleSuotaUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;


# direct methods
.method constructor <init>(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x1f4

    const/4 v7, 0x0

    .line 53
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getVLBleService()Lcom/veclink/hw/bleservice/VLBleService;

    move-result-object v1

    sput-object v1, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    .line 54
    sget-object v1, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    iget-object v1, v1, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    iget-object v1, v1, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnStartMessage(Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    invoke-virtual {v1}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->registerObserver()V

    .line 60
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    new-instance v2, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    sget-object v3, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mBluetoothLeService:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->filePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->access$100(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    iget-object v5, v5, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v6, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->mDeviceAddress:Ljava/lang/String;
    invoke-static {v6}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->access$200(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;-><init>(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;Lcom/veclink/bracelet/bletask/BleCallBack;Ljava/lang/String;)V

    # setter for: Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;
    invoke-static {v1, v2}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->access$002(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;)Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    .line 61
    const/4 v1, 0x3

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 62
    .local v0, "sendReadyUpdateCmdArray":[B
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    invoke-virtual {v1, v0}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->sendCmdToBleDevice([B)V

    .line 63
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->waitResponse(I)Z

    .line 64
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->canUpdate:Z
    invoke-static {v1}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->access$300(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "\u7a0b\u5e8f\u5f00\u59cb\u6267\u884c\u5347\u7ea7"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;
    invoke-static {v1}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->access$000(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->onServicesReady(Z)V

    .line 67
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    # invokes: Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->waitSleep(I)V
    invoke-static {v1, v8}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->access$400(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;I)V

    .line 68
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;
    invoke-static {v1}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->access$000(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->access$100(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaReadImageData(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    # invokes: Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->waitSleep(I)V
    invoke-static {v1, v8}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->access$400(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;I)V

    .line 70
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->updateHelper:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;
    invoke-static {v1}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->access$000(Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;)Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->suotaUpdateStart()V

    goto :goto_0

    .line 73
    :cond_1
    const-string v1, "\u53d1\u9001\u51c6\u5907\u5347\u7ea7\u547d\u4ee4\u6ca1\u6709\u56de\u5e94\uff0c\u5347\u7ea7\u5931\u8d25"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;

    iget-object v1, v1, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 61
    nop

    :array_0
    .array-data 1
        0x5at
        0x11t
        0x0t
    .end array-data
.end method

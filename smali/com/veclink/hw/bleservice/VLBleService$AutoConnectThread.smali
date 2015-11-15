.class Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
.super Ljava/lang/Thread;
.source "VLBleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/hw/bleservice/VLBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoConnectThread"
.end annotation


# instance fields
.field private stopTask:Z

.field final synthetic this$0:Lcom/veclink/hw/bleservice/VLBleService;


# direct methods
.method private constructor <init>(Lcom/veclink/hw/bleservice/VLBleService;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/hw/bleservice/VLBleService;Lcom/veclink/hw/bleservice/VLBleService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/hw/bleservice/VLBleService;
    .param p2, "x1"    # Lcom/veclink/hw/bleservice/VLBleService$1;

    .prologue
    .line 792
    invoke-direct {p0, p1}, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;-><init>(Lcom/veclink/hw/bleservice/VLBleService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 796
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const/4 v2, 0x0

    # setter for: Lcom/veclink/hw/bleservice/VLBleService;->onFindSupportService:Z
    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$102(Lcom/veclink/hw/bleservice/VLBleService;Z)Z

    .line 797
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->onFindSupportService:Z
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$100(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->stopTask:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->autoReConnect:Z
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$400(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    const-string v1, "vlbservice \u6b63\u5728\u5c1d\u8bd5\u91cd\u8fde\u8bbe\u5907"

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 801
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 813
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const/4 v2, 0x0

    # setter for: Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$602(Lcom/veclink/hw/bleservice/VLBleService;Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    .line 814
    return-void

    .line 802
    :cond_2
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v2}, Lcom/veclink/hw/bleservice/VLBleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/hw/bleservice/VLBleService;->connect(Ljava/lang/String;)Z

    .line 804
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->onFindSupportService:Z
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$100(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->sendDeviceDisConnectMsg()V
    invoke-static {v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$200(Lcom/veclink/hw/bleservice/VLBleService;)V

    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopTask()V
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->stopTask:Z

    .line 818
    return-void
.end method

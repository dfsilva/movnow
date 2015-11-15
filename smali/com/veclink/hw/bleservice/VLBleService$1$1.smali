.class Lcom/veclink/hw/bleservice/VLBleService$1$1;
.super Ljava/lang/Object;
.source "VLBleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/hw/bleservice/VLBleService$1;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/hw/bleservice/VLBleService$1;


# direct methods
.method constructor <init>(Lcom/veclink/hw/bleservice/VLBleService$1;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/veclink/hw/bleservice/VLBleService$1$1;->this$1:Lcom/veclink/hw/bleservice/VLBleService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1$1;->this$1:Lcom/veclink/hw/bleservice/VLBleService$1;

    iget-object v0, v0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->onFindSupportService:Z
    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleService;->access$100(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const-string v0, "10\u79d2\u540e\u6ca1\u53d1\u73b0\u670d\u52a1\uff0c\u81ea\u52a8\u65ad\u5f00"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1$1;->this$1:Lcom/veclink/hw/bleservice/VLBleService$1;

    iget-object v0, v0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->disconnect()V

    .line 141
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1$1;->this$1:Lcom/veclink/hw/bleservice/VLBleService$1;

    iget-object v0, v0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->close()V

    .line 142
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1$1;->this$1:Lcom/veclink/hw/bleservice/VLBleService$1;

    iget-object v0, v0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->sendDeviceDisConnectMsg()V
    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleService;->access$200(Lcom/veclink/hw/bleservice/VLBleService;)V

    .line 144
    :cond_0
    return-void
.end method

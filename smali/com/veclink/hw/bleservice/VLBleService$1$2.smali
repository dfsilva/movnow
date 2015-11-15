.class Lcom/veclink/hw/bleservice/VLBleService$1$2;
.super Ljava/lang/Object;
.source "VLBleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/hw/bleservice/VLBleService$1;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/hw/bleservice/VLBleService$1;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/veclink/hw/bleservice/VLBleService$1;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/veclink/hw/bleservice/VLBleService$1$2;->this$1:Lcom/veclink/hw/bleservice/VLBleService$1;

    iput-object p2, p0, Lcom/veclink/hw/bleservice/VLBleService$1$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput p3, p0, Lcom/veclink/hw/bleservice/VLBleService$1$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    new-instance v0, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;

    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$1$2;->this$1:Lcom/veclink/hw/bleservice/VLBleService$1;

    iget-object v1, v1, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/veclink/bracelet/bletask/BleCallBack;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 189
    .local v0, "appConfirmBindSuccess":Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;
    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleAppConfirmBindSuccess;->work()V

    .line 190
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$1$2;->this$1:Lcom/veclink/hw/bleservice/VLBleService$1;

    iget-object v1, v1, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget v3, p0, Lcom/veclink/hw/bleservice/VLBleService$1$2;->val$status:I

    invoke-virtual {v1, v2, v3}, Lcom/veclink/hw/bleservice/VLBleService;->deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 191
    return-void
.end method

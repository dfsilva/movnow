.class Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;
.super Ljava/lang/Object;
.source "BleScanDeviceTask.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/bracelet/bletask/BleScanDeviceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;


# direct methods
.method constructor <init>(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 58
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$500(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;-><init>(Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

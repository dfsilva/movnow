.class Lcom/veclink/bracelet/bletask/BleScanDeviceTask$2;
.super Ljava/lang/Object;
.source "BleScanDeviceTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->scanLeDevice(Z)V
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
    .line 148
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$2;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$2;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    const/4 v1, 0x0

    # setter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mScanning:Z
    invoke-static {v0, v1}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$602(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;Z)Z

    .line 152
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$2;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$800(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$2;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    invoke-static {v1}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$700(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 153
    return-void
.end method

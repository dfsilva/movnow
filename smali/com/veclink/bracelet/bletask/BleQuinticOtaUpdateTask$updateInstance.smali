.class Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$updateInstance;
.super Lcom/quintic/libota/BluetoothLeInterface;
.source "BleQuinticOtaUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "updateInstance"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;


# direct methods
.method private constructor <init>(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$updateInstance;->this$0:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;

    invoke-direct {p0}, Lcom/quintic/libota/BluetoothLeInterface;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;
    .param p2, "x1"    # Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$1;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$updateInstance;-><init>(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;)V

    return-void
.end method


# virtual methods
.method public bleInterfaceInit(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/quintic/libota/BluetoothLeInterface;->bleInterfaceInit(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    return v0
.end method

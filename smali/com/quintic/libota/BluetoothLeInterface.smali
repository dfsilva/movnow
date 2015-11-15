.class public abstract Lcom/quintic/libota/BluetoothLeInterface;
.super Ljava/lang/Object;
.source "BluetoothLeInterface.java"


# instance fields
.field protected mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field protected mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field protected mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field protected mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 9
    iput-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 10
    iput-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 11
    iput-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 7
    return-void
.end method


# virtual methods
.method public bleInterfaceInit()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method public bleInterfaceInit(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 4
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v1, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 28
    :goto_0
    return v1

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 19
    iget-object v2, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v3, Lcom/quintic/libota/bleGlobalVariables;->UUID_QUINTIC_OTA_SERVICE:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 20
    .local v0, "bluetoothGattService":Landroid/bluetooth/BluetoothGattService;
    if-nez v0, :cond_1

    .line 22
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 25
    :cond_1
    sget-object v1, Lcom/quintic/libota/bleGlobalVariables;->UUID_OTA_NOTIFY_CHARACTERISTIC:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    iput-object v1, p0, Lcom/quintic/libota/BluetoothLeInterface;->mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 26
    sget-object v1, Lcom/quintic/libota/bleGlobalVariables;->UUID_OTA_WRITE_CHARACTERISTIC:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    iput-object v1, p0, Lcom/quintic/libota/BluetoothLeInterface;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 28
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readCharacteristic()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_1

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/quintic/libota/BluetoothLeInterface;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    goto :goto_0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    goto :goto_0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 1
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "enabled"    # Z

    .prologue
    .line 84
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 1
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enabled"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setCharacteristicNotification(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/quintic/libota/BluetoothLeInterface;->mNotifyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .locals 1
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "data"    # [B

    .prologue
    .line 72
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 75
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .locals 1
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "data"    # [B

    .prologue
    .line 54
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_1
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 57
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeCharacteristic([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 32
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 35
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/quintic/libota/BluetoothLeInterface;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeDescripter(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)Z
    .locals 1
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "value"    # [B

    .prologue
    .line 89
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    .line 91
    :cond_1
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 92
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeDescripter(Landroid/bluetooth/BluetoothGattDescriptor;[B)Z
    .locals 1
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "value"    # [B

    .prologue
    .line 48
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    .line 50
    :cond_1
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 51
    iget-object v0, p0, Lcom/quintic/libota/BluetoothLeInterface;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    goto :goto_0
.end method

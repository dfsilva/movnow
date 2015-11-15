.class public interface abstract Lcom/veclink/hw/bleservice/DeviceReponseObserver;
.super Ljava/lang/Object;
.source "DeviceReponseObserver.java"


# virtual methods
.method public abstract deviceConnected()V
.end method

.method public abstract deviceDisConnect()V
.end method

.method public abstract deviceOnCharacteristicChange(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end method

.method public abstract deviceOnCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end method

.method public abstract deviceOnCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end method

.method public abstract deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end method

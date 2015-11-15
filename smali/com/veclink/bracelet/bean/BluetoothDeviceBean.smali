.class public Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
.super Ljava/lang/Object;
.source "BluetoothDeviceBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/veclink/bracelet/bean/BluetoothDeviceBean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1a6d0c1fc3816adbL


# instance fields
.field private device_address:Ljava/lang/String;

.field private device_name:Ljava/lang/String;

.field private device_rssi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "device_address"    # Ljava/lang/String;
    .param p2, "device_name"    # Ljava/lang/String;
    .param p3, "device_rssi"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->device_address:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->device_name:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->device_rssi:I

    .line 37
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)I
    .locals 2
    .param p1, "other"    # Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    .prologue
    .line 59
    iget v0, p0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->device_rssi:I

    iget v1, p1, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->device_rssi:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->compareTo(Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)I

    move-result v0

    return v0
.end method

.method public getDevice_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->device_address:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->device_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_rssi()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->device_rssi:I

    return v0
.end method

.method public setDevice_address(Ljava/lang/String;)V
    .locals 0
    .param p1, "device_address"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->device_address:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDevice_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "device_name"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->device_name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setDevice_rssi(I)V
    .locals 0
    .param p1, "device_rssi"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->device_rssi:I

    .line 55
    return-void
.end method

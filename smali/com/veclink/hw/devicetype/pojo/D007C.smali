.class public Lcom/veclink/hw/devicetype/pojo/D007C;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "D007C.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D007C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D007C;->canShowLightView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D007C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D007C;->canShowPowerView:I

    .line 22
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/D007C;->updateFirewareWay:I

    .line 24
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/D007C;->bindDeviceWay:I

    .line 25
    return-void
.end method

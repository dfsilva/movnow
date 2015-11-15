.class public Lcom/veclink/hw/devicetype/pojo/D007A;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "D007A.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D007A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D007A;->canShowLightView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D007A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D007A;->canShowPowerView:I

    .line 22
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/D007A;->updateFirewareWay:I

    .line 24
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/D007A;->bindDeviceWay:I

    .line 25
    return-void
.end method

.class public Lcom/veclink/hw/devicetype/pojo/W006A;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W006A.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W006A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W006A;->canShowTakePhotoView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W006A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W006A;->canShowLightView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W006A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W006A;->canShowPowerView:I

    .line 24
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W006A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W006A;->canShowKeptView:I

    .line 26
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W006A;->updateFirewareWay:I

    .line 28
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W006A;->bindDeviceWay:I

    .line 29
    return-void
.end method

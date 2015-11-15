.class public Lcom/veclink/hw/devicetype/pojo/W002B;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W002B.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 19
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->canShowTakePhotoView:I

    .line 21
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->canShowLightView:I

    .line 23
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->canShowKeptView:I

    .line 25
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->canShowPowerView:I

    .line 27
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->canShowSleepModule:I

    .line 29
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->updateFirewareWay:I

    .line 31
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002B;->bindDeviceWay:I

    .line 32
    return-void
.end method

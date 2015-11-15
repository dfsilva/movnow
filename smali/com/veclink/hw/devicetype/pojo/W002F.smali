.class public Lcom/veclink/hw/devicetype/pojo/W002F;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W002F.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002F;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002F;->canShowTakePhotoView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002F;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002F;->canShowLightView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002F;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002F;->canShowPowerView:I

    .line 24
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002F;->updateFirewareWay:I

    .line 26
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002F;->bindDeviceWay:I

    .line 27
    return-void
.end method

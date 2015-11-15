.class public Lcom/veclink/hw/devicetype/pojo/D001D;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "D001D.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->canShowTakePhotoView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->canShowLightView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->canShowKeptView:I

    .line 24
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->canShowSleepModule:I

    .line 26
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->canShowPowerView:I

    .line 28
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->updateFirewareWay:I

    .line 30
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/D001D;->bindDeviceWay:I

    .line 32
    return-void
.end method

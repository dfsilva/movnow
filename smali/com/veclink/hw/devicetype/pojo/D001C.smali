.class public Lcom/veclink/hw/devicetype/pojo/D001C;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "D001C.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 17
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->canShowRemindModule:I

    .line 19
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->canShowTakePhotoView:I

    .line 21
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->canShowLightView:I

    .line 23
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->canShowKeptView:I

    .line 25
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->canShowFindDeviceView:I

    .line 27
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->canShowCallRemindView:I

    .line 29
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->canShowSmsRemindView:I

    .line 31
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->canShowPowerView:I

    .line 33
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->updateFirewareWay:I

    .line 35
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/D001C;->bindDeviceWay:I

    .line 36
    return-void
.end method

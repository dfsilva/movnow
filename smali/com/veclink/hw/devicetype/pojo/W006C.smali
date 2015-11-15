.class public Lcom/veclink/hw/devicetype/pojo/W006C;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W006C.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->canShowRemindModule:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->canShowTakePhotoView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->canShowLightView:I

    .line 24
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->canShowPowerView:I

    .line 26
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->canShowKeptView:I

    .line 28
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->updateFirewareWay:I

    .line 30
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W006C;->bindDeviceWay:I

    .line 31
    return-void
.end method

.class public Lcom/veclink/hw/devicetype/pojo/W002C;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W002C.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 19
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002C;->canShowTakePhotoView:I

    .line 21
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002C;->canShowKeptView:I

    .line 23
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002C;->canShowLightView:I

    .line 25
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002C;->updateFirewareWay:I

    .line 27
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002C;->bindDeviceWay:I

    .line 28
    return-void
.end method

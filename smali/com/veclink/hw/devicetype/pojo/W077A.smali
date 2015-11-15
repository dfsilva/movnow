.class public Lcom/veclink/hw/devicetype/pojo/W077A;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W077A.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W077A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W077A;->canShowTakePhotoView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W077A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W077A;->canShowKeptView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W077A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W077A;->canShowLightView:I

    .line 24
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W077A;->updateFirewareWay:I

    .line 26
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W077A;->bindDeviceWay:I

    .line 27
    return-void
.end method

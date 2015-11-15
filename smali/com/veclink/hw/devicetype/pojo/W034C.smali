.class public Lcom/veclink/hw/devicetype/pojo/W034C;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W034C.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W034C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W034C;->canShowLightView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W034C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W034C;->canShowFindDeviceView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W034C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W034C;->canShowPowerView:I

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W034C;->updateFirewareWay:I

    .line 27
    return-void
.end method

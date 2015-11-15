.class public Lcom/veclink/hw/devicetype/pojo/W007G;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W007G.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W007G;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007G;->canShowLightView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W007G;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007G;->canShowFindDeviceView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W007G;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007G;->canShowPowerView:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007G;->updateFirewareWay:I

    .line 25
    return-void
.end method

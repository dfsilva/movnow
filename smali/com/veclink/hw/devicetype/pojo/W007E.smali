.class public Lcom/veclink/hw/devicetype/pojo/W007E;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W007E.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W007E;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007E;->canShowLightView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W007E;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007E;->canShowFindDeviceView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W007E;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007E;->canShowPowerView:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007E;->updateFirewareWay:I

    .line 25
    return-void
.end method

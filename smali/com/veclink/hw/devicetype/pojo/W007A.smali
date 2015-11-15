.class public Lcom/veclink/hw/devicetype/pojo/W007A;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W007A.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W007A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007A;->canShowLightView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W007A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007A;->canShowFindDeviceView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W007A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007A;->canShowPowerView:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W007A;->updateFirewareWay:I

    .line 25
    return-void
.end method

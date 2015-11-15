.class public Lcom/veclink/hw/devicetype/pojo/W002G;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W002G.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002G;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002G;->canShowLightView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002G;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002G;->canShowPowerView:I

    .line 22
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002G;->updateFirewareWay:I

    .line 24
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002G;->bindDeviceWay:I

    .line 25
    return-void
.end method

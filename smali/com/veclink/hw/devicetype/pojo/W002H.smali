.class public Lcom/veclink/hw/devicetype/pojo/W002H;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W002H.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002H;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002H;->canShowLightView:I

    .line 20
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002H;->updateFirewareWay:I

    .line 22
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002H;->bindDeviceWay:I

    .line 23
    return-void
.end method

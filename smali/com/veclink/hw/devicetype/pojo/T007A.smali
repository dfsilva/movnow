.class public Lcom/veclink/hw/devicetype/pojo/T007A;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "T007A.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/T007A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/T007A;->canShowLightView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/T007A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/T007A;->canShowKeptView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/T007A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/T007A;->canShowPowerView:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/T007A;->updateFirewareWay:I

    .line 25
    return-void
.end method

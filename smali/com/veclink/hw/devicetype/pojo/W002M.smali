.class public Lcom/veclink/hw/devicetype/pojo/W002M;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W002M.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002M;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002M;->canShowPowerView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002M;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002M;->canShowLightView:I

    .line 24
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002M;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002M;->canShowKeptView:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002M;->updateFirewareWay:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/hw/devicetype/pojo/W002M;->controlPlayer:Z

    .line 30
    return-void
.end method

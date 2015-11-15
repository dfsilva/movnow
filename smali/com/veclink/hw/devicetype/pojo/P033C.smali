.class public Lcom/veclink/hw/devicetype/pojo/P033C;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "P033C.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033C;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033C;->canShowLightView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033C;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033C;->canPay:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033C;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033C;->canCharge:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033C;->updateFirewareWay:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033C;->bindDeviceWay:I

    .line 28
    return-void
.end method

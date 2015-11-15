.class public Lcom/veclink/hw/devicetype/pojo/P033A;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "P033A.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033A;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033A;->canShowLightView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033A;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033A;->canPay:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033A;->updateFirewareWay:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033A;->bindDeviceWay:I

    .line 26
    return-void
.end method

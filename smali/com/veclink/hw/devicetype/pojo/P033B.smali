.class public Lcom/veclink/hw/devicetype/pojo/P033B;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "P033B.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->canShowSmsRemindView:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->canShowKeptView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->canShowTakePhotoView:I

    .line 24
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->canShowFindDeviceView:I

    .line 26
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->canShowLightView:I

    .line 28
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->canPay:I

    .line 30
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->canCharge:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->updateFirewareWay:I

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033B;->bindDeviceWay:I

    .line 36
    return-void
.end method

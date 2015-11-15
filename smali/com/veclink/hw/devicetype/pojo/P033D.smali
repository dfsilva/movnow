.class public Lcom/veclink/hw/devicetype/pojo/P033D;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "P033D.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->canShowRemindModule:I

    .line 20
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->canShowLightView:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->canShowFindDeviceView:I

    .line 24
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->canShowKeptView:I

    .line 26
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->canShowCallRemindView:I

    .line 28
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->canShowSmsRemindView:I

    .line 31
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->canPay:I

    .line 33
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->canCharge:I

    .line 35
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->updateFirewareWay:I

    .line 37
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/P033D;->bindDeviceWay:I

    .line 39
    return-void
.end method

.class public Lcom/veclink/hw/devicetype/pojo/W002N;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W002N.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 8
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->canShowLightView:I

    .line 10
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->canShowPowerView:I

    .line 12
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->canShowKeptView:I

    .line 14
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->canShowRemindModule:I

    .line 16
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->canShowFindDeviceView:I

    .line 18
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->canShowTakePhotoView:I

    .line 20
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->updateFirewareWay:I

    .line 22
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W002N;->bindDeviceWay:I

    .line 24
    return-void
.end method

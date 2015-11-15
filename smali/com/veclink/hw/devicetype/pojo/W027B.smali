.class public Lcom/veclink/hw/devicetype/pojo/W027B;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W027B.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 19
    invoke-virtual {p0}, Lcom/veclink/hw/devicetype/pojo/W027B;->setAllModueInVisibleExceptStep()V

    .line 20
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W027B;->canShowSleepModule:I

    .line 21
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W027B;->canShowRemindModule:I

    .line 22
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W027B;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W027B;->canShowFamilyNumber:I

    .line 23
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W027B;->canShowKeptView:I

    .line 24
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W027B;->canShowTakePhotoView:I

    .line 25
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/W027B;->canShowSmsRemindView:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W027B;->updateFirewareWay:I

    .line 27
    return-void
.end method

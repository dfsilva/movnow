.class public Lcom/veclink/hw/devicetype/pojo/W034A;
.super Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.source "W034A.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;-><init>()V

    .line 17
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/W034A;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W034A;->canShowHeartReateModule:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/W034A;->updateFirewareWay:I

    .line 20
    return-void
.end method

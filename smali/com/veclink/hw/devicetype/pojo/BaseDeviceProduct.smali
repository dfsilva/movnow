.class public Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
.super Ljava/lang/Object;
.source "BaseDeviceProduct.java"


# static fields
.field public static final CLICK_BIND_DEVICE_WAY:I = 0x1

.field public static final DIALOG_UPDATE_WAY:I = 0x1

.field public static final QUNTIC_UPDATE_WAY:I = 0x2

.field public static final VECLINK_UPDATE_WAY:I


# instance fields
.field public INVISIBLE:I

.field public VISIBLE:I

.field public bindDeviceWay:I

.field public canCharge:I

.field public canPay:I

.field public canShowCallRemindView:I

.field public canShowFamilyNumber:I

.field public canShowFindDeviceView:I

.field public canShowHeartReateModule:I

.field public canShowKeptView:I

.field public canShowLightView:I

.field public canShowPowerView:I

.field public canShowRemindModule:I

.field public canShowSleepModule:I

.field public canShowSmsRemindView:I

.field public canShowSportType:I

.field public canShowStepModule:I

.field public canShowTakePhotoView:I

.field public canShowUseInstructions:I

.field public controlPlayer:Z

.field public updateFirewareWay:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    .line 137
    const/16 v0, 0x8

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    .line 142
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowStepModule:I

    .line 144
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowSleepModule:I

    .line 146
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowRemindModule:I

    .line 148
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowTakePhotoView:I

    .line 150
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowLightView:I

    .line 152
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowKeptView:I

    .line 154
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowFindDeviceView:I

    .line 156
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowCallRemindView:I

    .line 158
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowSmsRemindView:I

    .line 160
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowPowerView:I

    .line 162
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowHeartReateModule:I

    .line 164
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowSportType:I

    .line 166
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowUseInstructions:I

    .line 168
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowFamilyNumber:I

    .line 170
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canPay:I

    .line 172
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canCharge:I

    .line 174
    iput v1, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->updateFirewareWay:I

    .line 176
    return-void
.end method


# virtual methods
.method public setAllModueInVisibleExceptStep()V
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->VISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowStepModule:I

    .line 182
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowSleepModule:I

    .line 184
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowRemindModule:I

    .line 186
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowTakePhotoView:I

    .line 188
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowLightView:I

    .line 190
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowKeptView:I

    .line 192
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowFindDeviceView:I

    .line 194
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowCallRemindView:I

    .line 196
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowSmsRemindView:I

    .line 198
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowPowerView:I

    .line 200
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowHeartReateModule:I

    .line 202
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowSportType:I

    .line 204
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowUseInstructions:I

    .line 206
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowFamilyNumber:I

    .line 208
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canPay:I

    .line 210
    iget v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->INVISIBLE:I

    iput v0, p0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canCharge:I

    .line 211
    return-void
.end method

.class public Lcom/veclink/bracelet/bean/BleUserInfoBean;
.super Ljava/lang/Object;
.source "BleUserInfoBean.java"


# instance fields
.field public age:I

.field public distanceUnit:I

.field public height:F

.field public keptOnOff:I

.field public motionMode:I

.field public sex:I

.field public targetStepNumber:I

.field public wearPosition:I

.field public weight:F


# direct methods
.method public constructor <init>(IIIIIFFII)V
    .locals 0
    .param p1, "targetStepNumber"    # I
    .param p2, "wearPosition"    # I
    .param p3, "motionMode"    # I
    .param p4, "sex"    # I
    .param p5, "age"    # I
    .param p6, "weight"    # F
    .param p7, "height"    # F
    .param p8, "distanceUnit"    # I
    .param p9, "keptOnOff"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->targetStepNumber:I

    .line 61
    iput p2, p0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->wearPosition:I

    .line 62
    iput p3, p0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->motionMode:I

    .line 63
    iput p4, p0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->sex:I

    .line 64
    iput p5, p0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->age:I

    .line 65
    iput p6, p0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->weight:F

    .line 66
    iput p7, p0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->height:F

    .line 67
    iput p8, p0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->distanceUnit:I

    .line 68
    iput p9, p0, Lcom/veclink/bracelet/bean/BleUserInfoBean;->keptOnOff:I

    .line 69
    return-void
.end method

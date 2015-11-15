.class public Lcom/veclink/movnow_q2/util/SleepStatus;
.super Ljava/lang/Object;
.source "SleepStatus.java"


# static fields
.field public static final DEEP_SLEEP:Ljava/lang/String; = "0"

.field public static final LIGHT_SLEEP:Ljava/lang/String; = "1"


# instance fields
.field public deepTimes:I

.field public lightTimes:I

.field public totalTimes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeepTimes()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/veclink/movnow_q2/util/SleepStatus;->deepTimes:I

    return v0
.end method

.method public getLightTimes()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/veclink/movnow_q2/util/SleepStatus;->lightTimes:I

    return v0
.end method

.method public getTotalTimes()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/veclink/movnow_q2/util/SleepStatus;->totalTimes:I

    return v0
.end method

.method public setDeepTimes(I)V
    .locals 0
    .param p1, "deepTimes"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/veclink/movnow_q2/util/SleepStatus;->deepTimes:I

    .line 26
    return-void
.end method

.method public setLightTimes(I)V
    .locals 0
    .param p1, "lightTimes"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/veclink/movnow_q2/util/SleepStatus;->lightTimes:I

    .line 32
    return-void
.end method

.method public setTotalTimes(I)V
    .locals 0
    .param p1, "totalTimes"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/veclink/movnow_q2/util/SleepStatus;->totalTimes:I

    .line 20
    return-void
.end method

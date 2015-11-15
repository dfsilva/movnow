.class public Lcom/veclink/bracelet/bean/BleDrinkRemindParam;
.super Lcom/veclink/bracelet/bean/BaseRemindParam;
.source "BleDrinkRemindParam.java"


# instance fields
.field public hour:I

.field public minute:I

.field public remindCount:I

.field public remindCyle:I

.field public remindRunningTime:I

.field public remindSerialNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/veclink/bracelet/bean/BaseRemindParam;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "remindSerialNumber"    # I
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "remindRunningTime"    # I
    .param p5, "remindCyle"    # I
    .param p6, "remindCount"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/veclink/bracelet/bean/BaseRemindParam;-><init>()V

    .line 46
    iput p1, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindSerialNumber:I

    .line 47
    iput p2, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->hour:I

    .line 48
    iput p3, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->minute:I

    .line 49
    iput p4, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindRunningTime:I

    .line 50
    iput p5, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindCyle:I

    .line 51
    iput p6, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindCount:I

    .line 52
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "remindSerialNumber"    # I
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "remindRunningTime"    # I
    .param p5, "remindCyle"    # I
    .param p6, "remindCount"    # I
    .param p7, "openflag"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/veclink/bracelet/bean/BaseRemindParam;-><init>()V

    .line 56
    iput p1, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindSerialNumber:I

    .line 57
    iput p2, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->hour:I

    .line 58
    iput p3, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->minute:I

    .line 59
    iput p4, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindRunningTime:I

    .line 60
    iput p5, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindCyle:I

    .line 61
    iput p6, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindCount:I

    .line 62
    iput p7, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->openflag:I

    .line 63
    return-void
.end method


# virtual methods
.method public toByteArrayParam()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    iput-byte v3, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindType:B

    .line 71
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->paramArray:[B

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindType:B

    aput-byte v2, v0, v1

    .line 72
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->paramArray:[B

    iget v1, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->openflag:I

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 73
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->paramArray:[B

    const/4 v1, 0x2

    iget v2, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindSerialNumber:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 74
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->paramArray:[B

    const/4 v1, 0x3

    iget v2, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->hour:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 75
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->paramArray:[B

    const/4 v1, 0x4

    iget v2, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->minute:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 76
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->paramArray:[B

    const/4 v1, 0x5

    iget v2, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindRunningTime:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 77
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->paramArray:[B

    const/4 v1, 0x6

    iget v2, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindCyle:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->paramArray:[B

    const/4 v1, 0x7

    iget v2, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->remindCount:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleDrinkRemindParam;->paramArray:[B

    return-object v0
.end method

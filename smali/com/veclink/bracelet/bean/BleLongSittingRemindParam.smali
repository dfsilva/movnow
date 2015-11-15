.class public Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;
.super Lcom/veclink/bracelet/bean/BaseRemindParam;
.source "BleLongSittingRemindParam.java"


# instance fields
.field public endHour:I

.field public endMinute:I

.field public intervalHour:I

.field public intervalMinute:I

.field public startHour:I

.field public startMinute:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/veclink/bracelet/bean/BaseRemindParam;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "intervalHour"    # I
    .param p2, "intervalMinute"    # I
    .param p3, "startHour"    # I
    .param p4, "startMinute"    # I
    .param p5, "endHour"    # I
    .param p6, "endMinute"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/veclink/bracelet/bean/BaseRemindParam;-><init>()V

    .line 54
    iput p1, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->intervalHour:I

    .line 55
    iput p2, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->intervalMinute:I

    .line 56
    iput p3, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->startHour:I

    .line 57
    iput p4, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->startMinute:I

    .line 58
    iput p5, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->endHour:I

    .line 59
    iput p6, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->endMinute:I

    .line 60
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "intervalHour"    # I
    .param p2, "intervalMinute"    # I
    .param p3, "startHour"    # I
    .param p4, "startMinute"    # I
    .param p5, "endHour"    # I
    .param p6, "endMinute"    # I
    .param p7, "openflag"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/veclink/bracelet/bean/BaseRemindParam;-><init>()V

    .line 64
    iput p1, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->intervalHour:I

    .line 65
    iput p2, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->intervalMinute:I

    .line 66
    iput p3, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->startHour:I

    .line 67
    iput p4, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->startMinute:I

    .line 68
    iput p5, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->endHour:I

    .line 69
    iput p6, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->endMinute:I

    .line 70
    iput p7, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->openflag:I

    .line 71
    return-void
.end method


# virtual methods
.method public toByteArrayParam()[B
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 81
    iput-byte v3, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->remindType:B

    .line 82
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->paramArray:[B

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->remindType:B

    aput-byte v2, v0, v1

    .line 83
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->paramArray:[B

    const/4 v1, 0x1

    iget v2, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->openflag:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 84
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->paramArray:[B

    iget v1, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->intervalHour:I

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 85
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->paramArray:[B

    const/4 v1, 0x3

    iget v2, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->intervalMinute:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 86
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->paramArray:[B

    const/4 v1, 0x4

    iget v2, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->startHour:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 87
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->paramArray:[B

    const/4 v1, 0x5

    iget v2, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->startMinute:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 88
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->paramArray:[B

    const/4 v1, 0x6

    iget v2, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->endHour:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->paramArray:[B

    const/4 v1, 0x7

    iget v2, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->endMinute:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/veclink/bracelet/bean/BleLongSittingRemindParam;->paramArray:[B

    return-object v0
.end method

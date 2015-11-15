.class public Lcom/veclink/bracelet/bean/BleAlarmRemindParam;
.super Lcom/veclink/bracelet/bean/BaseRemindParam;
.source "BleAlarmRemindParam.java"


# instance fields
.field public alarmHour:I

.field public alarmMinute:I

.field public repeatDay:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/veclink/bracelet/bean/BaseRemindParam;-><init>()V

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->repeatDay:[I

    .line 45
    return-void
.end method

.method public constructor <init>(II[I)V
    .locals 1
    .param p1, "alarmHour"    # I
    .param p2, "alarmMinute"    # I
    .param p3, "repeatDay"    # [I

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/veclink/bracelet/bean/BaseRemindParam;-><init>()V

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->repeatDay:[I

    .line 49
    iput p1, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->alarmHour:I

    .line 50
    iput p2, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->alarmMinute:I

    .line 51
    iput-object p3, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->repeatDay:[I

    .line 52
    return-void
.end method

.method public constructor <init>(II[III)V
    .locals 1
    .param p1, "alarmHour"    # I
    .param p2, "alarmMinute"    # I
    .param p3, "repeatDay"    # [I
    .param p4, "openflag"    # I
    .param p5, "querysetflag"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/veclink/bracelet/bean/BaseRemindParam;-><init>()V

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->repeatDay:[I

    .line 56
    iput p1, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->alarmHour:I

    .line 57
    iput p2, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->alarmMinute:I

    .line 58
    iput-object p3, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->repeatDay:[I

    .line 59
    iput p4, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->openflag:I

    .line 60
    iput p5, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->querysetflag:I

    .line 62
    return-void
.end method


# virtual methods
.method public toByteArrayParam()[B
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 32
    iput-byte v4, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->remindType:B

    .line 33
    iget-object v1, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->paramArray:[B

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->remindType:B

    aput-byte v3, v1, v2

    .line 34
    iget-object v1, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->paramArray:[B

    const/4 v2, 0x1

    iget v3, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->openflag:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 35
    iget-object v1, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->paramArray:[B

    const/4 v2, 0x2

    iget v3, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->alarmHour:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 36
    iget-object v1, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->paramArray:[B

    iget v2, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->alarmMinute:I

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->repeatDay:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->paramArray:[B

    add-int/lit8 v2, v0, 0x4

    iget-object v3, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->repeatDay:[I

    aget v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/veclink/bracelet/bean/BleAlarmRemindParam;->paramArray:[B

    return-object v1
.end method

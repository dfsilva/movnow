.class public Lcom/veclink/healthy/database/entity/SleepData;
.super Ljava/lang/Object;
.source "SleepData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _id:Ljava/lang/String;

.field private dateTime:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private hadupload:Ljava/lang/String;

.field private sleepDuration:I

.field private sleepState:Ljava/lang/String;

.field private startTime:I

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepData;->_id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "dateTime"    # Ljava/lang/String;
    .param p5, "startTime"    # I
    .param p6, "sleepDuration"    # I
    .param p7, "sleepState"    # Ljava/lang/String;
    .param p8, "deviceType"    # Ljava/lang/String;
    .param p9, "hadupload"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepData;->_id:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/veclink/healthy/database/entity/SleepData;->userId:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/veclink/healthy/database/entity/SleepData;->deviceId:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/veclink/healthy/database/entity/SleepData;->dateTime:Ljava/lang/String;

    .line 37
    iput p5, p0, Lcom/veclink/healthy/database/entity/SleepData;->startTime:I

    .line 38
    iput p6, p0, Lcom/veclink/healthy/database/entity/SleepData;->sleepDuration:I

    .line 39
    iput-object p7, p0, Lcom/veclink/healthy/database/entity/SleepData;->sleepState:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/veclink/healthy/database/entity/SleepData;->deviceType:Ljava/lang/String;

    .line 41
    iput-object p9, p0, Lcom/veclink/healthy/database/entity/SleepData;->hadupload:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepData;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepData;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getHadupload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepData;->hadupload:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepDuration()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/veclink/healthy/database/entity/SleepData;->sleepDuration:I

    return v0
.end method

.method public getSleepState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepData;->sleepState:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/veclink/healthy/database/entity/SleepData;->startTime:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SleepData;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepData;->dateTime:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepData;->deviceId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepData;->deviceType:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setHadupload(Ljava/lang/String;)V
    .locals 0
    .param p1, "hadupload"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepData;->hadupload:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSleepDuration(I)V
    .locals 0
    .param p1, "sleepDuration"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/veclink/healthy/database/entity/SleepData;->sleepDuration:I

    .line 96
    return-void
.end method

.method public setSleepState(Ljava/lang/String;)V
    .locals 0
    .param p1, "sleepState"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepData;->sleepState:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setStartTime(I)V
    .locals 0
    .param p1, "startTime"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/veclink/healthy/database/entity/SleepData;->startTime:I

    .line 88
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepData;->userId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SleepData;->_id:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SleepData [_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SleepData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SleepData;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SleepData;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SleepData;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/healthy/database/entity/SleepData;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/veclink/healthy/database/entity/SleepData;->sleepDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SleepData;->sleepState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SleepData;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hadupload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SleepData;->hadupload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

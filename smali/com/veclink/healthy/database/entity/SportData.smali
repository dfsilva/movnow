.class public Lcom/veclink/healthy/database/entity/SportData;
.super Ljava/lang/Object;
.source "SportData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _id:Ljava/lang/String;

.field private dataFrequency:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private hadupload:Ljava/lang/String;

.field private sportStep:Ljava/lang/String;

.field private sportTime:Ljava/lang/String;

.field private sportType:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SportData;->_id:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "sportTime"    # Ljava/lang/String;
    .param p5, "sportType"    # Ljava/lang/String;
    .param p6, "sportStep"    # Ljava/lang/String;
    .param p7, "dataFrequency"    # Ljava/lang/String;
    .param p8, "deviceType"    # Ljava/lang/String;
    .param p9, "hadupload"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SportData;->_id:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/veclink/healthy/database/entity/SportData;->userId:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/veclink/healthy/database/entity/SportData;->deviceId:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/veclink/healthy/database/entity/SportData;->sportTime:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/veclink/healthy/database/entity/SportData;->sportType:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/veclink/healthy/database/entity/SportData;->sportStep:Ljava/lang/String;

    .line 41
    iput-object p7, p0, Lcom/veclink/healthy/database/entity/SportData;->dataFrequency:Ljava/lang/String;

    .line 42
    iput-object p8, p0, Lcom/veclink/healthy/database/entity/SportData;->deviceType:Ljava/lang/String;

    .line 43
    iput-object p9, p0, Lcom/veclink/healthy/database/entity/SportData;->hadupload:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getDataFrequency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SportData;->dataFrequency:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SportData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SportData;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getHadupload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SportData;->hadupload:Ljava/lang/String;

    return-object v0
.end method

.method public getSportStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SportData;->sportStep:Ljava/lang/String;

    return-object v0
.end method

.method public getSportTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SportData;->sportTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSportType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SportData;->sportType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SportData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SportData;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDataFrequency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataFrequency"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SportData;->dataFrequency:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SportData;->deviceId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SportData;->deviceType:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setHadupload(Ljava/lang/String;)V
    .locals 0
    .param p1, "hadupload"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SportData;->hadupload:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setSportStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "sportStep"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SportData;->sportStep:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setSportTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "sportTime"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SportData;->sportTime:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSportType(Ljava/lang/String;)V
    .locals 0
    .param p1, "sportType"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SportData;->sportType:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SportData;->userId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SportData;->_id:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SportData [_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SportData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SportData;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SportData;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sportTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SportData;->sportTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SportData;->sportType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sportStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SportData;->sportStep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SportData;->dataFrequency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SportData;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hadupload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/healthy/database/entity/SportData;->hadupload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

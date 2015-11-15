.class public Lcom/veclink/healthy/database/entity/LogObject;
.super Ljava/lang/Object;
.source "LogObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _id:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private firmwareVer:Ljava/lang/String;

.field private logType:Ljava/lang/String;

.field private newFirmwareVer:Ljava/lang/String;

.field private optTime:Ljava/lang/String;

.field private result:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/LogObject;->_id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "logType"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;
    .param p4, "optTime"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "deviceType"    # Ljava/lang/String;
    .param p7, "userId"    # Ljava/lang/String;
    .param p8, "firmwareVer"    # Ljava/lang/String;
    .param p9, "newFirmwareVer"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/LogObject;->_id:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/veclink/healthy/database/entity/LogObject;->logType:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/veclink/healthy/database/entity/LogObject;->result:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/veclink/healthy/database/entity/LogObject;->optTime:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/veclink/healthy/database/entity/LogObject;->deviceId:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/veclink/healthy/database/entity/LogObject;->deviceType:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/veclink/healthy/database/entity/LogObject;->userId:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/veclink/healthy/database/entity/LogObject;->firmwareVer:Ljava/lang/String;

    .line 41
    iput-object p9, p0, Lcom/veclink/healthy/database/entity/LogObject;->newFirmwareVer:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/LogObject;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/LogObject;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/LogObject;->firmwareVer:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/LogObject;->logType:Ljava/lang/String;

    return-object v0
.end method

.method public getNewFirmwareVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/LogObject;->newFirmwareVer:Ljava/lang/String;

    return-object v0
.end method

.method public getOptTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/LogObject;->optTime:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/LogObject;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/LogObject;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/LogObject;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/LogObject;->deviceId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/LogObject;->deviceType:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setFirmwareVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "firmwareVer"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/LogObject;->firmwareVer:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setLogType(Ljava/lang/String;)V
    .locals 0
    .param p1, "logType"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/LogObject;->logType:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setNewFirmwareVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "newFirmwareVer"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/LogObject;->newFirmwareVer:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setOptTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "optTime"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/LogObject;->optTime:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/LogObject;->result:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/LogObject;->userId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/LogObject;->_id:Ljava/lang/String;

    .line 50
    return-void
.end method

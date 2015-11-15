.class public Lcom/veclink/healthy/database/entity/UploadRecord;
.super Ljava/lang/Object;
.source "UploadRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _id:Ljava/lang/String;

.field private deviceImei:Ljava/lang/String;

.field private lastSyncTime:Ljava/lang/String;

.field private uploadTime:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->_id:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "deviceImei"    # Ljava/lang/String;
    .param p4, "lastSyncTime"    # Ljava/lang/String;
    .param p5, "uploadTime"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->_id:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->userId:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->deviceImei:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->lastSyncTime:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->uploadTime:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getDeviceImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->deviceImei:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSyncTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->lastSyncTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->uploadTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceImei"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->deviceImei:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setLastSyncTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastSyncTime"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->lastSyncTime:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUploadTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadTime"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->uploadTime:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->userId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/UploadRecord;->_id:Ljava/lang/String;

    .line 40
    return-void
.end method

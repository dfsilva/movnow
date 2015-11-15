.class public Lcom/veclink/healthy/database/entity/SyncRecord;
.super Ljava/lang/Object;
.source "SyncRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _id:Ljava/lang/String;

.field private deviceImei:Ljava/lang/String;

.field private lastSyncTime:Ljava/lang/String;

.field private syncDataType:I

.field private syncTime:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->_id:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "deviceImei"    # Ljava/lang/String;
    .param p4, "lastSyncTime"    # Ljava/lang/String;
    .param p5, "syncTime"    # Ljava/lang/String;
    .param p6, "syncDataType"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->_id:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->userId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->deviceImei:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->lastSyncTime:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->syncTime:Ljava/lang/String;

    .line 33
    iput p6, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->syncDataType:I

    .line 34
    return-void
.end method


# virtual methods
.method public getDeviceImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->deviceImei:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSyncTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->lastSyncTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncDataType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->syncDataType:I

    return v0
.end method

.method public getSyncTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->syncTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceImei"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->deviceImei:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setLastSyncTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastSyncTime"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->lastSyncTime:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSyncDataType(I)V
    .locals 0
    .param p1, "syncDataType"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->syncDataType:I

    .line 90
    return-void
.end method

.method public setSyncTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "syncTime"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->syncTime:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->userId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/veclink/healthy/database/entity/SyncRecord;->_id:Ljava/lang/String;

    .line 42
    return-void
.end method

.class public Lcom/veclink/healthy/database/op/HealthyDBSyncRecordOperate;
.super Ljava/lang/Object;
.source "HealthyDBSyncRecordOperate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSyncRecord(Landroid/content/Context;Lcom/veclink/healthy/database/entity/SyncRecord;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "record"    # Lcom/veclink/healthy/database/entity/SyncRecord;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2, p1}, Lcom/veclink/healthy/database/dao/DaoSession;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    .line 21
    .local v0, "ret":J
    return-wide v0
.end method

.method public static deleteSyncRecordByDeviceId(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 74
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSyncRecordDao()Lcom/veclink/healthy/database/dao/SyncRecordDao;

    move-result-object v0

    .line 75
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SyncRecordDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SyncRecordDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 76
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SyncRecord;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SyncRecordDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 79
    sget-object v4, Lcom/veclink/healthy/database/dao/SyncRecordDao$Properties;->DeviceImei:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 80
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/veclink/healthy/database/dao/SyncRecordDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static loadLastSyncRecord(Landroid/content/Context;)Lcom/veclink/healthy/database/entity/SyncRecord;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 32
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSyncRecordDao()Lcom/veclink/healthy/database/dao/SyncRecordDao;

    move-result-object v0

    .line 33
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SyncRecordDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SyncRecordDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 34
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SyncRecord;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SyncRecordDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    sget-object v5, Lcom/veclink/healthy/database/dao/SyncRecordDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    new-array v6, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->whereOr(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 37
    sget-object v4, Lcom/veclink/healthy/database/dao/SyncRecordDao$Properties;->DeviceImei:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 38
    const/4 v4, 0x1

    new-array v4, v4, [Lde/greenrobot/dao/Property;

    sget-object v5, Lcom/veclink/healthy/database/dao/SyncRecordDao$Properties;->SyncTime:Lde/greenrobot/dao/Property;

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Lde/greenrobot/dao/query/QueryBuilder;->orderDesc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 39
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 40
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SyncRecord;

    .line 42
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static loadLastSyncRecordByDataType(Landroid/content/Context;I)Lcom/veclink/healthy/database/entity/SyncRecord;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncDataType"    # I

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSyncRecordDao()Lcom/veclink/healthy/database/dao/SyncRecordDao;

    move-result-object v0

    .line 54
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SyncRecordDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SyncRecordDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 55
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SyncRecord;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SyncRecordDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 58
    sget-object v4, Lcom/veclink/healthy/database/dao/SyncRecordDao$Properties;->DeviceImei:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 59
    sget-object v4, Lcom/veclink/healthy/database/dao/SyncRecordDao$Properties;->SyncDataType:Lde/greenrobot/dao/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 60
    const/4 v4, 0x1

    new-array v4, v4, [Lde/greenrobot/dao/Property;

    sget-object v5, Lcom/veclink/healthy/database/dao/SyncRecordDao$Properties;->SyncTime:Lde/greenrobot/dao/Property;

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Lde/greenrobot/dao/query/QueryBuilder;->orderDesc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 61
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 62
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SyncRecord;

    .line 64
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

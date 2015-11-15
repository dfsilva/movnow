.class public Lcom/veclink/healthy/database/op/HealthyDBLogOperate;
.super Ljava/lang/Object;
.source "HealthyDBLogOperate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLogObject(Landroid/content/Context;Lcom/veclink/healthy/database/entity/LogObject;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logObject"    # Lcom/veclink/healthy/database/entity/LogObject;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2, p1}, Lcom/veclink/healthy/database/dao/DaoSession;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    .line 23
    .local v0, "ret":J
    return-wide v0
.end method

.method public static delAllLogObject(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v5

    iget-object v5, v5, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v5}, Lcom/veclink/healthy/database/dao/DaoSession;->getLogObjectDao()Lcom/veclink/healthy/database/dao/LogObjectDao;

    move-result-object v1

    .line 32
    .local v1, "dao":Lcom/veclink/healthy/database/dao/LogObjectDao;
    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/LogObjectDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    .line 33
    .local v3, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/LogObject;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "deviceId":Ljava/lang/String;
    sget-object v5, Lcom/veclink/healthy/database/dao/LogObjectDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v7, 0x0

    sget-object v8, Lcom/veclink/healthy/database/dao/LogObjectDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v8, v4}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->buildDelete()Lde/greenrobot/dao/query/DeleteQuery;

    move-result-object v0

    .line 36
    .local v0, "bd":Lde/greenrobot/dao/query/DeleteQuery;, "Lde/greenrobot/dao/query/DeleteQuery<Lcom/veclink/healthy/database/entity/LogObject;>;"
    invoke-virtual {v0}, Lde/greenrobot/dao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 37
    return-void
.end method

.method public static loadAllLogObject(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/LogObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getLogObjectDao()Lcom/veclink/healthy/database/dao/LogObjectDao;

    move-result-object v0

    .line 47
    .local v0, "dao":Lcom/veclink/healthy/database/dao/LogObjectDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/LogObjectDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 48
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/LogObject;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/LogObjectDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 51
    sget-object v4, Lcom/veclink/healthy/database/dao/LogObjectDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 52
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 53
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 55
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

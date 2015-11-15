.class public Lcom/veclink/healthy/database/op/HealthyUserInfoOperate;
.super Ljava/lang/Object;
.source "HealthyUserInfoOperate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUserInfo(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UserInfo;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userInfo"    # Lcom/veclink/healthy/database/entity/UserInfo;

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

.method public static delUserInfoByUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v1

    iget-object v1, v1, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/DaoSession;->getUserInfoDao()Lcom/veclink/healthy/database/dao/UserInfoDao;

    move-result-object v0

    .line 32
    .local v0, "dao":Lcom/veclink/healthy/database/dao/UserInfoDao;
    invoke-virtual {v0, p1}, Lcom/veclink/healthy/database/dao/UserInfoDao;->deleteByKey(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public static queryUserInfoByEmail(Landroid/content/Context;Ljava/lang/String;)Lcom/veclink/healthy/database/entity/UserInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/dao/DaoSession;->getUserInfoDao()Lcom/veclink/healthy/database/dao/UserInfoDao;

    move-result-object v0

    .line 43
    .local v0, "dao":Lcom/veclink/healthy/database/dao/UserInfoDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/UserInfoDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 44
    .local v1, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/UserInfo;>;"
    sget-object v2, Lcom/veclink/healthy/database/dao/UserInfoDao$Properties;->Email:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 45
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 46
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/UserInfo;

    .line 48
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

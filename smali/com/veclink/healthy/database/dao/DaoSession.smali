.class public Lcom/veclink/healthy/database/dao/DaoSession;
.super Lde/greenrobot/dao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final exerciseAmountDao:Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

.field private final exerciseAmountDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final exerciseDataDao:Lcom/veclink/healthy/database/dao/ExerciseDataDao;

.field private final exerciseDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final logObjectDao:Lcom/veclink/healthy/database/dao/LogObjectDao;

.field private final logObjectDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final sleepDataDao:Lcom/veclink/healthy/database/dao/SleepDataDao;

.field private final sleepDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final sleepQualityDao:Lcom/veclink/healthy/database/dao/SleepQualityDao;

.field private final sleepQualityDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final sportDataDao:Lcom/veclink/healthy/database/dao/SportDataDao;

.field private final sportDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final syncRecordDao:Lcom/veclink/healthy/database/dao/SyncRecordDao;

.field private final syncRecordDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final uptakeCalorieDao:Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

.field private final uptakeCalorieDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final userInfoDao:Lcom/veclink/healthy/database/dao/UserInfoDao;

.field private final userInfoDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lde/greenrobot/dao/identityscope/IdentityScopeType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lde/greenrobot/dao/AbstractDao",
            "<**>;>;",
            "Lde/greenrobot/dao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "daoConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lde/greenrobot/dao/AbstractDao<**>;>;Lde/greenrobot/dao/internal/DaoConfig;>;"
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    const-class v0, Lcom/veclink/healthy/database/dao/UserInfoDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->userInfoDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 66
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->userInfoDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 68
    const-class v0, Lcom/veclink/healthy/database/dao/SportDataDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sportDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 69
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sportDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 71
    const-class v0, Lcom/veclink/healthy/database/dao/SleepDataDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 72
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 74
    const-class v0, Lcom/veclink/healthy/database/dao/LogObjectDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->logObjectDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 75
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->logObjectDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 77
    const-class v0, Lcom/veclink/healthy/database/dao/SyncRecordDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->syncRecordDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 78
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->syncRecordDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 80
    const-class v0, Lcom/veclink/healthy/database/dao/ExerciseDataDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 81
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 83
    const-class v0, Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseAmountDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 84
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseAmountDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 86
    const-class v0, Lcom/veclink/healthy/database/dao/SleepQualityDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepQualityDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 87
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepQualityDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 89
    const-class v0, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->uptakeCalorieDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 90
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->uptakeCalorieDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 92
    new-instance v0, Lcom/veclink/healthy/database/dao/UserInfoDao;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->userInfoDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/veclink/healthy/database/dao/UserInfoDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/veclink/healthy/database/dao/DaoSession;)V

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->userInfoDao:Lcom/veclink/healthy/database/dao/UserInfoDao;

    .line 93
    new-instance v0, Lcom/veclink/healthy/database/dao/SportDataDao;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sportDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/veclink/healthy/database/dao/SportDataDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/veclink/healthy/database/dao/DaoSession;)V

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sportDataDao:Lcom/veclink/healthy/database/dao/SportDataDao;

    .line 94
    new-instance v0, Lcom/veclink/healthy/database/dao/SleepDataDao;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/veclink/healthy/database/dao/SleepDataDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/veclink/healthy/database/dao/DaoSession;)V

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepDataDao:Lcom/veclink/healthy/database/dao/SleepDataDao;

    .line 95
    new-instance v0, Lcom/veclink/healthy/database/dao/LogObjectDao;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->logObjectDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/veclink/healthy/database/dao/LogObjectDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/veclink/healthy/database/dao/DaoSession;)V

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->logObjectDao:Lcom/veclink/healthy/database/dao/LogObjectDao;

    .line 96
    new-instance v0, Lcom/veclink/healthy/database/dao/SyncRecordDao;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->syncRecordDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/veclink/healthy/database/dao/SyncRecordDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/veclink/healthy/database/dao/DaoSession;)V

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->syncRecordDao:Lcom/veclink/healthy/database/dao/SyncRecordDao;

    .line 97
    new-instance v0, Lcom/veclink/healthy/database/dao/ExerciseDataDao;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/veclink/healthy/database/dao/ExerciseDataDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/veclink/healthy/database/dao/DaoSession;)V

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseDataDao:Lcom/veclink/healthy/database/dao/ExerciseDataDao;

    .line 98
    new-instance v0, Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseAmountDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/veclink/healthy/database/dao/ExerciseAmountDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/veclink/healthy/database/dao/DaoSession;)V

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseAmountDao:Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    .line 99
    new-instance v0, Lcom/veclink/healthy/database/dao/SleepQualityDao;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepQualityDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/veclink/healthy/database/dao/SleepQualityDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/veclink/healthy/database/dao/DaoSession;)V

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepQualityDao:Lcom/veclink/healthy/database/dao/SleepQualityDao;

    .line 100
    new-instance v0, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->uptakeCalorieDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/veclink/healthy/database/dao/DaoSession;)V

    iput-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->uptakeCalorieDao:Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    .line 102
    const-class v0, Lcom/veclink/healthy/database/entity/UserInfo;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->userInfoDao:Lcom/veclink/healthy/database/dao/UserInfoDao;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/healthy/database/dao/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 103
    const-class v0, Lcom/veclink/healthy/database/entity/SportData;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sportDataDao:Lcom/veclink/healthy/database/dao/SportDataDao;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/healthy/database/dao/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 104
    const-class v0, Lcom/veclink/healthy/database/entity/SleepData;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepDataDao:Lcom/veclink/healthy/database/dao/SleepDataDao;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/healthy/database/dao/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 105
    const-class v0, Lcom/veclink/healthy/database/entity/LogObject;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->logObjectDao:Lcom/veclink/healthy/database/dao/LogObjectDao;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/healthy/database/dao/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 106
    const-class v0, Lcom/veclink/healthy/database/entity/SyncRecord;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->syncRecordDao:Lcom/veclink/healthy/database/dao/SyncRecordDao;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/healthy/database/dao/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 107
    const-class v0, Lcom/veclink/healthy/database/entity/ExerciseData;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseDataDao:Lcom/veclink/healthy/database/dao/ExerciseDataDao;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/healthy/database/dao/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 108
    const-class v0, Lcom/veclink/healthy/database/entity/ExerciseAmount;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseAmountDao:Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/healthy/database/dao/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 109
    const-class v0, Lcom/veclink/healthy/database/entity/SleepQuality;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepQualityDao:Lcom/veclink/healthy/database/dao/SleepQualityDao;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/healthy/database/dao/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 110
    const-class v0, Lcom/veclink/healthy/database/entity/UptakeCalorie;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoSession;->uptakeCalorieDao:Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    invoke-virtual {p0, v0, v1}, Lcom/veclink/healthy/database/dao/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 111
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->userInfoDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 115
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sportDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 116
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 117
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->logObjectDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 118
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->syncRecordDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 119
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseDataDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 120
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseAmountDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 121
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepQualityDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 122
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->uptakeCalorieDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 123
    return-void
.end method

.method public getExerciseAmountDao()Lcom/veclink/healthy/database/dao/ExerciseAmountDao;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseAmountDao:Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    return-object v0
.end method

.method public getExerciseDataDao()Lcom/veclink/healthy/database/dao/ExerciseDataDao;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->exerciseDataDao:Lcom/veclink/healthy/database/dao/ExerciseDataDao;

    return-object v0
.end method

.method public getLogObjectDao()Lcom/veclink/healthy/database/dao/LogObjectDao;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->logObjectDao:Lcom/veclink/healthy/database/dao/LogObjectDao;

    return-object v0
.end method

.method public getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepDataDao:Lcom/veclink/healthy/database/dao/SleepDataDao;

    return-object v0
.end method

.method public getSleepQualityDao()Lcom/veclink/healthy/database/dao/SleepQualityDao;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sleepQualityDao:Lcom/veclink/healthy/database/dao/SleepQualityDao;

    return-object v0
.end method

.method public getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->sportDataDao:Lcom/veclink/healthy/database/dao/SportDataDao;

    return-object v0
.end method

.method public getSyncRecordDao()Lcom/veclink/healthy/database/dao/SyncRecordDao;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->syncRecordDao:Lcom/veclink/healthy/database/dao/SyncRecordDao;

    return-object v0
.end method

.method public getUptakeCalorieDao()Lcom/veclink/healthy/database/dao/UptakeCalorieDao;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->uptakeCalorieDao:Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    return-object v0
.end method

.method public getUserInfoDao()Lcom/veclink/healthy/database/dao/UserInfoDao;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/veclink/healthy/database/dao/DaoSession;->userInfoDao:Lcom/veclink/healthy/database/dao/UserInfoDao;

    return-object v0
.end method

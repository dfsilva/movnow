.class public Lcom/veclink/healthy/database/dao/DaoMaster;
.super Lde/greenrobot/dao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/healthy/database/dao/DaoMaster$DevOpenHelper;,
        Lcom/veclink/healthy/database/dao/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 83
    const-class v0, Lcom/veclink/healthy/database/dao/UserInfoDao;

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/database/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 84
    const-class v0, Lcom/veclink/healthy/database/dao/SportDataDao;

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/database/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 85
    const-class v0, Lcom/veclink/healthy/database/dao/SleepDataDao;

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/database/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 86
    const-class v0, Lcom/veclink/healthy/database/dao/LogObjectDao;

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/database/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 87
    const-class v0, Lcom/veclink/healthy/database/dao/SyncRecordDao;

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/database/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 88
    const-class v0, Lcom/veclink/healthy/database/dao/ExerciseDataDao;

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/database/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 89
    const-class v0, Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/database/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 90
    const-class v0, Lcom/veclink/healthy/database/dao/SleepQualityDao;

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/database/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 91
    const-class v0, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/database/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 92
    return-void
.end method

.method public static createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/UserInfoDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 31
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/SportDataDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 32
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/SleepDataDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 33
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/LogObjectDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 34
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/SyncRecordDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 35
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/ExerciseDataDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 36
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/ExerciseAmountDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 37
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/SleepQualityDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 38
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 39
    return-void
.end method

.method public static dropAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/UserInfoDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 44
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/SportDataDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 45
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/SleepDataDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 46
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/LogObjectDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 47
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/SyncRecordDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 48
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/ExerciseDataDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 49
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/ExerciseAmountDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 50
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/SleepQualityDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 51
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 52
    return-void
.end method


# virtual methods
.method public newSession()Lcom/veclink/healthy/database/dao/DaoSession;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcom/veclink/healthy/database/dao/DaoSession;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lde/greenrobot/dao/identityscope/IdentityScopeType;->Session:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/veclink/healthy/database/dao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/veclink/healthy/database/dao/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/veclink/healthy/database/dao/DaoSession;
    .locals 3
    .param p1, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;

    .prologue
    .line 99
    new-instance v0, Lcom/veclink/healthy/database/dao/DaoSession;

    iget-object v1, p0, Lcom/veclink/healthy/database/dao/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/veclink/healthy/database/dao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/veclink/healthy/database/dao/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/veclink/healthy/database/dao/DaoMaster;->newSession()Lcom/veclink/healthy/database/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1
    .param p1, "x0"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/veclink/healthy/database/dao/DaoMaster;->newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/veclink/healthy/database/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method

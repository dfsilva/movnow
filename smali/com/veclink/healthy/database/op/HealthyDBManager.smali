.class public Lcom/veclink/healthy/database/op/HealthyDBManager;
.super Ljava/lang/Object;
.source "HealthyDBManager.java"


# static fields
.field public static final DB_MODE_READ:I = 0x2

.field public static final DB_MODE_WRITE:I = 0x1

.field private static DB_PREFIX:Ljava/lang/String; = null

.field private static final HEALTHY_DATABASE_NAME:Ljava/lang/String; = "vkl_healthy"

.field private static mInstance:Lcom/veclink/healthy/database/op/HealthyDBManager;


# instance fields
.field public mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "wkl_"

    sput-object v0, Lcom/veclink/healthy/database/op/HealthyDBManager;->DB_PREFIX:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/veclink/healthy/database/op/HealthyDBManager;->mInstance:Lcom/veclink/healthy/database/op/HealthyDBManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v2, p0, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    .line 30
    iget-object v0, p0, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    if-nez v0, :cond_0

    .line 31
    const-string v0, "vkl_healthy"

    const/4 v1, 0x1

    invoke-static {p1, v0, v2, v1}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getDaoDataBase(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Lcom/veclink/healthy/database/dao/DaoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    .line 33
    :cond_0
    return-void
.end method

.method public static getDBDaoReadable(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Lcom/veclink/healthy/database/dao/DaoSession;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/veclink/healthy/database/op/HealthyDBManager;->DB_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, p2, v1}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getDaoDataBase(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Lcom/veclink/healthy/database/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public static getDBDaoWritable(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Lcom/veclink/healthy/database/dao/DaoSession;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/veclink/healthy/database/op/HealthyDBManager;->DB_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p2, v1}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getDaoDataBase(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Lcom/veclink/healthy/database/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public static getDaoDataBase(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Lcom/veclink/healthy/database/dao/DaoSession;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "mode"    # I

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 45
    .local v1, "daoSession":Lcom/veclink/healthy/database/dao/DaoSession;
    :try_start_0
    new-instance v3, Lcom/veclink/healthy/database/dao/DaoMaster$DevOpenHelper;

    invoke-direct {v3, p0, p1, p2}, Lcom/veclink/healthy/database/dao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 46
    .local v3, "helper":Lcom/veclink/healthy/database/dao/DaoMaster$DevOpenHelper;
    const/4 v2, 0x0

    .line 47
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x2

    if-ne v4, p3, :cond_0

    .line 48
    invoke-virtual {v3}, Lcom/veclink/healthy/database/dao/DaoMaster$DevOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 57
    :goto_0
    new-instance v0, Lcom/veclink/healthy/database/dao/DaoMaster;

    invoke-direct {v0, v2}, Lcom/veclink/healthy/database/dao/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    .local v0, "daoMaster":Lcom/veclink/healthy/database/dao/DaoMaster;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/DaoMaster;->newSession()Lcom/veclink/healthy/database/dao/DaoSession;

    move-result-object v1

    .end local v0    # "daoMaster":Lcom/veclink/healthy/database/dao/DaoMaster;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "helper":Lcom/veclink/healthy/database/dao/DaoMaster$DevOpenHelper;
    :goto_1
    move-object v4, v1

    .line 63
    :goto_2
    return-object v4

    .line 50
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "helper":Lcom/veclink/healthy/database/dao/DaoMaster$DevOpenHelper;
    :cond_0
    const/4 v4, 0x1

    if-ne v4, p3, :cond_1

    .line 51
    invoke-virtual {v3}, Lcom/veclink/healthy/database/dao/DaoMaster$DevOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 54
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 59
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "helper":Lcom/veclink/healthy/database/dao/DaoMaster$DevOpenHelper;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/veclink/healthy/database/op/HealthyDBManager;->mInstance:Lcom/veclink/healthy/database/op/HealthyDBManager;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/veclink/healthy/database/op/HealthyDBManager;

    invoke-direct {v0, p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/veclink/healthy/database/op/HealthyDBManager;->mInstance:Lcom/veclink/healthy/database/op/HealthyDBManager;

    .line 39
    :cond_0
    sget-object v0, Lcom/veclink/healthy/database/op/HealthyDBManager;->mInstance:Lcom/veclink/healthy/database/op/HealthyDBManager;

    return-object v0
.end method

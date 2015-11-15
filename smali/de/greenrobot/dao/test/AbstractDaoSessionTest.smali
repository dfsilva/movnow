.class public abstract Lde/greenrobot/dao/test/AbstractDaoSessionTest;
.super Lde/greenrobot/dao/test/DbTest;
.source "AbstractDaoSessionTest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Application;",
        "T:",
        "Lde/greenrobot/dao/AbstractDaoMaster;",
        "S:",
        "Lde/greenrobot/dao/AbstractDaoSession;",
        ">",
        "Lde/greenrobot/dao/test/DbTest",
        "<TA;>;"
    }
.end annotation


# instance fields
.field protected daoMaster:Lde/greenrobot/dao/AbstractDaoMaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final daoMasterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected daoSession:Lde/greenrobot/dao/AbstractDaoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoSessionTest;, "Lde/greenrobot/dao/test/AbstractDaoSessionTest<TA;TT;TS;>;"
    .local p1, "daoMasterClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/test/AbstractDaoSessionTest;-><init>(Ljava/lang/Class;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Z)V
    .locals 0
    .param p3, "inMemory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/Class",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoSessionTest;, "Lde/greenrobot/dao/test/AbstractDaoSessionTest<TA;TT;TS;>;"
    .local p1, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "daoMasterClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p3}, Lde/greenrobot/dao/test/DbTest;-><init>(Ljava/lang/Class;Z)V

    .line 53
    iput-object p2, p0, Lde/greenrobot/dao/test/AbstractDaoSessionTest;->daoMasterClass:Ljava/lang/Class;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "inMemory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoSessionTest;, "Lde/greenrobot/dao/test/AbstractDaoSessionTest<TA;TT;TS;>;"
    .local p1, "daoMasterClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lde/greenrobot/dao/test/DbTest;-><init>(Z)V

    .line 48
    iput-object p1, p0, Lde/greenrobot/dao/test/AbstractDaoSessionTest;->daoMasterClass:Ljava/lang/Class;

    .line 49
    return-void
.end method


# virtual methods
.method protected setUp()V
    .locals 8

    .prologue
    .line 59
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoSessionTest;, "Lde/greenrobot/dao/test/AbstractDaoSessionTest<TA;TT;TS;>;"
    invoke-super {p0}, Lde/greenrobot/dao/test/DbTest;->setUp()V

    .line 61
    :try_start_0
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoSessionTest;->daoMasterClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/database/sqlite/SQLiteDatabase;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 62
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoSessionTest;->db:Landroid/database/sqlite/SQLiteDatabase;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/dao/AbstractDaoMaster;

    iput-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoSessionTest;->daoMaster:Lde/greenrobot/dao/AbstractDaoMaster;

    .line 64
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoSessionTest;->daoMasterClass:Ljava/lang/Class;

    const-string v4, "createAllTables"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/database/sqlite/SQLiteDatabase;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    .local v1, "createTableMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoSessionTest;->db:Landroid/database/sqlite/SQLiteDatabase;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoSessionTest;->daoMaster:Lde/greenrobot/dao/AbstractDaoMaster;

    invoke-virtual {v3}, Lde/greenrobot/dao/AbstractDaoMaster;->newSession()Lde/greenrobot/dao/AbstractDaoSession;

    move-result-object v3

    iput-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoSessionTest;->daoSession:Lde/greenrobot/dao/AbstractDaoSession;

    .line 70
    return-void

    .line 66
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v1    # "createTableMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not prepare DAO session test"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

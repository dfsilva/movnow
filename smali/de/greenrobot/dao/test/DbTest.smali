.class public abstract Lde/greenrobot/dao/test/DbTest;
.super Landroid/test/ApplicationTestCase;
.source "DbTest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Application;",
        ">",
        "Landroid/test/ApplicationTestCase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field protected final inMemory:Z

.field protected random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lde/greenrobot/dao/test/DbTest;, "Lde/greenrobot/dao/test/DbTest<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lde/greenrobot/dao/test/DbTest;-><init>(Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "inMemory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lde/greenrobot/dao/test/DbTest;, "Lde/greenrobot/dao/test/DbTest<TT;>;"
    .local p1, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Landroid/test/ApplicationTestCase;-><init>(Ljava/lang/Class;)V

    .line 50
    iput-boolean p2, p0, Lde/greenrobot/dao/test/DbTest;->inMemory:Z

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/test/DbTest;->random:Ljava/util/Random;

    .line 52
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "inMemory"    # Z

    .prologue
    .line 45
    .local p0, "this":Lde/greenrobot/dao/test/DbTest;, "Lde/greenrobot/dao/test/DbTest<TT;>;"
    const-class v0, Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Lde/greenrobot/dao/test/DbTest;-><init>(Ljava/lang/Class;Z)V

    .line 46
    return-void
.end method


# virtual methods
.method protected logTableDump(Ljava/lang/String;)V
    .locals 1
    .param p1, "tablename"    # Ljava/lang/String;

    .prologue
    .line 85
    .local p0, "this":Lde/greenrobot/dao/test/DbTest;, "Lde/greenrobot/dao/test/DbTest<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/test/DbTest;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lde/greenrobot/dao/DbUtils;->logTableDump(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected setUp()V
    .locals 2

    .prologue
    .line 57
    .local p0, "this":Lde/greenrobot/dao/test/DbTest;, "Lde/greenrobot/dao/test/DbTest<TT;>;"
    :try_start_0
    invoke-super {p0}, Landroid/test/ApplicationTestCase;->setUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-virtual {p0}, Lde/greenrobot/dao/test/DbTest;->createApplication()V

    .line 62
    invoke-virtual {p0}, Lde/greenrobot/dao/test/DbTest;->setUpDb()V

    .line 63
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected setUpDb()V
    .locals 4

    .prologue
    .local p0, "this":Lde/greenrobot/dao/test/DbTest;, "Lde/greenrobot/dao/test/DbTest<TT;>;"
    const/4 v3, 0x0

    .line 67
    iget-boolean v0, p0, Lde/greenrobot/dao/test/DbTest;->inMemory:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/dao/test/DbTest;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lde/greenrobot/dao/test/DbTest;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "test-db"

    invoke-virtual {v0, v1}, Landroid/app/Application;->deleteDatabase(Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p0}, Lde/greenrobot/dao/test/DbTest;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "test-db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Application;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/dao/test/DbTest;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method protected tearDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lde/greenrobot/dao/test/DbTest;, "Lde/greenrobot/dao/test/DbTest<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/test/DbTest;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 78
    iget-boolean v0, p0, Lde/greenrobot/dao/test/DbTest;->inMemory:Z

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lde/greenrobot/dao/test/DbTest;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "test-db"

    invoke-virtual {v0, v1}, Landroid/app/Application;->deleteDatabase(Ljava/lang/String;)Z

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/test/ApplicationTestCase;->tearDown()V

    .line 82
    return-void
.end method

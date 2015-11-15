.class public Lde/greenrobot/dao/query/DeleteQuery;
.super Lde/greenrobot/dao/query/AbstractQuery;
.source "DeleteQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/dao/query/DeleteQuery$1;,
        Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lde/greenrobot/dao/query/AbstractQuery",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private compiledStatement:Landroid/database/sqlite/SQLiteStatement;

.field private final threadLocalQuery:Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery",
            "<TT;>;",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lde/greenrobot/dao/query/DeleteQuery;, "Lde/greenrobot/dao/query/DeleteQuery<TT;>;"
    .local p1, "threadLocalQuery":Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;, "Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery<TT;>;"
    .local p2, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;*>;"
    invoke-direct {p0, p2, p3, p4}, Lde/greenrobot/dao/query/AbstractQuery;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lde/greenrobot/dao/query/DeleteQuery;->threadLocalQuery:Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lde/greenrobot/dao/query/DeleteQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;
    .param p2, "x1"    # Lde/greenrobot/dao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # Lde/greenrobot/dao/query/DeleteQuery$1;

    .prologue
    .line 31
    .local p0, "this":Lde/greenrobot/dao/query/DeleteQuery;, "Lde/greenrobot/dao/query/DeleteQuery<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lde/greenrobot/dao/query/DeleteQuery;-><init>(Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lde/greenrobot/dao/query/DeleteQuery;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "initialValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lde/greenrobot/dao/query/DeleteQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;

    invoke-static {p2}, Lde/greenrobot/dao/query/DeleteQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lde/greenrobot/dao/query/DeleteQuery$1;)V

    .line 51
    .local v0, "threadLocal":Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;, "Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery<TT2;>;"
    invoke-virtual {v0}, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/dao/query/DeleteQuery;

    return-object v1
.end method

.method private declared-synchronized executeDeleteWithoutDetachingEntitiesInsideTx()V
    .locals 4

    .prologue
    .line 93
    .local p0, "this":Lde/greenrobot/dao/query/DeleteQuery;, "Lde/greenrobot/dao/query/DeleteQuery<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->compiledStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->compiledStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 98
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->parameters:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 99
    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->parameters:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 100
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 101
    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->compiledStatement:Landroid/database/sqlite/SQLiteStatement;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 98
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "i":I
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lde/greenrobot/dao/query/DeleteQuery;->sql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->compiledStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 103
    .restart local v0    # "i":I
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->compiledStatement:Landroid/database/sqlite/SQLiteStatement;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 106
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->compiledStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public executeDeleteWithoutDetachingEntities()V
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lde/greenrobot/dao/query/DeleteQuery;, "Lde/greenrobot/dao/query/DeleteQuery<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/DeleteQuery;->checkThread()V

    .line 76
    iget-object v1, p0, Lde/greenrobot/dao/query/DeleteQuery;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 77
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-direct {p0}, Lde/greenrobot/dao/query/DeleteQuery;->executeDeleteWithoutDetachingEntitiesInsideTx()V

    .line 90
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 84
    :try_start_0
    invoke-direct {p0}, Lde/greenrobot/dao/query/DeleteQuery;->executeDeleteWithoutDetachingEntitiesInsideTx()V

    .line 85
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public forCurrentThread()Lde/greenrobot/dao/query/DeleteQuery;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/DeleteQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/DeleteQuery;, "Lde/greenrobot/dao/query/DeleteQuery<TT;>;"
    const/4 v4, 0x0

    .line 63
    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->threadLocalQuery:Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;

    invoke-virtual {v2}, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/dao/query/DeleteQuery;

    .line 64
    .local v1, "query":Lde/greenrobot/dao/query/DeleteQuery;, "Lde/greenrobot/dao/query/DeleteQuery<TT;>;"
    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery;->threadLocalQuery:Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;

    # getter for: Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->initialValues:[Ljava/lang/String;
    invoke-static {v2}, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->access$200(Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "initialValues":[Ljava/lang/String;
    iget-object v2, v1, Lde/greenrobot/dao/query/DeleteQuery;->parameters:[Ljava/lang/String;

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-object v1
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lde/greenrobot/dao/query/DeleteQuery;, "Lde/greenrobot/dao/query/DeleteQuery<TT;>;"
    invoke-super {p0, p1, p2}, Lde/greenrobot/dao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)V

    return-void
.end method

.class public Lde/greenrobot/dao/query/CountQuery;
.super Lde/greenrobot/dao/query/AbstractQuery;
.source "CountQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/dao/query/CountQuery$1;,
        Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;
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
.field private final threadLocalQuery:Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery",
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
    .line 34
    .local p0, "this":Lde/greenrobot/dao/query/CountQuery;, "Lde/greenrobot/dao/query/CountQuery<TT;>;"
    .local p1, "threadLocalQuery":Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;, "Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery<TT;>;"
    .local p2, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;*>;"
    invoke-direct {p0, p2, p3, p4}, Lde/greenrobot/dao/query/AbstractQuery;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lde/greenrobot/dao/query/CountQuery;->threadLocalQuery:Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lde/greenrobot/dao/query/CountQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;
    .param p2, "x1"    # Lde/greenrobot/dao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # Lde/greenrobot/dao/query/CountQuery$1;

    .prologue
    .line 7
    .local p0, "this":Lde/greenrobot/dao/query/CountQuery;, "Lde/greenrobot/dao/query/CountQuery<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lde/greenrobot/dao/query/CountQuery;-><init>(Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lde/greenrobot/dao/query/CountQuery;
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
            "Lde/greenrobot/dao/query/CountQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;

    invoke-static {p2}, Lde/greenrobot/dao/query/CountQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lde/greenrobot/dao/query/CountQuery$1;)V

    .line 28
    .local v0, "threadLocal":Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;, "Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery<TT2;>;"
    invoke-virtual {v0}, Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/dao/query/CountQuery;

    return-object v1
.end method


# virtual methods
.method public count()J
    .locals 4

    .prologue
    .line 47
    .local p0, "this":Lde/greenrobot/dao/query/CountQuery;, "Lde/greenrobot/dao/query/CountQuery<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/CountQuery;->checkThread()V

    .line 48
    iget-object v1, p0, Lde/greenrobot/dao/query/CountQuery;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/CountQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/query/CountQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 50
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lde/greenrobot/dao/DaoException;

    const-string v2, "No result for count"

    invoke-direct {v1, v2}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 52
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Lde/greenrobot/dao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected row count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 55
    new-instance v1, Lde/greenrobot/dao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected column count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1
.end method

.method public forCurrentThread()Lde/greenrobot/dao/query/CountQuery;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/CountQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/CountQuery;, "Lde/greenrobot/dao/query/CountQuery<TT;>;"
    const/4 v4, 0x0

    .line 39
    iget-object v2, p0, Lde/greenrobot/dao/query/CountQuery;->threadLocalQuery:Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;

    invoke-virtual {v2}, Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/dao/query/CountQuery;

    .line 40
    .local v1, "query":Lde/greenrobot/dao/query/CountQuery;, "Lde/greenrobot/dao/query/CountQuery<TT;>;"
    iget-object v2, p0, Lde/greenrobot/dao/query/CountQuery;->threadLocalQuery:Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;

    # getter for: Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;->initialValues:[Ljava/lang/String;
    invoke-static {v2}, Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;->access$200(Lde/greenrobot/dao/query/CountQuery$ThreadLocalQuery;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "initialValues":[Ljava/lang/String;
    iget-object v2, v1, Lde/greenrobot/dao/query/CountQuery;->parameters:[Ljava/lang/String;

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    return-object v1
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 7
    .local p0, "this":Lde/greenrobot/dao/query/CountQuery;, "Lde/greenrobot/dao/query/CountQuery<TT;>;"
    invoke-super {p0, p1, p2}, Lde/greenrobot/dao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)V

    return-void
.end method

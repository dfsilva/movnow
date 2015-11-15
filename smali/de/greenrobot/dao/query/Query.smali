.class public Lde/greenrobot/dao/query/Query;
.super Lde/greenrobot/dao/query/AbstractQuery;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/dao/query/Query$1;,
        Lde/greenrobot/dao/query/Query$ThreadLocalQuery;
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
.field private final limitPosition:I

.field private final offsetPosition:I

.field private final threadLocalQuery:Lde/greenrobot/dao/query/Query$ThreadLocalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/query/Query$ThreadLocalQuery",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lde/greenrobot/dao/query/Query$ThreadLocalQuery;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .param p5, "limitPosition"    # I
    .param p6, "offsetPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/Query$ThreadLocalQuery",
            "<TT;>;",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    .local p1, "threadLocalQuery":Lde/greenrobot/dao/query/Query$ThreadLocalQuery;, "Lde/greenrobot/dao/query/Query$ThreadLocalQuery<TT;>;"
    .local p2, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;*>;"
    invoke-direct {p0, p2, p3, p4}, Lde/greenrobot/dao/query/AbstractQuery;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lde/greenrobot/dao/query/Query;->threadLocalQuery:Lde/greenrobot/dao/query/Query$ThreadLocalQuery;

    .line 78
    iput p5, p0, Lde/greenrobot/dao/query/Query;->limitPosition:I

    .line 79
    iput p6, p0, Lde/greenrobot/dao/query/Query;->offsetPosition:I

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lde/greenrobot/dao/query/Query$ThreadLocalQuery;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILde/greenrobot/dao/query/Query$1;)V
    .locals 0
    .param p1, "x0"    # Lde/greenrobot/dao/query/Query$ThreadLocalQuery;
    .param p2, "x1"    # Lde/greenrobot/dao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lde/greenrobot/dao/query/Query$1;

    .prologue
    .line 35
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-direct/range {p0 .. p6}, Lde/greenrobot/dao/query/Query;-><init>(Lde/greenrobot/dao/query/Query$ThreadLocalQuery;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method static create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lde/greenrobot/dao/query/Query;
    .locals 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "initialValues"    # [Ljava/lang/Object;
    .param p3, "limitPosition"    # I
    .param p4, "offsetPosition"    # I
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
            "II)",
            "Lde/greenrobot/dao/query/Query",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;

    invoke-static {p2}, Lde/greenrobot/dao/query/Query;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILde/greenrobot/dao/query/Query$1;)V

    .line 67
    .local v0, "threadLocal":Lde/greenrobot/dao/query/Query$ThreadLocalQuery;, "Lde/greenrobot/dao/query/Query$ThreadLocalQuery<TT2;>;"
    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/dao/query/Query;

    return-object v1
.end method

.method public static internalCreate(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lde/greenrobot/dao/query/Query;
    .locals 1
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
            "Lde/greenrobot/dao/query/Query",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .local p0, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    const/4 v0, -0x1

    .line 60
    invoke-static {p0, p1, p2, v0, v0}, Lde/greenrobot/dao/query/Query;->create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lde/greenrobot/dao/query/Query;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public forCurrentThread()Lde/greenrobot/dao/query/Query;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    const/4 v4, 0x0

    .line 87
    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->threadLocalQuery:Lde/greenrobot/dao/query/Query$ThreadLocalQuery;

    invoke-virtual {v2}, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/dao/query/Query;

    .line 88
    .local v1, "query":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->threadLocalQuery:Lde/greenrobot/dao/query/Query$ThreadLocalQuery;

    # getter for: Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->initialValues:[Ljava/lang/String;
    invoke-static {v2}, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->access$200(Lde/greenrobot/dao/query/Query$ThreadLocalQuery;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "initialValues":[Ljava/lang/String;
    iget-object v2, v1, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    return-object v1
.end method

.method public list()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 130
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 131
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->daoAccess:Lde/greenrobot/dao/InternalQueryDaoAccess;

    invoke-virtual {v1, v0}, Lde/greenrobot/dao/InternalQueryDaoAccess;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public listIterator()Lde/greenrobot/dao/query/CloseableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/CloseableListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->listLazyUncached()Lde/greenrobot/dao/query/LazyList;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/LazyList;->listIteratorAutoClose()Lde/greenrobot/dao/query/CloseableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listLazy()Lde/greenrobot/dao/query/LazyList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 141
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lde/greenrobot/dao/query/LazyList;

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->daoAccess:Lde/greenrobot/dao/InternalQueryDaoAccess;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lde/greenrobot/dao/query/LazyList;-><init>(Lde/greenrobot/dao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public listLazyUncached()Lde/greenrobot/dao/query/LazyList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 151
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lde/greenrobot/dao/query/LazyList;

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->daoAccess:Lde/greenrobot/dao/InternalQueryDaoAccess;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lde/greenrobot/dao/query/LazyList;-><init>(Lde/greenrobot/dao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public setLimit(I)V
    .locals 3
    .param p1, "limit"    # I

    .prologue
    .line 108
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 109
    iget v0, p0, Lde/greenrobot/dao/query/Query;->limitPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Limit must be set with QueryBuilder before it can be used here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    iget v1, p0, Lde/greenrobot/dao/query/Query;->limitPosition:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 113
    return-void
.end method

.method public setOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 120
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 121
    iget v0, p0, Lde/greenrobot/dao/query/Query;->offsetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Offset must be set with QueryBuilder before it can be used here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    iget v1, p0, Lde/greenrobot/dao/query/Query;->offsetPosition:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 125
    return-void
.end method

.method public setParameter(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 97
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    if-ltz p1, :cond_1

    iget v0, p0, Lde/greenrobot/dao/query/Query;->limitPosition:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lde/greenrobot/dao/query/Query;->offsetPosition:I

    if-ne p1, v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal parameter index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    invoke-super {p0, p1, p2}, Lde/greenrobot/dao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method public unique()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 172
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 173
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->daoAccess:Lde/greenrobot/dao/InternalQueryDaoAccess;

    invoke-virtual {v1, v0}, Lde/greenrobot/dao/InternalQueryDaoAccess;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public uniqueOrThrow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 186
    new-instance v1, Lde/greenrobot/dao/DaoException;

    const-string v2, "No entity found for query"

    invoke-direct {v1, v2}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    return-object v0
.end method

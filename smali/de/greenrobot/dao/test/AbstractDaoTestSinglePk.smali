.class public abstract Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;
.super Lde/greenrobot/dao/test/AbstractDaoTest;
.source "AbstractDaoTestSinglePk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lde/greenrobot/dao/AbstractDao",
        "<TT;TK;>;T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lde/greenrobot/dao/test/AbstractDaoTest",
        "<TD;TT;TK;>;"
    }
.end annotation


# instance fields
.field private pkColumn:Lde/greenrobot/dao/Property;

.field protected usedPks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
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
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    .local p1, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    invoke-direct {p0, p1}, Lde/greenrobot/dao/test/AbstractDaoTest;-><init>(Ljava/lang/Class;)V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->usedPks:Ljava/util/Set;

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract createEntity(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation
.end method

.method protected createEntityWithRandomPk()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createRandomPk()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method protected nextPk()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const v2, 0x186a0

    if-ge v0, v2, :cond_1

    .line 314
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createRandomPk()Ljava/lang/Object;

    move-result-object v1

    .line 315
    .local v1, "pk":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->usedPks:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    return-object v1

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "pk":Ljava/lang/Object;, "TK;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find a new PK"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 8
    .param p1, "dummyCount"    # I
    .param p2, "valueForColumn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TK;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    .local p3, "pk":Ljava/lang/Object;, "TK;"
    const/4 v7, 0x1

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "SELECT "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 282
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    :cond_0
    const-string v5, "T"

    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v6}, Lde/greenrobot/dao/AbstractDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lde/greenrobot/dao/internal/SqlUtils;->appendColumns(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v5}, Lde/greenrobot/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " T"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    if-eqz p3, :cond_1

    .line 287
    const-string v5, " WHERE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v5}, Lde/greenrobot/dao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-static {v7, v5}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(II)V

    .line 290
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v5}, Lde/greenrobot/dao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {v0, p3}, Landroid/database/DatabaseUtils;->appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 294
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "select":Ljava/lang/String;
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 296
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    invoke-static {v5}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertTrue(Z)V

    .line 298
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_2

    .line 299
    :try_start_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 301
    :cond_2
    if-eqz p3, :cond_3

    .line 302
    const/4 v5, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v5, v6}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_3
    return-object v1

    .line 304
    :catch_0
    move-exception v2

    .line 305
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 306
    throw v2
.end method

.method protected runLoadPkTest(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 266
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v2

    .line 267
    .local v2, "pk":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 268
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 270
    const-string v4, "42"

    invoke-virtual {p0, p1, v4, v2}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 272
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    invoke-virtual {v4, v0, p1}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v3

    .line 273
    .local v3, "pk2":Ljava/lang/Object;, "TK;"
    invoke-static {v2, v3}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 277
    return-void

    .line 275
    .end local v3    # "pk2":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method protected setUp()V
    .locals 7

    .prologue
    .line 55
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-super {p0}, Lde/greenrobot/dao/test/AbstractDaoTest;->setUp()V

    .line 56
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    invoke-virtual {v5}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getProperties()[Lde/greenrobot/dao/Property;

    move-result-object v2

    .line 57
    .local v2, "columns":[Lde/greenrobot/dao/Property;
    move-object v0, v2

    .local v0, "arr$":[Lde/greenrobot/dao/Property;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 58
    .local v1, "column":Lde/greenrobot/dao/Property;
    iget-boolean v5, v1, Lde/greenrobot/dao/Property;->primaryKey:Z

    if-eqz v5, :cond_1

    .line 59
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->pkColumn:Lde/greenrobot/dao/Property;

    if-eqz v5, :cond_0

    .line 60
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Test does not work with multiple PK columns"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 62
    :cond_0
    iput-object v1, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->pkColumn:Lde/greenrobot/dao/Property;

    .line 57
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "column":Lde/greenrobot/dao/Property;
    :cond_2
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->pkColumn:Lde/greenrobot/dao/Property;

    if-nez v5, :cond_3

    .line 66
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Test does not work without a PK column"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 68
    :cond_3
    return-void
.end method

.method public testCount()V
    .locals 4

    .prologue
    .line 91
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0}, Lde/greenrobot/dao/AbstractDao;->deleteAll()V

    .line 92
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2}, Lde/greenrobot/dao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 93
    iget-object v0, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 94
    const-wide/16 v0, 0x1

    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2}, Lde/greenrobot/dao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 95
    iget-object v0, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 96
    const-wide/16 v0, 0x2

    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2}, Lde/greenrobot/dao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 97
    return-void
.end method

.method public testDelete()V
    .locals 3

    .prologue
    .line 137
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "pk":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0, v1}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2, v0}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 141
    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertNotNull(Ljava/lang/Object;)V

    .line 142
    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 143
    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertNull(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public testDeleteAll()V
    .locals 9

    .prologue
    .line 147
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "entityList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    .line 149
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v5, v1}, Lde/greenrobot/dao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 153
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v5}, Lde/greenrobot/dao/AbstractDao;->deleteAll()V

    .line 154
    const-wide/16 v5, 0x0

    iget-object v7, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v7}, Lde/greenrobot/dao/AbstractDao;->count()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 156
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    invoke-virtual {v5, v0}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 157
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v4}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertNotNull(Ljava/lang/Object;)V

    .line 158
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v5, v4}, Lde/greenrobot/dao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 160
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method

.method public testDeleteByKeyInTx()V
    .locals 10

    .prologue
    .line 184
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "entityList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v2, v6, :cond_0

    .line 186
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v6, v1}, Lde/greenrobot/dao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 190
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v5, "keysToDelete":Ljava/util/List;, "Ljava/util/List<TK;>;"
    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    const/4 v7, 0x4

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    const/16 v7, 0x8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v6, v5}, Lde/greenrobot/dao/AbstractDao;->deleteByKeyInTx(Ljava/lang/Iterable;)V

    .line 196
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-long v6, v6

    iget-object v8, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v8}, Lde/greenrobot/dao/AbstractDao;->count()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 197
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 198
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v4}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertNotNull(Ljava/lang/Object;)V

    .line 199
    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v6, v4}, Lde/greenrobot/dao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 201
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method

.method public testDeleteInTx()V
    .locals 11

    .prologue
    .line 163
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v3, "entityList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v7, 0xa

    if-ge v4, v7, :cond_0

    .line 165
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v2

    .line 166
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v7, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v7, v3}, Lde/greenrobot/dao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v1, "entitiesToDelete":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const/4 v7, 0x4

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const/16 v7, 0x8

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v7, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v7, v1}, Lde/greenrobot/dao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 175
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v7, v7

    iget-object v9, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v9}, Lde/greenrobot/dao/AbstractDao;->count()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 176
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, "deletedEntity":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    invoke-virtual {v7, v0}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 178
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v6}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertNotNull(Ljava/lang/Object;)V

    .line 179
    iget-object v7, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v7, v6}, Lde/greenrobot/dao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 181
    .end local v0    # "deletedEntity":Ljava/lang/Object;, "TT;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method

.method public testInsertAndLoad()V
    .locals 5

    .prologue
    .line 71
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v2

    .line 72
    .local v2, "pk":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v3, v0}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 74
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    invoke-virtual {v3, v0}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v3, v2}, Lde/greenrobot/dao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    .local v1, "entity2":Ljava/lang/Object;, "TT;"
    invoke-static {v1}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertNotNull(Ljava/lang/Object;)V

    .line 77
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    invoke-virtual {v3, v0}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public testInsertInTx()V
    .locals 6

    .prologue
    .line 81
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2}, Lde/greenrobot/dao/AbstractDao;->deleteAll()V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 84
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2, v1}, Lde/greenrobot/dao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4}, Lde/greenrobot/dao/AbstractDao;->count()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 88
    return-void
.end method

.method public testInsertOrReplaceInTx()V
    .locals 8

    .prologue
    .line 121
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4}, Lde/greenrobot/dao/AbstractDao;->deleteAll()V

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v3, "listPartial":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v2, "listAll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x14

    if-ge v1, v4, :cond_1

    .line 125
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    .line 127
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 132
    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4, v2}, Lde/greenrobot/dao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 133
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v6}, Lde/greenrobot/dao/AbstractDao;->count()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 134
    return-void
.end method

.method public testInsertOrReplaceTwice()V
    .locals 7

    .prologue
    .line 112
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v5, v0}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v1

    .line 114
    .local v1, "rowId1":J
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v5, v0}, Lde/greenrobot/dao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v3

    .line 115
    .local v3, "rowId2":J
    iget-object v5, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v5}, Lde/greenrobot/dao/AbstractDao;->getPkProperty()Lde/greenrobot/dao/Property;

    move-result-object v5

    iget-object v5, v5, Lde/greenrobot/dao/Property;->type:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    if-ne v5, v6, :cond_0

    .line 116
    invoke-static {v1, v2, v3, v4}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 118
    :cond_0
    return-void
.end method

.method public testInsertTwice()V
    .locals 3

    .prologue
    .line 100
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "pk":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2, v0}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 104
    :try_start_0
    iget-object v2, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2, v0}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 105
    const-string v2, "Inserting twice should not work"

    invoke-static {v2}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public testLoadAll()V
    .locals 6

    .prologue
    .line 212
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4}, Lde/greenrobot/dao/AbstractDao;->deleteAll()V

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0xf

    if-ge v1, v4, :cond_0

    .line 215
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4, v2}, Lde/greenrobot/dao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 219
    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4}, Lde/greenrobot/dao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v3

    .line 220
    .local v3, "loaded":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(II)V

    .line 221
    return-void
.end method

.method public testLoadPk()V
    .locals 1

    .prologue
    .line 262
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->runLoadPkTest(I)V

    .line 263
    return-void
.end method

.method public testLoadPkWithOffset()V
    .locals 1

    .prologue
    .line 258
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->runLoadPkTest(I)V

    .line 259
    return-void
.end method

.method public testQuery()V
    .locals 8

    .prologue
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 224
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 225
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v1

    .line 226
    .local v1, "pkForQuery":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {p0, v1}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 227
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4}, Lde/greenrobot/dao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "where":Ljava/lang/String;
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v2, v4}, Lde/greenrobot/dao/AbstractDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 231
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v7, v3}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(II)V

    .line 232
    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public testReadWithOffset()V
    .locals 6

    .prologue
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    const/4 v5, 0x5

    .line 244
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v3

    .line 245
    .local v3, "pk":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 246
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 248
    const-string v4, "42"

    invoke-virtual {p0, v5, v4, v3}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 250
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    const/4 v5, 0x5

    invoke-virtual {v4, v0, v5}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v2

    .line 251
    .local v2, "entity2":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->daoAccess:Lde/greenrobot/dao/InternalUnitTestDaoAccess;

    invoke-virtual {v4, v2}, Lde/greenrobot/dao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 255
    return-void

    .line 253
    .end local v2    # "entity2":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public testRowId()V
    .locals 7

    .prologue
    .line 204
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "entity1":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v1

    .line 206
    .local v1, "entity2":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v6, v0}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v2

    .line 207
    .local v2, "rowId1":J
    iget-object v6, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v6, v1}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v4

    .line 208
    .local v4, "rowId2":J
    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertTrue(Z)V

    .line 209
    return-void

    .line 208
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public testUpdate()V
    .locals 5

    .prologue
    .line 236
    .local p0, "this":Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;, "Lde/greenrobot/dao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    iget-object v1, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->deleteAll()V

    .line 237
    invoke-virtual {p0}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1, v0}, Lde/greenrobot/dao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 239
    iget-object v1, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1, v0}, Lde/greenrobot/dao/AbstractDao;->update(Ljava/lang/Object;)V

    .line 240
    const-wide/16 v1, 0x1

    iget-object v3, p0, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v3}, Lde/greenrobot/dao/AbstractDao;->count()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lde/greenrobot/dao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 241
    return-void
.end method
